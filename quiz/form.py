from pyexpat import model
from random import choices
from tokenize import blank_re
from django import forms
from .validators import *
from .models import *


class IdentitasSoal(forms.Form):
    soal = forms.CharField(
        label='Soal', widget=forms.Textarea, validators=[stem_validator])
    jum_soal = forms.CharField(label='Jumlah Soal', max_length=100)
    acak = forms.ChoiceField(
        choices=[
            ('mapping', 'Mapping'),
            ('kombinasi', 'Kombinasi'),
        ]
    )

    def __init__(self, *args, **kwargs):
        super(IdentitasSoal, self).__init__(*args, **kwargs)
        self.fields['soal'].error_messages = {
            'required': 'Mohon Bagian Soal Diisi'}


class CreateTemplate(forms.Form):
    soal = forms.CharField(
        label='Soal', widget=forms.Textarea, validators=[stem_validator])
    jum_soal = forms.CharField(label='Jumlah Soal', max_length=100)
    acak = forms.ChoiceField(
        choices=[
            ('mapping', 'Mapping'),
            ('kombinasi', 'Kombinasi'),
        ]
    )

    def __init__(self, *args, **kwargs):
        super(CreateTemplate, self).__init__(*args, **kwargs)
        self.fields['soal'].error_messages = {
            'required': 'Mohon Bagian Soal Diisi'}


class MultiFormula(forms.Form):
    # From identitas
    soal = forms.CharField(label='Soal', widget=forms.Textarea)
    jumitem = forms.CharField(label='Variasi', widget=forms.Textarea)
    acak = forms.CharField(label='Acak', widget=forms.Textarea)
    var1 = forms.CharField(label='Var 1', widget=forms.Textarea)

    # Actually new
    variabel = forms.CharField(label='Variabel', widget=forms.Textarea, validators=[
                               var_validator], required=False)
    multirumus = forms.CharField(
        label='Rumus', widget=forms.Textarea, validators=[rumus_validator])
    opsi = forms.CharField(label='Opsi Jawaban', widget=forms.Textarea)
    img_var = forms.CharField(label='Variabel Gambar', widget=forms.Textarea)

    def __init__(self, *args, **kwargs):
        super(MultiFormula, self).__init__(*args, **kwargs)
        self.fields['opsi'].error_messages = {
            'required': 'Mohon Bagian Opsi Diisi'}


class IndikatorForm(forms.ModelForm):
    class Meta:
        model = Penugasan
        fields = ('kurikulum', 'mata_kuliah', 'student_outcome',
                  'learning_outcome', 'topik')
        widgets = {
            'mata_kuliah': forms.Select(attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'}),
            'student_outcome': forms.Select(attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'}),
            'learning_outcome': forms.Select(attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'}),
            'topik': forms.Select(attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'}),
        }

    kurikulum = forms.ChoiceField(
        choices=[
            ('Empty', 'Pilih Kurikulum'),
            ('2021', '2021'),
        ],
        widget=forms.Select(
            attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'})
    )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['student_outcome'].queryset = StudentOutcome.objects.none()
        self.fields['learning_outcome'].queryset = LearningOutcome.objects.none()
        self.fields['topik'].queryset = Topic.objects.none()

        self.fields['learning_outcome'].empty_label = 'Pilih Learning Outcome'
        self.fields['student_outcome'].empty_label = 'Pilih Student Outcome'
        self.fields['mata_kuliah'].empty_label = 'Pilih Mata Kuliah'
        self.fields['topik'].empty_label = 'Pilih Topik Pembelajaran'

        # Error_messages
        self.fields['learning_outcome'].error_messages = {
            'required': 'Mohon Bagian Learning Outcome Diisi'}
        self.fields['student_outcome'].error_messages = {
            'required': 'Mohon Bagian Student Outcome Diisi'}
        self.fields['mata_kuliah'].error_messages = {
            'required': 'Mohon Bagian Mata Kuliah Diisi'}
        self.fields['topik'].error_messages = {
            'required': 'Mohon Bagian Topik Diisi'}

        if 'mata_kuliah' in self.data:
            try:
                matkul_id = int(self.data.get('mata_kuliah'))
                self.fields['student_outcome'].queryset = StudentOutcome.objects.filter(
                    matkul_id=matkul_id).order_by('id')
                self.fields['topik'].queryset = Topic.objects.filter(
                    matkul_id=matkul_id).order_by('id')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty SO queryset
        elif self.instance.pk:
            self.fields['student_outcome'].queryset = self.instance.mata_kuliah.student_outcome_set.order_by(
                'id')
            self.fields['topik'].queryset = self.instance.mata_kuliah.student_outcome_set.order_by(
                'id')

        if 'student_outcome' in self.data:
            try:
                so_id = int(self.data.get('student_outcome'))
                self.fields['learning_outcome'].queryset = LearningOutcome.objects.filter(
                    SO_id=so_id).order_by('id')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty SO queryset
        elif self.instance.pk:
            self.fields['learning_outcome'].queryset = self.instance.student_outcome.learning_outcome_set.order_by(
                'id')


class AssignUser(forms.Form):
    user = forms.ModelChoiceField(
        queryset=User.objects.filter(groups__name='creator'),
        empty_label='Pilih Dosen yang akan Ditugaskan',
        widget=forms.Select(
            attrs={'class': 'custom-select', 'style': 'width:1000px; '}),
        label=''
    )


class RevisiSoalForm(forms.Form):
    pesan_revisi = forms.CharField(
        widget=forms.TextInput(
            attrs={'class': 'add-value', 'id': 'custom-input', 'style': 'width:1000px;'}),
        label=''
    )


class IdentitasPaketSoalForm(forms.Form):
    judul = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'add-value', 'id': 'custom-input',
                               'style': 'width:1000px; margin-bottom: 15px;', 'placeholder': 'Judul Paket Soal'})
    )
    kurikulum = forms.ChoiceField(
        choices=[
            ('Empty', 'Pilih Kurikulum'),
            (2016, 2016),
        ],
        widget=forms.Select(
            attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'})
    )
    jumlah_paket = forms.IntegerField(
        widget=forms.TextInput(attrs={'class': 'add-value', 'id': 'custom-integer-input',
                               'style': 'width:1000px;', 'placeholder': 'Jumlah Paket Soal'})
    )
    tahun_ajaran = forms.IntegerField(
        widget=forms.TextInput(attrs={'class': 'add-value', 'id': 'custom-integer-input',
                               'style': 'width:1000px; margin-bottom: 15px;', 'placeholder': 'Tahun Ajaran'})
    )
    semester = forms.ChoiceField(
        choices=[
            ('Empty', 'Pilih Semester'),
            ('Gasal', 'Gasal'),
            ('Genap', 'Genap'),
        ],
        widget=forms.Select(
            attrs={'class': 'custom-select', 'style': 'width:1000px;margin-bottom: 15px;'})
    )


class BeriReviewForm(forms.Form):
    kejelasan_bahasa = forms.ChoiceField(
        choices=[
            (1, 'Belum jelas'),
            (2, 'Cukup jelas'),
            (3, 'Sudah jelas')
        ],
        widget=forms.RadioSelect(
            attrs={'id': 'radio', 'style': 'width:30px;margin-bottom: 15px;'}
        )
    )

    kejelasan_gambar = forms.ChoiceField(
        choices=[
            (1, 'Belum jelas'),
            (2, 'Cukup jelas'),
            (3, 'Sudah jelas')
        ],
        widget=forms.RadioSelect(
            attrs={'id': 'radio', 'style': 'width:30px;margin-bottom: 15px;'}
        )
    )

    kesesuaian_waktu = forms.ChoiceField(
        choices=[
            (1, 'Belum sesuai'),
            (2, 'Cukup sesuai'),
            (3, 'Sudah sesuai')
        ],
        widget=forms.RadioSelect(
            attrs={'id': 'radio', 'style': 'width:30px;margin-bottom: 15px;'}
        )
    )

    kesesuaian_cpmk = forms.ChoiceField(
        choices=[
            (1, 'Belum sesuai'),
            (2, 'Cukup sesuai'),
            (3, 'Sudah sesuai')
        ],
        widget=forms.RadioSelect(
            attrs={'id': 'radio', 'style': 'width:30px;margin-bottom: 15px;'}
        )
    )

    komentar = forms.CharField(
        required=False,
        widget=forms.TextInput(attrs={'class': 'add-value', 'id': 'custom-input',
                               'style': 'width:1200px; margin-bottom: 15px;', 'placeholder': 'Komentar'})
    )

    status = forms.ChoiceField(
        choices=[
            (1, 'Belum di-review'),
            (2, 'Sedang di-review'),
            (3, 'Sudah di-review'),
        ],
        widget=forms.Select(
            attrs={'style': 'width:200px;margin-bottom: 15px;'})
    )


class PasswordChangeForm(forms.Form):
    oldpass = forms.CharField(
        widget=forms.TextInput(attrs={'type': 'password', 'id': 'oldpass',
                               'class': 'form-control', 'name': 'oldpassword', 'placeholder': 'Old Password'}),
        label=''
    )

    newpass = forms.CharField(
        widget=forms.TextInput(attrs={'type': 'password', 'id': 'newpass',
                               'class': 'form-control', 'name': 'newpassword', 'placeholder': 'New Password'}),
        label=''
    )

    confirmpass = forms.CharField(
        widget=forms.TextInput(attrs={'type': 'password', 'id': 'confirmpass', 'class': 'form-control',
                               'name': 'confirmpassword', 'placeholder': 'Confirm Password'}),
        label=''
    )

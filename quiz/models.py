from ast import Import
import imp
from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from tinymce.models import HTMLField

# MODELS FOR PJM INTERFACE

# USER


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    sekolah = models.CharField(max_length=100, blank=True)
    alamat = models.CharField(max_length=200, blank=True)
    mapel = models.CharField(max_length=20, blank=True)
    nomer_hp = models.CharField(max_length=20, blank=True)
    jabatan = models.CharField(max_length=100, blank=True)
    nip = models.CharField(max_length=30, blank=True)
    golongan = models.CharField(max_length=4, blank=True)
    pangkat = models.CharField(max_length=20, blank=True)
    subskripsi_email = models.BooleanField(default=True)

    def __str__(self):
        return '%s' % (self.user)

# NEW STUFF


class MataKuliah(models.Model):
    matkul = models.TextField()
    kode_matkul = models.TextField(null=True)

    def __str__(self):
        return '%s' % (self.matkul)


class StudentOutcome(models.Model):
    SO = models.CharField(max_length=200, blank=True)
    matkul = models.ForeignKey(
        MataKuliah, on_delete=models.CASCADE, null=True, default=None)
    deskripsi = models.TextField()

    def __str__(self):
        return '%s %s' % (self.SO, self.deskripsi)


class LearningOutcome(models.Model):
    LO = models.CharField(max_length=200, blank=True)
    deskripsi = models.TextField()
    SO = models.ForeignKey(
        StudentOutcome, on_delete=models.CASCADE, null=True, default=None)

    def __str__(self):
        return '%s' % (self.deskripsi)


class Topic(models.Model):
    Topik = models.TextField(null=True)
    matkul = models.ForeignKey(
        MataKuliah, on_delete=models.CASCADE, null=True, default=None)

    def __str__(self):
        return self.Topik


class Penugasan(models.Model):

    kurikulum = models.CharField(max_length=200, null=True)
    mata_kuliah = models.ForeignKey(MataKuliah, on_delete=models.CASCADE)
    student_outcome = models.ForeignKey(
        StudentOutcome, on_delete=models.CASCADE)
    learning_outcome = models.ForeignKey(
        LearningOutcome, on_delete=models.CASCADE)
    topik = models.ForeignKey(Topic, on_delete=models.CASCADE, null=True)
    creator = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    created_date = models.DateTimeField(null=True)

    def __str__(self):
        return str(self.mata_kuliah)

# SOAL


class StatusSoal(models.Model):
    status = models.CharField(max_length=100)

    def __str__(self):
        return self.status


class Soal(models.Model):
    id_creator = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    judul = models.TextField()
    soal = HTMLField(null=True)
    variasi = models.IntegerField()
    pengacakan = models.CharField(max_length=20)
    var1 = models.CharField(max_length=100)
    variabel = HTMLField()
    rumus = models.TextField()
    jawaban = HTMLField(null=True)
    variabel_gambar = models.TextField(null=True)
    indikator = models.ForeignKey(
        Penugasan, on_delete=models.SET_NULL, null=True)
    created_date = models.DateTimeField(default=None)
    status = models.ForeignKey(
        StatusSoal, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return '%s' % (self.soal)


class TemplateSoal(models.Model):
    id_user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    judul = models.TextField()
    soal = HTMLField(null=True)
    variasi = models.IntegerField()
    pengacakan = models.CharField(max_length=20)
    var1 = HTMLField()
    variabel = HTMLField()
    rumus = models.TextField()
    jawaban = HTMLField(null=True)

    def __str__(self):
        return self.judul


# REVISION MESSAGE


class RevisiSoal(models.Model):
    soal = models.ForeignKey(Soal, on_delete=models.CASCADE)
    pesan = models.TextField()
    id_user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return '%s' % (self.pesan)


# GENERATED SOAL
class GeneratedSoal(models.Model):
    parent = models.ForeignKey(Soal, on_delete=models.SET_NULL, null=True)
    generated_soal = models.TextField()
    generated_option = models.TextField(null=True)

# PAKET SOAL

class StatusPaketSoal(models.Model):
    status = models.CharField(max_length=100)

    def __str__(self):
        return self.status

class PaketSoal(models.Model):
    creator = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    created_date = models.DateTimeField()
    judul = models.TextField()
    jumlah_paket = models.IntegerField()
    is_generated = models.BooleanField(null=True)
    generated_date = models.DateTimeField(null=True)
    kurikulum = models.CharField(max_length=200, blank=True, null=True)
    tahun_ajaran = models.IntegerField(default=2016)
    semester = models.CharField(max_length=7, default='Gasal')
    status = models.ForeignKey(StatusPaketSoal, on_delete=models.SET_NULL, null=True)


class Soal_PaketSoal(models.Model):
    generated_soal = models.ForeignKey(
        GeneratedSoal, on_delete=models.SET_NULL, null=True)
    paket_soal = models.ForeignKey(
        PaketSoal, on_delete=models.CASCADE, null=True)
    nomer_urut = models.IntegerField(null=True)
    nomer_paket = models.IntegerField(null=True)
    status = models.ForeignKey(StatusPaketSoal, on_delete=models.SET_NULL, default=1, null=True)

# ASSIGN INDIKATOR TO USER


class Indikator_User(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    is_done = models.BooleanField(default=0)
    penugasan = models.ForeignKey(
        Penugasan, on_delete=models.CASCADE, null=True)
    learning_outcome = models.ForeignKey(
        LearningOutcome, on_delete=models.CASCADE, null=True)


# REVIEW

class Peninjau(models.Model):
    peninjau_user = models.ForeignKey(User, on_delete = models.CASCADE, related_name='peninjau')
    paket_soal = models.ForeignKey(PaketSoal, on_delete = models.CASCADE, null=True)
    penunjuk_user = models.ForeignKey(User, on_delete = models.CASCADE, related_name='penunjuk')
    tanggal_penunjukkan = models.DateTimeField()
    status = models.ForeignKey(StatusPaketSoal, on_delete = models.SET_NULL, null=True)

class HasilReview(models.Model):
    status = models.ForeignKey(StatusPaketSoal, on_delete=models.SET_NULL, default=1, null=True)
    peninjau = models.ForeignKey(Peninjau, on_delete = models.CASCADE, null=True)
    soal_paketSoal = models.ForeignKey(Soal_PaketSoal, on_delete=models.CASCADE, null=True)
    kejelasan_bahasa = models.IntegerField(default=3)
    kesesuaian_waktu = models.IntegerField(default=3)
    kesesuaian_cpmk = models.IntegerField(default=3)
    kejelasan_gambar = models.IntegerField(default=3)
    komentar = models.TextField(blank=True)
    created_date = models.DateTimeField(null=True)


@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)


@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()

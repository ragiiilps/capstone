from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from aig.settings import DEBUG, MEDIA_ROOT, MEDIA_URL, STATIC_ROOT, STATIC_URL
from .views import *

urlpatterns = [
    path('', Index, name='index'),
    path('dashboard/', Dashboard, name='dashboard'),
    path('identitas/', IdentitasItem, name='identitas'),
    path('prosesitem/', ProsesItem, name='prosesitem'),
    path('prosestemplate/', ProsesTemplate, name='prosestemplate'),
    path('result/', Result, name='result'),
    path('resulttemplate/', ResultTemplate, name='result_template'),
    path('datasoal/', DataSoal, name='datasoal'),
    path('panduan/', Panduan, name='panduan'),
    path('hasil/', Hasil, name='hasil'),
    path('simpan/', Simpan, name='simpan'),
    path('simpantemplate/', SimpanTemplate, name='simpantemplate'),
    path('logout/', logoutView, name="logout"),
    path('template/', Template, name="template"),
    path('uploadimg/', UploadImg, name='uploadimage'),
    path('download/', Download, name="test"),
    path('kirim/', Kirim, name="kirim"),
    path('changepassword/', changePassword, name="changepassword"),
    path('indikator/', indikator_view, name='indikator'),
    path('buattemplate/', BuatTemplate, name='buattemplate'),
    path('buatindikator/', buatIndikator, name='buatindikator'),
    path('<int:pk>/', StudentOutcome_TopicUpdate, name='SO_TP_change'),
    path('<int:pk>/', LearningOutcome_Update, name='LO_change'),

    path('ajax/load-SO', load_SO, name='ajax_load_SO'),
    path('ajax/load-LO', load_LO, name='ajax_load_LO'),
    path('ajax/load-TP', load_TP, name='ajax_load_TP'),

    path('detailindikator/', detailIndikator, name='detailindikator'),
    path('reviewindikator/', reviewIndikator, name='reviewindikator'),
    path('generatepaket/', generatePaket, name='generatepaket'),
    path('datapaket/', DataPaket, name='datapaket'),
    path('hasilpaket/', HasilPaket, name='hasilpaket'),
    #path('ajax/load-sk/', load_sk, name='ajax_load_sk'),
    #path('ajax/load-materi/', load_materi, name='ajax_load_materi'),
    #path('ajax/load-kd/', load_kd, name='ajax_load_kd'),
    path('pilihindikator/', pilihindikator, name='pilihindikator'),
    path('pilihindikatorview/', pilihIndikatorView, name='pilihindikatorview'),
    path('buatpaketsoal/', buatPaketSoal, name='buatpaketsoal'),
    path('tambahsoal/', tambahSoal, name='tambahsoal'),
    path('pilihparentsoal/', pilihParentSoal, name='pilihparentsoal'),
    path('pilihsoal/', pilihSoal, name='pilihsoal'),
    path('soaldipilih/', soalDipilih, name='soaldipilih'),
    path('peer-review/', PeerReview, name='peer-review'),
    path('peer-review/list-soal', ListSoal, name='list-soal'),
    path('peer-review/list-soal/soal-peer/', PeerSoal, name='soal-peer'),
    path('peer-review/list-soal/soal-peer/hasilpeer',
         HasilPeer, name='hasilpeer'),
    path('showpdf/', show_pdf, name='showpdf'),
    path('subscription/', subscription, name='subscription'),
    path('assessreviewer/', assess_reviewer, name='assessreviewer'),
    path('soal-peninjau/', soal_peninjau, name='soalpeninjau'),
    path('daftar/', soalPaket_peninjau, name='soalpaketpeninjau'),
    path('berireview/', beriReview, name='berireview'),
    path('generatepaket/lihatreview/', lihatReview, name='lihat_review'),
    path('daftarpaket/', DaftarPaket, name='daftarpaket'),
    path('daftarreviewer/', DaftarReviewer, name='daftarreviewer'),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('tinymce/', include('tinymce.urls')),
    path('pdf/', render_pdf_view, name="pdf"),
    path('coba/', cobaDulu, name="coba")
]
if DEBUG:
    urlpatterns += static(MEDIA_URL, document_root=MEDIA_ROOT)
    urlpatterns += static(STATIC_URL, document_root=STATIC_ROOT)

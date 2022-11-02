from import_export.admin import ImportExportModelAdmin
from django.contrib import admin
from .models import *

admin.site.register(Soal, ImportExportModelAdmin)
admin.site.register(StatusSoal, ImportExportModelAdmin)
admin.site.register(Profile, ImportExportModelAdmin)
admin.site.register(TemplateSoal, ImportExportModelAdmin)
admin.site.register(StudentOutcome, ImportExportModelAdmin)
admin.site.register(LearningOutcome, ImportExportModelAdmin)
admin.site.register(MataKuliah, ImportExportModelAdmin)
admin.site.register(Topic, ImportExportModelAdmin)
admin.site.register(Indikator_User, ImportExportModelAdmin)
admin.site.register(Peninjau, ImportExportModelAdmin)
admin.site.register(StatusPaketSoal, ImportExportModelAdmin)
admin.site.register(HasilReview, ImportExportModelAdmin)
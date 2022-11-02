from io import BytesIO
from docx.shared import Cm
from docxtpl import DocxTemplate, InlineImage

def download_from_template(template, context):
    target_file = BytesIO()

    template = DocxTemplate(template)

    target_file = BytesIO()
    template.render(context)
    template.save(target_file)

    return target_file

from django import template


register = template.Library()


@register.filter(name='zip')
def zip_lists(a, b):
    return zip(a, b)


@register.filter(name='nbsp')
def rm_nbsp(a):
    print(a.replace('&nbsp', ''))
    return a.replace('&nbsp', '')


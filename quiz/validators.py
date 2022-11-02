from django import forms


# Checking parentheses
def parentheses_check(my_str):
    open_list = ["[", "{", "("]
    close_list = ["]", "}", ")"]
    stack = []
    for i in my_str:
        if i in open_list:
            stack.append(i)
        elif i in close_list:
            pos = close_list.index(i)
            if ((len(stack) > 0) and
                    (open_list[pos] == stack[len(stack) - 1])):
                stack.pop()
            else:
                return False
    if len(stack) == 0:
        return True


def stem_validator(value):
    if not parentheses_check(value):
        raise forms.ValidationError(
            "Periksa kembali penulisan tanda kurung pada stem soal")
    # if not ((']' or '[') in value):
    #     raise forms.ValidationError("Gunakan kurung kotak untuk menentukan letak variabel")


def var_validator(value):
    if value != '':
        if not parentheses_check(value):
            print('error lur')
            raise forms.ValidationError(
                "Periksa kembali penulisan tanda kurung pada variabel")
        try:
            # varResult = ""
            # for var in value.split(";"):
            #     img = ""
            #     if "img" in var:
            #         varSplit = var.split("]:")
            #         img = varSplit[0] + "]:\"" + varSplit[1] + "\";"
            #     else:
            #         img = var + ";"
            #     varResult += img
            # value = varResult[:-1]
            # print("aaaaaaaaaaaaaaaa " + value)
            formula_list = [
                {k: v for k, v in [var.split(":")]} for var in value.split(";")]
        except ValueError:
            raise forms.ValidationError(
                "Periksa kembali penulisan variabel")


def rumus_validator(value):
    if value != '---':
        if not parentheses_check(value):
            print('error lur')
            raise forms.ValidationError(
                "Periksa kembali penulisan tanda kurung pada rumus")
        try:
            formula_list = [
                {k: v for k, v in [var.split(":")]} for var in value.split(";")]
        except ValueError:
            raise forms.ValidationError("Periksa kembali penulisan rumus")

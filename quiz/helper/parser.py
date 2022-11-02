import re

from collections import OrderedDict
from itertools import product

# reverse order of operations0
# I didn't have to use an OrderedDict, but it's cute
operations = OrderedDict([
    ("+", lambda x, y: x + y),
    ("-", lambda x, y: x - y),
    ("/", lambda x, y: x / y),
    ("*", lambda x, y: x * y),
    ("^", lambda x, y: x ** y)
])


def getSymbol():
    symbols = operations.keys()
    return symbols


def removeStrict(input):
    a = input.find('[')
    b = input.find(']')
    return (input[a + 1:b])


def getdata(str):
    array2 = re.findall(r'([-+]?\d*\.?\d+)', str)
    array1 = re.findall(r'\w+', str)

    if (array1 != " "):
        data = array1
    else:
        data = array2
    return data


def normalizer(input):
    temp = []
    while input:
        char, *input = input

        if char == "[":
            try:
                if temp[-1].isspace():
                    temp.append(char)
                else:
                    temp.append(" ")
                    temp.append(char)
            except IndexError:
                temp.append(char)
        elif char == "]":
            temp.append(char)
            if not input:
                pass
            else:
                temp.append(" ")
        elif char.isalpha() or char.isspace():
            temp.append(char)
        elif char.isdigit():
            try:
                if temp[-1] in getSymbol():
                    temp.append(" ")
                    temp.append(char)
                else:
                    temp.append(char)
            except IndexError:
                temp.append(char)
        elif char in getSymbol():
            if temp[-1] == "]":
                temp.append(" ")
                temp.append(char)
            else:
                temp.append(char)
        elif char == "(" or char == ")":
            try:
                if temp[-1] == "]":
                    temp.append(" ")
                    temp.append(char)
                else:
                    temp.append(char)
            except IndexError:
                temp.append(char)
        else:
            temp.append(char)

    return ("").join(temp)


def CheckMath(teks):
    regex = re.compile('[@_!*/+^-]')

    if regex.search(teks) == None:
        h = 'nonmath'
    else:
        h = 'math'

    return h


def getValue1(myString):
    mySubString = normalizer(myString).split()
    indexSubString = []
    keySubString = []
    for x in mySubString:
        if ("[" in x and "]" in x):
            indexSubString.append(mySubString.index(x))
            keySubString.append(x)
    return indexSubString, keySubString


def getValue2(myString):
    mySubString = normalizer(myString).split()
    indexSubString = []
    keySubString = []
    for x in mySubString:
        if ("[" in x and "]" in x):
            indexSubString.append(mySubString.index(x))
            keySubString.append(removeStrict(x))
    return indexSubString, keySubString


def DictRumus(rumus):
    drumus = dict(x.split('=') for x in rumus.split(';'))
    t4rumus = []
    t4key = []
    for key, rms in drumus.items():
        t4key.append(key)
        t4rumus.append(rms)
    return t4key, t4rumus


def DictVarVal(variabel):
    VarnVal = dict(x.split(':') for x in variabel.split(';'))
    a = []
    b = []
    for var, val in VarnVal.items():
        a.append(var)
        b.append((val.split(',')))

    c = dict(zip(a, b))

    return c


def CreateDictKombinasi(string):
    VarnVal = dict(x.split(':') for x in string.split(';'))
    a = []
    b = []
    for var, val in VarnVal.items():
        a.append(val.split(','))
        b.append(removeStrict(var))
    c = dict(zip(b, a))

    return c


def CreateOpsiNonMath(opsi, variabel):
    proopsi = dict(x.split(':') for x in opsi.split(';'))

    print(proopsi)

    lexnya = []
    abcnya = []
    for abc, rumus2 in proopsi.items():
        temp = rumus2
        temp1 = abc
        # lexnya.append(lex(rumus2))
        abcnya.append(temp1)
        lexnya.append(temp)

    return lexnya, abcnya


def non_math_option(option_str, variables):
    options = dict(x.split(":") for x in option_str.split(";"))
    option_items = []
    option_ids = []

    for var_combination in variables:
        temp_id = []
        for option_id in options:
            temp_id.append(option_id)
            temp_option = options[option_id]
            for var_name in var_combination:
                temp_option = temp_option.replace(
                    var_name, var_combination[var_name])
            option_items.append(temp_option)
        option_ids.append(temp_id)

    return option_items, option_ids


def KanDictVarValMap(kmsvariabel):
    mapnya = [dict(zip(kmsvariabel, i)) for i in zip(*kmsvariabel.values())]
    return mapnya


def KanDictVarValKom(kmsvariabel):
    mapnya = [dict(zip(kmsvariabel, i))
              for i in product(*kmsvariabel.values())]
    return mapnya


def removeSpace(input):
    temp = []
    while input:
        char, *input = input
        if char.isspace():
            pass
        else:
            temp.append(char)
    return ('').join(temp)

from .parser import *
from .evaluate import *
import itertools
import json
from django.utils.html import strip_tags, escape
from bs4 import BeautifulSoup


def gen_combined_var(variables):
    if variables != '':
        variables = variables.strip(';')
        vars_dict = dict(var.split(":", 1) for var in variables.split(";"))
        for var_name in vars_dict.keys():
            var_items = list(vars_dict[var_name].split(","))
            vars_dict[var_name] = var_items
        # print(vars_dict)
        # {'[a]': ['haha', 'hihi'], '[b]': ['baba', 'bibi']}

        vars_list = []
        for var_name in vars_dict.keys():
            temp_var_name = []
            for var_item in vars_dict[var_name]:
                temp_var_name.append({var_name: var_item})
            vars_list.append(temp_var_name)
        # print(vars_list)
        # [[{'[a]': 'haha'}, {'[a]': 'hihi'}], [{'[b]': 'baba'}, {'[b]': 'bibi'}]]

        combined_var_list = []
        for combined_var in list(itertools.product(*vars_list)):
            temp = {}
            for var in combined_var:
                temp.update(var)
            combined_var_list.append(temp)
        # print(combined_var_list)
        # [{'[a]': 'haha', '[b]': 'baba'}, {'[a]': 'haha', '[b]': 'bibi'}, {'[a]': 'hihi', '[b]': 'baba'},
        # {'[a]': 'hihi', '[b]': 'bibi'}]

        return combined_var_list
    else:
        return ''


def gen_mapped_var(variables):
    if variables != '':
        variables = variables.strip(';')
        vars_dict = dict(var.split(":", 1) for var in variables.split(";"))
        for var_name in vars_dict.keys():
            var_items = list(vars_dict[var_name].split(","))
            vars_dict[var_name] = var_items

        vars_list = []
        for var_name in vars_dict.keys():
            temp_var_name = []
            for var_item in vars_dict[var_name]:
                temp_var_name.append({var_name: var_item})
            vars_list.append(temp_var_name)
        vars_list = [list(item) for item in zip(*vars_list)]

        mapped_var_list = []
        for mapped_var in vars_list:
            temp = {}
            for var in mapped_var:
                temp.update(var)
            mapped_var_list.append(temp)

        return mapped_var_list
    else:
        return ''


def gen_question(question_stem, var_list):
    question_list = []
    for var_combination in var_list:
        new_question = question_stem
        for var_name in var_combination.keys():
            new_question = new_question.replace(
                var_name, str(var_combination[var_name]))
        question_list.append(new_question)
    return question_list


def gen_non_math_option(option, var_list):
    # option_dict = dict(x.split("=", 1) for x in option.split(";"))
    if (option.find('math-tex') != -1):
        cari = BeautifulSoup(option).find("span", {"class": "math-tex"})
        delete = '<span class="math-tex">' + cari.text + '</span>'
        abcd = option.replace(delete, "|")
        final = strip_tags(abcd).replace("|", delete)
        option = final
    unreplaced_option_list = option.split(";")

    replaced_option_list = []
    option_list = []
    # for var_combination in var_list:
    #     option_str = json.dumps(option_dict)
    #     for var_name in var_combination.keys():
    #         option_str = option_str.replace(var_name, str(var_combination[var_name]))
    #     new_option_dict = json.loads(option_str)
    #     replaced_option_list.append(list(new_option_dict.values()))

    for var_combination in var_list:
        for option in unreplaced_option_list:
            # print(option)
            for var_name in var_combination.keys():
                # print(var_combination[var_name])
                option = option.replace(
                    var_name, str(var_combination[var_name]))
            # print("1. " + option)
            option_list.append(option)
        replaced_option_list.append(option_list)
        option_list = []
    return replaced_option_list

    # return replaced_option_list


def update_var(composed_var_list, formula_input):
    formula_list = [
        {k: v for k, v in [var.split(":")]} for var in formula_input.split(";")]

    for var_combination in composed_var_list:
        # {'[a]': '2', '[x]': '6'}
        for formula in formula_list:
            # {'[b]': '2*[a]'}
            formula_str = json.dumps(formula)

            for var_name in var_combination.keys():
                if var_name in formula_str:
                    formula_str = formula_str.replace(
                        var_name, "(" + var_combination[var_name] + ")")
            var_combination.update(json.loads(formula_str))

        for var_name in var_combination.keys():
            try:
                print('evaluated:')
                print(var_combination[var_name])
                var_combination[var_name] = evaluate(var_combination[var_name])
            except:
                print("can't evaluate or doesn'n need it:")
                print(var_combination[var_name])
    return


def create_index(option_list):
    indexes = ['a. ', 'b. ', 'c. ', 'd. ', 'e. ', 'f. ']
    option_list_temp = []
    for options in option_list:
        options_temp = []
        for option, index in zip(options, indexes):
            new_option = index + option
            options_temp.append(new_option)
        option_list_temp.append(options_temp)
    return option_list_temp


def gen_var_form(option_list):
    form_value = ''
    temp = list(dict.fromkeys(option_list))
    for option in temp:
        form_value = form_value + option + ':'

    return form_value


# Add html tag to img url in variable
# def format_img(mapped_var):
#     for var_combination in mapped_var:
#         for var_name in var_combination.keys():
#             if str(var_combination[var_name]).startswith('http'):
#                 var_combination[var_name] = '<img src="' + \
#                     var_combination[var_name] + '">'

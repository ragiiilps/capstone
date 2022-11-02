import math
import re


# def calTrigonomety(expr):
#     if 'sin1' in expr:
#         splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
#         result = math.sin(math.radians(int(splitIt[1])))
#         result = float('%2f' % result)
#     elif 'cos' in expr:
#         splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
#         result = math.cos(math.radians(int(splitIt[1])))
#         result = float('%2f' % result)
#     elif 'tan' in expr:
#         splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
#         result = math.tan(math.radians(int(splitIt[1])))
#         result = float('%2f' % result)
#     else:
#         result = float(expr)
#     return result


class calTrigonometry():
    # def sin1(expr):
    #     splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
    #     result = math.sin(math.radians(int(splitIt[1])))
    #     result = float('%2f' % result)
    #     return str(result)
    #
    # def cos(expr):
    #     splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
    #     result = math.cos(math.radians(int(splitIt[1])))
    #     result = float('%2f' % result)
    #     return result
    #
    # def tan(expr):
    #     splitIt = re.findall(r"[^\W\d_]+|\d+", expr)
    #     result = math.tan(math.radians(int(splitIt[1])))
    #     result = float('%2f' % result)
    #     return result

    @staticmethod
    def sin(expr):
        result = math.sin(math.radians(expr))
        return round(result)





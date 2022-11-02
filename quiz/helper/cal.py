from .ComplCal import calTrigonomety
from collections import OrderedDict

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


def lex(expr):
    """
    seperates numbers from symbols, recursively nests parens
    """
    tokens = []
    while expr:
        char, *expr = expr
        # char is equal to the first charecter of the expression, expr is equal
        # to the rest of it
        if char == "#":
            # the rest of the line is a comment
            break
        if char == "(":
            try:
                paren, expr = lex(expr)
                tokens.append(paren)
                # expr is what's after the end of the paren, we'll just continue
                # lexing after that''
            except ValueError:
                raise Exception("paren mismatch")
        elif char == ")":
            return tokens, expr
            # returns the tokens leading up to the to the paren and the rest of
            # the expression after it
        elif char.isdigit() or char.isalpha() or char == "." or char == "[" or char == "]":
            # number
            try:
                if tokens[-1] in getSymbol():
                    tokens.append(char)  # start a new num
                elif type(tokens[-1]) is list:
                    raise Exception("parens cannot be followed by numbers")
                    # no support for 5(1+1) yet
                else:
                    tokens[-1] += char  # add to last num
            except IndexError:
                # if tokens is empty
                tokens.append(char)  # start first num
        elif char in getSymbol():
            tokens.append(char)
        elif char.isspace():
            pass
        else:
            raise Exception("invalid charecter: " + char)
    return tokens


def evaluate(tokens):
    for symbol, func in operations.items():
        # try to find an operation to eval in order
        try:
            pos = tokens.index(symbol)
            # split the tokens by the operation and eval that
            leftTerm = evaluate(tokens[:pos])
            rightTerm = evaluate(tokens[pos + 1:])
            return func(leftTerm, rightTerm)
            # incidentially, return immediatly breaks all loops within the
            # function
        except ValueError:
            pass
            # index raises ValueError when it's not found
    if len(tokens) is 1:
        try:
            # it must be a number or trigonometry
            return calTrigonomety(tokens[0])
        except TypeError:
            # if it's not a number
            return evaluate(tokens[0])
    else:
        raise Exception("bad expression: " + tokens)


def calc(expr):
    val = evaluate(lex(expr))
    return val

# while 1:
#     print(calc(input("Input? ")))

from quiz.helper.generator import *
from quiz.helper.parser import *
import pprint


pp = pprint.PrettyPrinter()


# Var declaration
stem = "a adalah [a], b adalah [b], c adalah [c], nezuko itu [nzk], nakano itu [nkn]"
arrange = "mapping"
var_value = "[a]= 29 ,20; [b]=6,9"
img_var_value = "[nzk] = https://discordemoji.com/assets/emoji/9062_NezukoYay.png," \
                "https://api.personality-database.com/profile_images/33013.png;" \
                "[nkn] = https://firebasestorage.googleapis.com/v0/b/aigyujiem-image.appspot.com/o/image%2FCapture.JPG?alt=media," \
                "https://i.pinimg.com/280x280_RS/af/62/72/af627293b0501e8e8680d6bca75a2499.jpg"
formula = "[c] = [b] + 100"
option = "ini [a] dan [b]"


def format_img(arranged_image):
    for img_combination in arranged_image:
        for var_name in img_combination.keys():
            img_combination[var_name] = '<img src="' + img_combination[var_name] + '">'


    print(arranged_image)

# Pre
var_value = removeSpace("".join(var_value.splitlines()))
img_var_value = removeSpace("".join(img_var_value.splitlines()))
formula = removeSpace("".join(formula.splitlines()))

# Generate stuff
mapped_var = gen_mapped_var(var_value)
mapped_img_var = gen_mapped_var(img_var_value)

update_var(mapped_var, formula)
format_img(mapped_img_var)

mapped_var.extend(mapped_img_var)

pertanyaan = gen_question(stem, mapped_var)
jawaban = gen_non_math_option(option, mapped_var)

print("mapped var")
pp.pprint(mapped_var)

print("mapped img var")
pp.pprint(mapped_img_var)

print('question')
pp.pprint(pertanyaan)

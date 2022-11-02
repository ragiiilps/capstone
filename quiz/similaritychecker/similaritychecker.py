import nltk
import string
from sklearn.feature_extraction.text import TfidfVectorizer
import os
from django.conf import settings
import re

nltk.download('punkt')  # if necessary...

stemmer = nltk.stem.porter.PorterStemmer()
remove_punctuation_map = dict((ord(char), None) for char in string.punctuation)
data_dir = os.path.join(settings.BASE_DIR, 'quiz', 'similaritychecker', 'data')
dir_list = {
    'Fisika Mekanika Klasik': {
        'dir': 'fisika-teknik',
        'file': [
            'uas_gasal2018_1',
            'uas_gasal2018_2',
            'uas_gasal2018_3',
            'uas_gasal2018_4',
            'uas_gasal2018_5',
            'uas_gasal2018_6',
            'uas_gasal2018_7',
            'uas_gasal2019_1',
            'uas_genap2017_1',
            'uas_genap2017_2',
            'uas_genap2017_3',
            'uas_genap2018_1',
            'uas_genap2018_2',
            'uas_genap2018_3',
            'uas_genap2018_4',
            'uas_genap2019_1',
            'uas_genap2019_2',
            'uas_genap2019_3',
            'uas_genap2019_4',
            'uas_genap2019_5',
            'uas_genap2020_1',
            'uas_genap2020_2',
            'uas_genap2020_3',
            'uas_genap2020_4',
            'uts_gasal2018_1',
            'uts_gasal2018_2',
            'uts_gasal2018_3',
            'uts_gasal2019_1',
            'uts_gasal2019_2',
            'uts_gasal2019_3',
            'uts_gasal2019_4',
            'uts_genap2018_1',
            'uts_genap2018_2',
            'uts_genap2018_3',
            'uts_genap2018_4',
            'uts_genap2018_5',
            'uts_genap2018_6',
            'uts_genap2018_7',
            'uts_genap2018_8',
            'uts_genap2018_9',
            'uts_genap2018_10',
            'uts_genap2020_1',
            'uts_genap2020_2',
            'uts_genap2020_3',
            'uts_genap2020_4',
            'uts_genap2020_5',
            'uts_genap2020_6',
            'uts_genap2020_7',
            'uts_genap2020_8',
            'uts_genap2020_9',
            'uts_genap2020_10',
            'uts_genap2020_11',
            'uts_genap2020_12',
            'uts_genap2020_13',
            'uts_genap2020_14',
            'uts_genap2020_15',
            'uts_genap2020_16',
        ],
        'quality': [
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 1],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 2],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 3],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 4],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 5],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 6],
            [0.773, 0.0323, 63.259, 85.357, 88.056, -0.754, -0.345, 7],
            [0.737, 0.0189, 67.1, 74.8, 80.822, -0.148, 'NaN', 1],
            [0.322, 0.016, 30, 33.333, 33.333, 2.086, 9.871, 1],
            [0.322, 0.016, 30, 33.333, 33.333, 2.086, 9.871, 2],
            [0.322, 0.016, 30, 33.333, 33.333, 2.086, 9.871, 3],
            [0.533, 0.0221, 43.52, 63.705, 63.705, -0.554, 0.469, 1],
            [0.533, 0.0221, 43.52, 63.705, 63.705, -0.554, 0.469, 2],
            [0.533, 0.0221, 43.52, 63.705, 63.705, -0.554, 0.469, 3],
            [0.533, 0.0221, 43.52, 63.705, 63.705, -0.554, 0.469, 4],
            [0.721, 0.011, 66.466, 74.232, 79.33, -1.434, 2.995, 1],
            [0.721, 0.011, 66.466, 74.232, 79.33, -1.434, 2.995, 2],
            [0.721, 0.011, 66.466, 74.232, 79.33, -1.434, 2.995, 3],
            [0.721, 0.011, 66.466, 74.232, 79.33, -1.434, 2.995, 4],
            [0.721, 0.011, 66.466, 74.232, 79.33, -1.434, 2.995, 5],
            [0.367, 0.012, 29.575, 37, 41.725, 0.9677, 5.616, 1],
            [0.367, 0.012, 29.575, 37, 41.725, 0.9677, 5.616, 2],
            [0.367, 0.012, 29.575, 37, 41.725, 0.9677, 5.616, 3],
            [0.367, 0.012, 29.575, 37, 41.725, 0.9677, 5.616, 4],
            [0.799, 0.014, 69.604, 75.719, 89.658, 0.453, -1.260, 1],
            [0.799, 0.014, 69.604, 75.719, 89.658, 0.453, -1.260, 2],
            [0.799, 0.014, 69.604, 75.719, 89.658, 0.453, -1.260, 3],
            [0.681, 0.020, 58.162, 61.325, 74.662, 0.605, 'NaN', 1],
            [0.681, 0.020, 58.162, 61.325, 74.662, 0.605, 'NaN', 2],
            [0.681, 0.020, 58.162, 61.325, 74.662, 0.605, 'NaN', 3],
            [0.681, 0.020, 58.162, 61.325, 74.662, 0.605, 'NaN', 4],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 1],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 2],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 3],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 4],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 5],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 6],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 7],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 8],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 9],
            [0.908, 0.005, 88.47, 91.945, 95.28, -2.753, 13.541, 10],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 1],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 2],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 3],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 4],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 5],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 6],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 7],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 8],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 9],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 10],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 11],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 12],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 13],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 14],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 15],
            [0.859, 0.033, 75, 100, 100, -1.171, 1.354, 16]
        ]
    },
    'Algoritme dan Struktur Data': {
        'dir': 'asd',
        'file': [
            'uas_genap2022_1a',
            'uas_genap2022_1b',
            'uas_genap2022_2a',
            'uas_genap2022_2b',
            'uas_genap2022_2c',
            'uas_genap2022_2d',
            'uas_genap2022_3a',
            'uas_genap2022_3b',
            'uas_genap2022_3c'
        ],
        'quality': [
            [0.428571429, 3.711340206, 30, 40, 50, 0.378496113, 0.950642544, '1a'],
            [0.640816327, 9.110035767, 40, 60, 100,
                0.000492572, -1.607645383, '1b'],
            [0.913657771, 1.769234504, 96.15384615, 96.15384615,
                96.15384615, -3.388686055, 15.88847424, '2a'],
            [0.854441777, 6.396697551, 61.76470588, 100,
                100, -1.468115268, 0.823451051, '2b'],
            [0.613265306, 12.01314959, 30, 70, 100, -
                0.350559696, -1.309209455, '2c'],
            [0.379591837, 3.875447086, 30, 35, 50, 0.779361439, 0.473573162, '2d'],
            [0.585714286, 9.505154639, 30, 70, 90, -
                0.406015239, -1.408617622, '3a'],
            [0.482653061, 10.30980433, 30, 40, 80,
                0.150673399, -1.112860468, '3b'],
            [0.506122449, 8.016831475, 30, 40, 70, 0.142405016, -0.85668849, '3c']
        ]
    }
}

# daftar regex untuk membersihkan data
re_numbers = re.compile(r"\d", re.I)
re_tags = re.compile(r"<.*?>|&([a-z0-9]+|#[0-9]{1,6}|#x[0-9a-f]{1,6});", re.I)
kata_konjungsi = ["dan", "dengan", "serta", "atau", "tetapi", "namun", "sedangkan", "sebaliknya", "melainkan",
                  "hanya", "bahkan", "malah", "lagipula", "apalagi", "jangankan", "kecuali", "hanya", "lalu", "kemudian",
                  "selanjutnya", "yaitu", "yakni", "bahwa", "adalah", "ialah", "jadi", "karena itu", "oleh sebab itu", "oleh karena itu",
                  "sebab", "karena", "kalau", "jikalau", "jika", "jika", "bila", "apalagi", "asal", "agar", "supaya", "ketika", "sewaktu",
                  "sebelum", "sesudah", "tatkala", "sampai", "hingga", "sehingga", "untuk", "guna", "seperti", "sebagai", "laksana", "tempat", "yang"]
re_konjungsi = re.compile(r"\b(" + "|".join(kata_konjungsi) + ")\\W", re.I)


def stem_tokens(tokens):
    return [stemmer.stem(item) for item in tokens]


# remove punctuation, lowercase, stem
def normalize(text):
    return stem_tokens(nltk.word_tokenize(text.lower().translate(remove_punctuation_map)))


vectorizer = TfidfVectorizer(tokenizer=normalize)


def cosine_sim(text1, text2):
    tfidf = vectorizer.fit_transform([text1, text2])
    return (tfidf * tfidf.T).A[0, 1]


def read_file(file):
    with open(file, 'r', encoding="utf-8") as f:
        return f.read()


def check_similarity(soal, matkul):
    first_closest = {
        "similarity": 0,
        "name": "Not found",
        "quality": [0, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN'],
        "matkul": "Not found",
        "file_name": "Not found"
    }
    second_closest = {
        "similarity": 0,
        "name": "Not found",
        "quality": [0, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN'],
        "matkul": "Not found",
        "file_name": "Not found"
    }
    matkul_key = str(matkul)
    if matkul_key not in dir_list:
        print('enter')
        return first_closest, second_closest

    matkul_dir = dir_list[matkul_key]
    matkul_path = os.path.join(data_dir, matkul_dir['dir'])
    first_closest['matkul'] = matkul_dir['dir']
    second_closest['matkul'] = matkul_dir['dir']
    index = 0
    for file_name in matkul_dir['file']:
        file_path = os.path.join(matkul_path, file_name + '.txt')
        file_soal = read_file(file_path)
        reformat_file_name = format_file_name(file_name, matkul)
        similarity = cosine_sim(clean_soal(str(soal)), clean_soal(file_soal))
        similarity = round(similarity * 100, 1)
        if similarity < 1:
            continue
        if similarity > first_closest['similarity']:
            second_closest['similarity'] = first_closest['similarity']
            second_closest['name'] = first_closest['name']
            second_closest['quality'] = first_closest['quality']
            second_closest['file_name'] = first_closest['file_name']
            first_closest['similarity'] = similarity
            first_closest['name'] = reformat_file_name
            first_closest['quality'] = matkul_dir['quality'][index]
            first_closest['file_name'] = file_name[:13]
        elif similarity > second_closest['similarity']:
            second_closest['similarity'] = similarity
            second_closest['name'] = reformat_file_name
            second_closest['quality'] = matkul_dir['quality'][index]
            second_closest['file_name'] = file_name[:13]
        index += 1
    return first_closest, second_closest


def format_file_name(file_name, matkul):
    new_name = file_name[:3].upper()
    new_name += " " + str(matkul)
    new_name += " " + file_name[4:9].capitalize() + " " + file_name[9:13]
    return new_name


def clean_soal(soal_file):
    new_soal = soal_file.lower()
    new_soal = re_numbers.sub("", new_soal)
    new_soal = re_tags.sub(" ", new_soal)
    new_soal = re_konjungsi.sub("", new_soal)
    return new_soal

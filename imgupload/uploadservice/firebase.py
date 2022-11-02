from datetime import datetime
import pyrebase


config = {
    "apiKey": "AIzaSyD2QILGkq-iFm8n6BorwnpR-mxem16FM2g",
    "authDomain": "aigyujiem-image.firebaseapp.com",
    "databaseURL": "https://aigyujiem-image.firebaseio.com",
    "projectId": "aigyujiem-image",
    "storageBucket": "aigyujiem-image.appspot.com",
    "messagingSenderId": "277166542037",
    "appId": "1:277166542037:web:1a5766a5508ce296f6e65c",
    "measurementId": "G-Q6NQ31CEQH"
}

firebase = pyrebase.initialize_app(config)
storage = firebase.storage()


def firebase_upload(files):
    urls = []
    for file in files:
        filename = (str(datetime.timestamp(datetime.now()))).strip('.') + file.name
        if ' ' in filename:
            filename = filename.replace(' ', '')
        storage.child("images/" + filename).put(file)
        file_url = "https://firebasestorage.googleapis.com/v0/b/aigyujiem-image.appspot.com/o/images%2F" + filename + "?alt=media"

        urls.append(file_url)

    return urls




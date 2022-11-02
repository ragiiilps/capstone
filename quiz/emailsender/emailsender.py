import smtplib, ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

port = 465  # For SSL
password = "Capstone2022"

# Create a secure SSL context
context = ssl.create_default_context()

sender_email = "aigujiem@zohomail.com"

def send_email(receiver_email, message):
    with smtplib.SMTP_SSL("smtp.zoho.com", port, context=context) as server:
        server.login(sender_email, password)
        server.sendmail(sender_email, receiver_email, message.as_string())
        # TODO: Send email here
        server.quit()

def send_reviewer_notif(receiver_email, user_penerima, user_pengirim, judul_soal, penulis_soal, semester, link_soal, link_subskripsi):
    message = MIMEMultipart("alternative")
    message["From"] = sender_email
    message["To"] = receiver_email
    message["Subject"] = "[Informasi] Penunjukkan sebagai reviewer"
    html = f"""\
    <html>
    <body>
        <p>Yth {user_penerima}<br><br>
        {user_penerima} telah dipilih oleh {user_pengirim} sebagai reviewer untuk:<br><br>
        Judul soal: {judul_soal}<br>
        Semester: {semester}<br>
        Penulis soal: {penulis_soal}<br><br>

        Draft soal dapat diakses melalui <a href="{link_soal}" target="_new">link ini</a><br>
        Atas perhatian Bapak/Ibu, diucapkan terima kasih<br><br>
        Salam,<br>
        Sistem AIG UJI-M<br><br>
        <hr>
        <a href="{link_subskripsi}" target="_new" style="color:#00f;text-align: center;">berhenti berlangganan</a>
        </p>
    </body>
    </html>
    """
    text = f"""\
        Yth {user_penerima}
        {user_penerima} telah dipilih oleh {user_pengirim} sebagai reviewer untuk:
        Judul soal: {judul_soal}
        Semester: {semester}
        Penulis soal: {penulis_soal}

        Draft soal dapat diakses melalui link ini: {link_soal}
        Atas perhatian Bapak/Ibu, diucapkan terima kasih
        Salam,
        Sistem AIG UJI-M

        Berhenti berlangganan
        {link_subskripsi}
        """
    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(text, "plain")
    part2 = MIMEText(html, "html")

    # Add HTML/plain-text parts to MIMEMultipart message
    # The email client will try to render the last part first
    message.attach(part1)
    message.attach(part2)

    send_email(receiver_email, message)

def send_penulis_notif_reviewed(receiver_email, user_penerima, user_reviewer, judul_soal, nomor_soal, link_review, link_subskripsi):
    message = MIMEMultipart("alternative")
    message["From"] = sender_email
    message["To"] = receiver_email
    message["Subject"] = "[Informasi] Ada soal yang di-review"
    html = f"""\
    <html>
    <body>
        <p>Yth {user_penerima}<br><br>
        {user_reviewer} telah memberikan review untuk:<br><br>
        Paket soal: {judul_soal}<br>
        Nomor urut: {nomor_soal}<br><br>

        Paket soal dapat diakses melalui <a href="{link_review}" target="_new">link ini</a><br>
        Atas perhatian Bapak/Ibu, diucapkan terima kasih<br><br>
        Salam,<br>
        Sistem AIG UJI-M<br><br>
        <hr>
        <a href="{link_subskripsi}" target="_new" style="color:#00f;text-align: center;">berhenti berlangganan</a>
        </p>
    </body>
    </html>
    """
    text = f"""\
        Yth {user_penerima}
        {user_reviewer} telah memberikan review untuk:
        Paket soal: {judul_soal}
        Nomor urut: {nomor_soal}

        Paket soal dapat diakses melalui link ini: {link_review}
        Atas perhatian Bapak/Ibu, diucapkan terima kasih
        Salam,
        Sistem AIG UJI-M

        Berhenti berlangganan
        {link_subskripsi}
        """
    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(text, "plain")
    part2 = MIMEText(html, "html")

    # Add HTML/plain-text parts to MIMEMultipart message
    # The email client will try to render the last part first
    message.attach(part1)
    message.attach(part2)

    send_email(receiver_email, message)

def send_reviewer_notif_new(receiver_email, user_penerima, user_penulis, judul_soal, nomor_soal, link_review, link_subskripsi):
    message = MIMEMultipart("alternative")
    message["From"] = sender_email
    message["To"] = receiver_email
    message["Subject"] = "[Informasi] Terdapat soal baru"
    html = f"""\
    <html>
    <body>
        <p>Yth {user_penerima}<br><br>
        {user_penulis} telah memasukkan soal baru untuk:<br><br>
        Paket soal: {judul_soal}<br>
        Nomor urut: {nomor_soal}<br><br>

        Review Paket soal dapat diakses melalui <a href="{link_review}" target="_new">link ini</a><br>
        Atas perhatian Bapak/Ibu, diucapkan terima kasih<br><br>
        Salam,<br>
        Sistem AIG UJI-M<br><br>
        <hr>
        <a href="{link_subskripsi}" target="_new" style="color:#00f;text-align: center;">berhenti berlangganan</a>
        </p>
    </body>
    </html>
    """
    text = f"""\
        Yth {user_penerima}
        {user_penulis} telah memasukkan soal baru untuk:
        Paket soal: {judul_soal}
        Nomor urut: {nomor_soal}

        Review Paket soal dapat diakses melalui link ini: {link_review}
        Atas perhatian Bapak/Ibu, diucapkan terima kasih
        Salam,
        Sistem AIG UJI-M

        Berhenti berlangganan
        {link_subskripsi}
        """
    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(text, "plain")
    part2 = MIMEText(html, "html")

    # Add HTML/plain-text parts to MIMEMultipart message
    # The email client will try to render the last part first
    message.attach(part1)
    message.attach(part2)

    send_email(receiver_email, message)

def send_writer_notif(receiver_email, user_penerima, pemberi_komentar, isi_komentar, mata_kuliah, link_soal, link_subskripsi):
    message = MIMEMultipart("alternative")
    message["From"] = sender_email
    message["To"] = receiver_email
    # Ketika ada yang memberikan komentar
    message["Subject"] = f"[Informasi] Terdapat Komentar di Draft Soal {mata_kuliah}"
    html = f"""\
    <html>
    <body>
        <p>Yth {user_penerima}<br><br>
        {pemberi_komentar} memberikan komentar pada draft soal untuk mata kuliah {mata_kuliah}.<br>
        Isi komentar: <br>
        {isi_komentar}<br>
        Daftar komentar dapat diakses melalui <a href="{link_soal}">link ini</a><br><br>
        Atas perhatian Bapak/Ibu, diucapkan terima kasih<br><br>
        Salam,<br>
        Sistem AIG UJI-M
        <hr>
        <a href="{link_subskripsi}" target="_new" style="color:#00f;text-align: center;">berhenti berlangganan</a>
        </p>
    </body>
    </html>
    """
    text = f"""\
        Yth {user_penerima}
        {pemberi_komentar} memberikan komentar pada draft soal untuk mata kuliah {mata_kuliah}.
        Isi komentar:
        {isi_komentar}
        Daftar komentar dapat diakses melalui link ini: {link_soal}

        Atas perhatian Bapak/Ibu, diucapkan terima kasih
        Salam,
        Sistem AIG UJI-M

        Berhenti berlangganan
        {link_subskripsi}
        """
    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(text, "plain")
    part2 = MIMEText(html, "html")

    # Add HTML/plain-text parts to MIMEMultipart message
    # The email client will try to render the last part first
    message.attach(part1)
    message.attach(part2)

    send_email(receiver_email, message)
    print('Email sent!')
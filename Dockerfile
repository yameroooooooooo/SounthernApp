# ใช้ Image ที่มี Flutter SDK พร้อมใช้งาน
FROM cirrusci/flutter:3.7.0

# กำหนด Working Directory ภายใน Container
WORKDIR /app

# คัดลอกไฟล์โปรเจกต์ทั้งหมดลง Container
COPY . /app



# ติดตั้ง Dependencies ของโปรเจกต์
RUN flutter pub get

# รันคำสั่ง Terminal เพื่อเริ่มพัฒนา
CMD ["flutter", "run"]
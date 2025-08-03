FROM python:3.7-slim

# نصب فلَسک
RUN pip install flask

# کپی کردن فایل اپلیکیشن
COPY main.py /myapp/main.py

# تنظیم دایرکتوری کاری
WORKDIR /myapp

# اکسپوز کردن پورت 8080
EXPOSE 8080

# اجرای اپلیکیشن
CMD ["python", "main.py"]

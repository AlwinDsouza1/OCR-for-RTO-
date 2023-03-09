from django.shortcuts import render, redirect
from django.http.response import StreamingHttpResponse
from django.http import HttpResponse

from PIL import Image
import pytesseract

def index(request):
    im=Image.open('C:/Users/MY PC/Desktop/rto project2/ocr/ocr/static/ada.jpg')
    pytesseract.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract.exe'
    text=pytesseract.image_to_string(im,lang='eng')
    #print(text)
    final_text=""
    if(text==""):
        final_text="No text found"
    else:
        final_text=text
    file = open("extracted.txt", "w")
    file.write(text)
    file.close()
    content = {
            'text':final_text,
            'link':'http://localhost:47449/RTO/machinelearning.aspx'
            }
    return render(request, "index2.html",content)
    
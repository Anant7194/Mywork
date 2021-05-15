from tkinter import *
from pytube import YouTube
root=Tk()

root.geometry('600x300')
root.resizable(0,0)
root.configure(bg="black")
root.title("Magic Youtube video downloader")

Label(root,text = 'Youtube Video Downloader',fg="red", font ="Calibri 30 bold",bg="black").grid(sticky=N,padx=80,row=0)
link = StringVar()

Label(root, text = 'Paste Link Here:', font = 'arial 10 bold',bg="black",fg="white").place(x= 60 , y = 70)
#notif=Label(root,font=("Calibri 10 bold"),bg="black",fg="red").place(x=200,y=200)
link_enter = Entry(root, width = 80,textvariable = link).place(x = 60, y = 100)
Label(root,text="Developed using Python",font="Calibri 20 bold",fg="white",bg="black").place(x=10,y=250)
def Downloader():    
    url =YouTube(str(link.get()))
    video = url.streams.first()
    try:
        video.download("C:/Users/ANANT/Desktop/Videos")
        Label(root,text='Download Complete',font='Calibri 10 italic',fg="red").place(x=200,y=200)
    except Exception as e:
        print(e)
        notif.config(fg="red",text="Cannot download this video")
    
Button(root,text = 'Download', font = 'Calibri 15 bold italic' ,bg = 'green',fg="black", padx = 2, command = Downloader).place(x=200 ,y = 150)

root.mainloop()
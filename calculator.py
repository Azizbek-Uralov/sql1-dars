from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QLineEdit, QPushButton, QVBoxLayout, QHBoxLayout
from PyQt5.QtCore import Qt
class MyWindow(QWidget):
    def __init__(self):
        super().__init__()
        self.asosiy = QVBoxLayout()
        self.bir_q = QHBoxLayout()
        self.ikki_q = QHBoxLayout()
        self.uch_q = QHBoxLayout()
        self.tort_q = QHBoxLayout()
        self.besh_q = QHBoxLayout()
        self.hammasi = ""

        self.chiqarish = QLabel()
        self.chiqarish.setStyleSheet("font-size: 50px;")
        self.ac = QPushButton("AC")
        self.ac.clicked.connect(self.delete_amal)
        self.delete = QPushButton("DEL")
        self.delete.clicked.connect(self.bitta_ochirish)
        self.qoshish = QPushButton('+')
        self.qoshish.clicked.connect(self.qoshish_amal)
        self.ayirish = QPushButton('-')
        self.ayirish.clicked.connect(self.ayirish_amal)
        self.kopaytirish = QPushButton('x')
        self.kopaytirish.clicked.connect(self.kopaytirish_amal)
        self.barobar = QPushButton('=')
        self.barobar.clicked.connect(self.oxirgi_javob)
        self.boluv = QPushButton('/')
        self.boluv.clicked.connect(self.boluv_amal)
        self.dot = QPushButton('.')
        self.bir = QPushButton('1')
        self.bir.clicked.connect(self.raqam1)
        self.ikki = QPushButton('2')
        self.ikki.clicked.connect(self.raqam2)
        self.uch = QPushButton('3')
        self.uch.clicked.connect(self.raqam3)
        self.tort = QPushButton('4')
        self.tort.clicked.connect(self.raqam4)
        self.besh = QPushButton('5')
        self.besh.clicked.connect(self.raqam5)
        self.olti = QPushButton('6')
        self.olti.clicked.connect(self.raqam6)
        self.yetti = QPushButton("7")
        self.yetti.clicked.connect(self.raqam7)
        self.sakkiz = QPushButton("8")
        self.sakkiz.clicked.connect(self.raqam8)
        self.toqqiz = QPushButton("9")
        self.toqqiz.clicked.connect(self.raqam9)
        self.nol = QPushButton("0")
        self.nol.clicked.connect(self.zero)

        self.bir_q.addWidget(self.ac)
        self.bir_q.addWidget(self.delete)
        self.ikki_q.addWidget(self.bir)
        self.ikki_q.addWidget(self.ikki)
        self.ikki_q.addWidget(self.uch)
        self.ikki_q.addWidget(self.qoshish)
        self.uch_q.addWidget(self.tort)
        self.uch_q.addWidget(self.besh)
        self.uch_q.addWidget(self.olti)
        self.uch_q.addWidget(self.ayirish)
        self.tort_q.addWidget(self.yetti)
        self.tort_q.addWidget(self.sakkiz)
        self.tort_q.addWidget(self.toqqiz)
        self.tort_q.addWidget(self.kopaytirish)
        self.besh_q.addWidget(self.dot)
        self.besh_q.addWidget(self.nol)
        self.besh_q.addWidget(self.boluv)
        self.besh_q.addWidget(self.barobar)

        self.asosiy.addWidget(self.chiqarish)
        self.asosiy.addLayout(self.bir_q)
        self.asosiy.addLayout(self.ikki_q)
        self.asosiy.addLayout(self.uch_q)
        self.asosiy.addLayout(self.tort_q)
        self.asosiy.addLayout(self.besh_q)

        self.setLayout(self.asosiy)

    def qoshish_amal(self):
        if "+-x/" not in self.hammasi:
            self.hammasi = self.hammasi+"+"
        self.chiqarish.setText(f"{self.hammasi}")


    def ayirish_amal(self):
        if "+-x/" not in self.hammasi:
            self.hammasi = self.hammasi+"-"
        self.chiqarish.setText(f"{self.hammasi}") 

    def kopaytirish_amal(self):
        if "+-x/" not in self.hammasi:
            self.hammasi = self.hammasi+"x"
        self.chiqarish.setText(f"{self.hammasi}") 

    def boluv_amal(self):
        if "+-x/" not in self.hammasi:
            self.hammasi = self.hammasi+"/"
        self.chiqarish.setText(f"{self.hammasi}")   
              

    def delete_amal(self): 
        self.hammasi = ""
        self.chiqarish.setText(f"{self.hammasi}")  

    def bitta_ochirish(self):
        self.hammasi = self.hammasi[:-1]
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam1(self):
        self.hammasi+="1"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam2(self):
        self.hammasi+="2"
        self.chiqarish.setText(f"{self.hammasi}")    

    def raqam3(self):
        self.hammasi+="3"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam4(self):
        self.hammasi+="4"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam5(self):
        self.hammasi+="5"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam6(self):
        self.hammasi+="6"
        self.chiqarish.setText(f"{self.hammasi}")
    def raqam7(self):
        self.hammasi+="7"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam8(self):
        self.hammasi+="8"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam9(self):
        self.hammasi+="9"
        self.chiqarish.setText(f"{self.hammasi}")

    def raqam0(self):
        self.hammasi+="0"
        self.chiqarish.setText(f"{self.hammasi}")
    
    def zero(self):
        self.hammasi+="0"
        self.chiqarish.setText(f"{self.hammasi}")

    def qoshish_amal(self):
        if self.hammasi and self.hammasi[-1] not in "+-*/":
            self.hammasi += "+"
        self.chiqarish.setText(self.hammasi)

    def ayirish_amal(self):
        if self.hammasi and self.hammasi[-1] not in "+-*/":
            self.hammasi += "-"
        self.chiqarish.setText(self.hammasi)

    def kopaytirish_amal(self):
        if self.hammasi and self.hammasi[-1] not in "+-*/":
            self.hammasi += "*"
        self.chiqarish.setText(self.hammasi)

    def boluv_amal(self):
        if self.hammasi and self.hammasi[-1] not in "+-*/":
            self.hammasi += "/"
        self.chiqarish.setText(self.hammasi)
    def oxirgi_javob(self):
        try:
            if not self.hammasi:
                return
            for belgi in self.hammasi:
                if belgi not in "0123456789+-*/.":
                    raise Exception("Noto‘g‘ri belgi")

            natija = eval(self.hammasi)
            self.chiqarish.setText(str(natija))
            self.hammasi = str(natija)

        except:
            self.chiqarish.setText("Error")
            self.hammasi = ""

  


app = QApplication([])
win = MyWindow()
win.show()
app.exec_()        
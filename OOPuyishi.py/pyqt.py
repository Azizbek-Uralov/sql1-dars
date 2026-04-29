import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton

def salom():
    print("salom")
app = QApplication(sys.argv)
window = QWidget()
window.setWindowTitle("new")
window.resize(200, 300)

btn = QPushButton
btn.move(100, 80)
btn.clicked.connect(salom)
window.show()
sys.exit(app.exec_())

from datetime import datetime
# class Drug:
#     def __init__(self, name, sanasi):
#         self.name = name
#         self.sana = datetime.strptime(sanasi, "%d.%m.%Y")
#         self.bugun = datetime.today()
#     def get_time(self):
#         return self.bugun - self.sana



# d1 = Drug("sitramon", "10.04.2026")
# natja = d1.get_time()
# print(natja.days)


class Bookstore:
    def __init__(self, x_ismi, x_yoshi, kitob_name, price):
        self.ismi = x_ismi
        self.age = x_yoshi
        self.nomi = kitob_name
        self.price = price
    def get_price(self):
        a = self.age /100
        print("sizga ",self.price*a, "% , skidka boladi")
b1 = Bookstore("Ali", 22, "odam bolish qiyin", 15000)
b1.get_price()
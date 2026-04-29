# class kitob:
#     def __init__(self, nomi, muallif, narx, nashriyot):
#         self.nomi = nomi
#         self.muallif = muallif
#         self.narx = narx
#         self.nashriyot = nashriyot
#     def info(self):
#         print(f"nomi: {self.nomi} muallif: {self.muallif}Narx: {self.narx} nashriyoti:  {self.nashriyot}")


# lst = [kitob(input("Nomini kiriting: "), input("Muallifni kiriting: "), int(input("Narxini kiriting: ")), input("Nashriyotini kiriting: ")) for i in range(5)]

# for i in lst:
#     a = lst[0].nashriyot[:1]
#     if a in "ABCDEFGHabcdefgh":
#         i.info()

# ---------------------------------
# 2-masala

# class komputer:
#     def __init__(self, nomi, rami, narxi, protesser):
#         self.nom = nomi
#         self.ram = rami
#         self.narx = narxi
#         self.protsessor = protesser
#     def info(self):
#         print(f"Nomi: {self.nom}, Rami: {self.ram}, Narx: {self.narx}, Protessor: {self.protsessor}")
# lst = [komputer(input(("Nomi: ")), int(input("Rami: ")), int(input("Narx: ")), input("Protsessor: ")) for i in range(4)]
# for i in lst:
#     if 16>i.ram>4:
#         i.info()

# -------------------------------------------
# 3-masala

# class user:
#     def __init__(self, nomi, ismi, email, year):
#         self.nomi = nomi
#         self.ismi = ismi
#         self.email = email
#         self.year = year
#     def get_info(self):
#         print(f"Foydalanuvchi nomi{self.nomi}, Ismi: {self.ismi}, Email: {self.email}, Yili: {self.year}")
#     def yoshni_bilish(self):
#         a = 2026 - self.year
#         return a
# son = int(input("Nechta odam kiritasiz: "))    
# lst = [user(input("Akkaunt Nomini kiriting: "), input("Ismizni kiriting: "), input("Emailizni kiriting: "), int(input("Yug'ilgan yilingizni kiriting: "))) for i in range(son)]
# for i in lst:
#     i.get_info()  
#     print("hozir yoshiz ",i.yoshni_bilish(), "da")  
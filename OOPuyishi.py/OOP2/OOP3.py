class car:
    def __init__(self, brand, bak, km):
        self.engine = False
        self.brand = brand
        self.probeg = 0
        self.bak = bak
        self.km = km
    def benzin_quy(self, benzin):
        self.benzinmiqdori = benzin

    def start(self):
        if self.engine == False:
            self.engine = True
            print("Motor ishlayapti")
        else:
            print("Motor oldindan ishlayotgan edi")    
    def stop(self):
        if self.engine == True:
            self.engine = False
            print("Motor o'chdi")
        else:
            print("Motor oldindan o'chiq edi")
    def yurmoq(self):
        # if self.engine and km <= self.bak:
        #     print("Moshina yurmoqda")
        if self.engine == False:
            print("Motorni o't oldiring: ")
        elif self.bak <=self.km:
            a = self.bak - self.benzinmiqdori
            b = self.km - self.benzinmiqdori
            self.probeg+=self.km
            self.benzinmiqdori-=self.km
            print(f"sizda benzin yetarli emas siz benzin bakga {a} litr benzin solaolasiz va sizga {b} litr benzin kerak")
        else:
            print("moshina yurmoqda")

m1 = car("bmw", 50, int(input("Necha kilometr yurasiz")))
while 1:
    a = int(input("""[0] exit
[1] start
[2] stop
[3] yurmoq
[4] benzin solmoq
son kiritng: """))  
    if a == 0:
        exit()
    elif a == 1:
        m1.start()
    elif a==2:
        m1.stop()
    elif a == 3:
        m1.yurmoq()
    elif a == 4:
        a = int(input(("necha litr benzin solasiz")))
        m1.benzin_quy(a)
    # else:
    #     print("siz boshqa son kiritdingiz:")    
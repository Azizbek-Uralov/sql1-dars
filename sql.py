import pymysql

class Mysql:
    def __init__(self):
        self.connectDb()
        self.CreateDb()

    def connectDb(self):
        self.db = pymysql.connect(
            host="localhost",
            user="root",
            password="1234"
        )
        self.c = self.db.cursor()


    def CreateDb(self):
        self.c.execute("CREATE DATABASE IF NOT EXISTS COMPANY")
        self.c.execute("USE COMPANY")

    def createTb(self):
        self.c.execute('''CREATE TABLE IF NOT EXISTS COMPANY(name VARCHAR(50), 
                       Location VARCHAR(50), 
                       Capital decimal(2,1), 
                       employees_count int, 
                       establishedAt VARCHAR(50),  
                       monthly_expenses int)''')
    def InsertTb(self, name, joylashuv, capital, ishchi_soni, asoschi, xarajatlar):
        self.c.execute(f'''INSERT INTO COMPANY VALUES("{name}","{joylashuv}",{capital},{ishchi_soni},"{asoschi}", {xarajatlar})''')
        self.db.commit()

    def tartiblash(self):
        self.c.execute('''select * from company order by name;''')
        return self.c.fetchall()  
      
    def capitalord(self):
        self.c.execute('''select * from company order by capital desc''')
        return self.c.fetchall()
    def low_worker(self):
        self.c.execute("select * from company order by employees_count;")
        return self.c.fetchone()
    def tashkent_print(self):
        self.c.execute('select * from company where location = "Tashkent"')
        print(self.c.fetchall(), end = "\n\n")
    def location_count(self):
        self.c.execute("select json_arrayagg(name), count(location) as nechtaligi, json_arrayagg(establishedAt) from company group by location;")
        return self.c.fetchall()
        
    
    


A1 = Mysql()
A1.CreateDb()
A1.createTb()
for i in A1.tartiblash():
    print(i)
print(end = "\n\n")    
for i in A1.capitalord():
    print(i)
print(end = "\n\n") 
print(A1.low_worker(), end = "\n\n")
A1.tashkent_print()
for i in A1.location_count():
    print(i)
print(end = "\n\n")
    





import math
from decimal import Decimal


class CalculateTrigonometry:
    @staticmethod
    def sin(expr):
        return math.sin(math.radians(expr))

    @staticmethod
    def cos(expr):
        return math.cos(math.radians(expr))

    @staticmethod
    def tan(expr):
        return math.tan(math.radians(expr))
    

class CalculateNumber:
    @staticmethod
    def funcFPB(num1,num2):
        if num1 > num2 :
            num1, num2 = num2, num1

        for x in range(1, int(num1)+1):
            if ((num1%x == 0) and (num2%x==0)):
                fpb_hasil = x
    
        return(fpb_hasil)
    
    @staticmethod
    def funcKPK(num1, num2):
        if num1 > num2:
          greater = num1
        else: 
            greater = num2

        while(True):
            if((greater % num1 == 0) and (greater % num2 == 0)):
                lcm = greater
                break
            greater += 1
        
        return lcm

    @staticmethod
    def fpb(*args):
        mylist = []
        for a in args:
            mylist.append(a)
        
        num1 = mylist[0]
        num2 = mylist[1]
        gcd = CalculateNumber.funcFPB(num1,num2)
    
        for i in range(2,len(mylist)):
            gcd = CalculateNumber.funcFPB(gcd, mylist[i])
   
        return gcd

    @staticmethod
    def kpk(*args):
        mylist = []
        for a in args:
            mylist.append(a)
        
        num1 = mylist[0]
        num2 = mylist[1]
        lcm = CalculateNumber.funcKPK(num1,num2)
    
        for i in range(2,len(mylist)):
            lcm = CalculateNumber.funcKPK(lcm, mylist[i])
   
        return lcm


class Sorting:
    @staticmethod
    def get_min(*args):
        numbers = [x for x in args]
        numbers.sort()

        return numbers[0]

    @staticmethod
    def get_max(*args):
        numbers = [x for x in args]
        numbers.sort(reverse=True)

        return numbers[0]


class OtherFunction:
    @staticmethod
    def permutasi(n, r):
        return math.factorial(n) / math.factorial(n - r)

    @staticmethod
    def kombinasi(n, r):
        return math.factorial(n) / (math.factorial(r) * math.factorial(n - r))

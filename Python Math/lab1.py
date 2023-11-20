'''
Используя язык программирования Java, C++, Python, C# или C++ Builder
решите согласно варианту алгебраическое и трансцендентное уравнения как
минимум тремя (отделение корней обязателен) из следующих численных методов
(рекомендуется создать меню, из которого пользователь выберет желанный
метод:
1) Отделение корней (остальные методы используют отрезки,
полученные этим методом)
2) Метод биссекции (деления пополам)


11. f1(x)=x^3-x^2-16x+16=0 f2(x)=e^x+x-2=0
'''
import math


def f1(x):
    return math.e**x+x-2


def f2(x):
    return x**3-x**2-16*x+16


def sep(f):
    L = []
    a = -10
    b = 10
    n = 100000
    dx = (b-a)/n
    x1 = a

    while x1 <= b-a:
     x2 = x1+dx
     if f(x1)*f(x2) < 0:
        L += [(x1, x2)]
     x1 = x2
    return L


# Отделение корней
def first_method():
    ans1 = sep(f1)
    for i in ans1:
        print('F(x) =e^x+x-2 =0 ответ:')
        print((i[0] + i[1])/2)

    ans2 = sep(f2)
    for i in ans2:
        print('F(x) =x^3-x^2-16x+16=0 ответ:')
        print((i[0] + i[1])/2)


# Метод биссекции
def second_method(f):
    e = 0.00001
    for i in sep(f):
        x1, x2 = i[0], i[1]
        y1, y2 = f(x1), f(x2)
        while abs(x2-x1) > e:
         x3 = (x1+x2)/2.0
         y3 = f1(x3)
         if y1*y3 < 0.0:
             x2,y2=x3,y3
         else:
             x1 , y1 = x3 , y3
        print(x3)


def sec():
    print('F(x) =e^x+x-2 =0 ответ:')
    second_method(f1)
    print('F(x) =x^3-x^2-16x+16=0 ответ:')
    second_method(f2)


action = int(input(('Введите 1 если, хотите использовать метод отделение корней, введите 2, если хоитие использовать метод биссекции: ')))
if action == 1:
    first_method()
elif action == 2:
    sec()
else:
    print('Такой команды не существует')
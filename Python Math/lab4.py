'''
Используя язык программирования Java, C++, Python, C# или C++ Builder
определите с помощью одного или двух методов (трапеции и/ или
прямоугольников) значение определенного интеграла согласно варианту:
1 вариант
'''

from math import sqrt


def trap(f, a, b, h):
    s = 0.5 * (f(a) + f(b))
    x = a + h
    while (x <= b - h):
        s += f(x)
        x += h
    return h * s


def f(x):
    return sqrt(x)/(sqrt(x) - 1)


print("По формуле трапеций: " + str(trap(f, 4, 9, 0.0001)))




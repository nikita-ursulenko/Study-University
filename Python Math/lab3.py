'''
Используя язык программирования Java, C++, Python, C# или C++ Builder
определите с помощью полинома Лагранжа значение функции f(x) в необходимых
точках, зная начальные значения, согласно варианту:
1. f(1)=3; f(3)=4; f(6)=26; f(20)=96. f(2)=?; f(9)=?
'''
x = [1, 3, 6, 20]
y = [3, 4, 26, 96]


def lagranz(t):
    z = 0
    for j in range(len(y)):
        p1 = 1
        p2 = 1
        for i in range(len(x)):
            if i == j:
                p1 = p1*1
                p2 = p2*1
            else:
                p1 = p1*(t-x[i])
                p2 = p2*(x[j]-x[i])
        z = z + y[j] * p1 / p2
    return z


print(f'f(2)={lagranz(2)}')
print(f'f(9)={lagranz(9)}')
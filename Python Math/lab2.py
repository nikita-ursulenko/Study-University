'''
Используя язык программирования Java, C++, Python, C# или C++ Builder
решите согласно варианту систему линейных уравнений как минимум двумя
(рекомендуется, во-первых, использовать первые два метода) из следующих
численных методах:
1) Метод Крамера
2) Метод Гаусса (стандартный)

2x1 + 2x2 + 3x3 = 3
2x1 + x2 + 2x3 = 2
4x1 + 2x2 - x3 = 9
'''

import copy

coefficient = [
    [2, 2, 3],
    [2, 1, 2],
    [4, 2, -1]
]

answer = [3, 2, 9]

# метод Гаусса


def SwapRows(A, B, row1, row2):
    A[row1], A[row2] = A[row2], A[row1]
    B[row1], B[row2] = B[row2], B[row1]


def DivideRow(A, B, row, divider):
    A[row] = [a / divider for a in A[row]]
    B[row] /= divider


def CombineRows(A, B, row, source_row, weight):
    A[row] = [(a + k * weight) for a, k in zip(A[row], A[source_row])]
    B[row] += B[source_row] * weight


def Gauss(A, B):
    column = 0
    while column < len(B):

        # Ищем максимальный по модулю элемент в {0}-м столбце:".format(column + 1)
        current_row = None
        for r in range(column, len(A)):
            if current_row is None or abs(A[r][column]) > abs(A[current_row][column]):
                current_row = r
        if current_row is None:
            print("решений нет")
            return None

        if current_row != column:
            # Переставляем строку с найденным элементом повыше
            SwapRows(A, B, current_row, column)

        # Нормализуем строку с найденным элементом
        DivideRow(A, B, column, A[column][column])

        # Обрабатываем нижележащие строки
        for r in range(column + 1, len(A)):
            CombineRows(A, B, r, column, -A[r][column])

        column += 1

    X = [0 for b in B]
    for i in range(len(B) - 1, -1, -1):
        X[i] = B[i] - sum(x * a for x, a in zip(X[(i + 1):], A[i][(i + 1):]))

    print(f'X1 = {X[0]}\nX2 = {X[1]}\nX3 = {X[2]}')

# метод Крамера


def Minor(a, c_):
    res = []
    for r in range(1, len(a)):  # первую строку вычеркиваем , поэтому с единицы начинаем

        res.append([])
        for c in range(len(a[0])):
            if c != c_:
                res[-1].append(a[r][c])  # добавляем в последнюю строку
    return res


def Determinant(a):
    if len(a) == 1:
        return a[0][0]
    res = 0
    k = 1
    for c in range(len(a[0])):
        res += k * a[0][c] * Determinant(Minor(a, c))
        k *= -1
    return res


D = Determinant(coefficient)


def Kramer(a, b):
    X = []
    for c in range(len(a)):
        aa = copy.deepcopy(a)
        for r in range(len(a)):
            aa[r][c] = b[r]
        d = Determinant(aa)
        X.append(d / D)
    print(f'X1 = {X[0]}\nX2 = {X[1]}\nX3 = {X[2]}')


action = int(input('Если хотите решить систему методом Крамера введите 1, если хотите решить систему методом Гаусса введит 2: '))

if action == 2:
    Gauss(coefficient, answer)
elif action == 1:
    Kramer(coefficient, answer)
else:
    print('Не верная команда')
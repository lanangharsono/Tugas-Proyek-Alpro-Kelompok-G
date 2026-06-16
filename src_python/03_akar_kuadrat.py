# Program 3
# Menghitung akar-akar persamaan kuadrat

a = float(input("Masukkan nilai a: "))
b = float(input("Masukkan nilai b: "))
c = float(input("Masukkan nilai c: "))

D = b**2 - 4*a*c

if D == 0:
    x = -b / (2 * a)
    print("Nilai x kembar =", round(x, 3))
elif D > 0:
    x1 = (-b + D**0.5) / (2 * a)
    x2 = (-b - D**0.5) / (2 * a)
    print("Akar real:")
    print("x1 =", round(x1, 3))
    print("x2 =", round(x2, 3))
else:
    print("Persamaan hanya memiliki akar imajiner")

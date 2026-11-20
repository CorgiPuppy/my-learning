#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm),
	numbering: "1"
)

#set text(
	size: 14pt,
)

#set par(first-line-indent: (
	amount: 2em,
	all: true
))

#show raw.where(block: true): it => { set par(justify: false); grid(
  columns: (100%, 100%),
  column-gutter: -100%,
  block(width: 100%, inset: 1em, for i in it.text.split("\n") {
    linebreak()
  }),
  block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
)}

#set heading(numbering: "1.1.1.")

#align(center, block[
	#text(size: 20pt, weight: "bold")[СОДЕРЖАНИЕ]
])

#columns(2, gutter: 8pt)[
	#outline(title: none)
]

#pagebreak()

#align(center, block[
	= Полезные советы
])
+ Писать условие и рассуждения на бумаге
+ Хранить результаты сразу в #emph[long long] вместо #emph[int]
+ Получить представление об асимптотике ожидаемого решения можно по заданным ограничениям на размер входа. Как правило, чтобы уложиться во временные рамки (несколько секунд), программа должна совершать $10^8$ - $10^9$ операций. Соответственно, при ограничениях $1 <= n <= 10^4$, скорее всего, ожидается решение с асимптотикой $O(n^2)$ или $O(n^2 log(n))$, а при $1 <= n <= 10^6$ - с асимптотикой $O(n)$ или $O(n log(n))$
#align(center, block[
	= Хранение результатов и вывод
])
+ Не хранить результат в переменных/массиве/строке, когда её надо будет сразу выводить. Можно просто выводить сразу.
+ Вместо поиска всех решений достаточно понять, можно ли выводить лишь одно для определённых случаев

#pagebreak()

#align(center, block[
	= Простые числа
])
#align(center, block[
	== Советы по решению
])
+ Если нужно найти простое число в числе, то достаточно искать лишь два простых числа (зеркальных, по типу $13$ и $31$).
+ Любое число можно разделить на ПРОСТОЕ ЧИСЛО НАЦЕЛО, кроме $1$.
+ Любое число можно разложить на простые множители, кроме $1$.
+ Забрать больше всего простых чисел посредством префиксных сумм из мн-ва ${1, 2}$ можно, начиная с тройки и продолжать прибавлять двойки, пока не закончатся (пр.: #emph[2 1 2 2 2 2 1 1 1 = #underline[2] #underline[3] #underline[5] #underline[7] 9 #underline[11] 12 #underline[13] 14]. 
+ Чтобы получить из ДВУХ ПРОСТЫХ чисел #underline[НЕ ПРОСТОЕ ЧИСЛО], достаточно: $ (p eq.not 2 in P) + (p eq 3 "(or any prime number)" in P) = (n in.not P) $ #align(center, [и]) $ (p eq 2 in P) + (p eq 2 "(or any even number)" in P) = (n in.not P). $
#align(center, block[
	== Функция проверки на простое число
])
#let codeblock = read("../src/primes/primeNumber.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Функция для составления решета Эратосфена
])
#let codeblock = read("../src/primes/sieve.cpp")
#raw(codeblock, block: true, lang: "c++")

#pagebreak()

#align(center, block[
	= Модульная арифметика
])
#align(center, block[
	== Сумма, вычитание и произведение по модулю
])
$ (A + B) % m = ((A % m) + (B % m)) % m, $
$ (A - B) % m = ((A % m) - (B % m)) % m, $
$ (A * B) % m = ((A % m) * (B % m)) % m, $
где $(A, B, m in ZZ).$ 
#align(center, block[
	== Возведение в степень за O(b), где b - степень
])
#let codeblock = read("../src/modularArithmetic/pow.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Возведение в степень за O(log(b)), где b - степень
])
#let codeblock = read("../src/modularArithmetic/powbin.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Возведение в степень по модулю
])
#let codeblock = read("../src/modularArithmetic/powmod.cpp")
#raw(codeblock, block: true, lang: "c++")

#pagebreak()

#align(center, block[
	= Наибольший общий делитель (НОД, GCD) и Наименьшее Общее кратное (НОК, LCM)
])
#align(center, block[
	== Введение
])
#underline[Англ.]: #emph[GCD] - Greatest Common Divisor, или #emph[HCF] - Highest Common Factor. #emph[LCM] - Least Common Multiple.
#align(center, block[
	== Алгоритм Евклида (Euclidean algorithm)
])
#let codeblock = read("../src/GCDandLCM/euclidean.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Формула для нахождения НОК
])
#let codeblock = read("../src/GCDandLCM/lcm.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Советы по решению
])
1. Чтобы найти ПАРУ чисел, которые входят в диапазон и НОК которых входит в диапазон, достаточно проверить, входит ли умноженная на 2 левая граница в этот диапазон ($l dot.op 2 <= r$), и в ответ взять $l$ и $l dot.op 2$.
2. Чтобы найти ДВЕ ПАРЫ чисел ($a$ и $b$, $c$ и $d$), НОД первых и НОК вторых которые одинаковы, достаточно $a$ и $b$ сделать взаимно-простыми, а $c$ и $d$ равными $1$.

#pagebreak()

#align(center, block[
	= Факториал и nCr (Число сочетаний)
])
#align(center, block[
	== Введение
])
$ n! = 1 dot.op 2 dot.op dots dot.op n, $
$ 0! = 1 "и" 1! = 1. $
$ C^(n)_(r) = frac(n!, r! dot.op (n - r)!). $
#align(center, block[
	== Алгоритм нахождения факториала числа
])
#let codeblock = read("../src/factorial-and-nCr/factorial.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Алгоритм нахождения количества сочетаний (с помощью факториала)
])
#let codeblock = read("../src/factorial-and-nCr/nCrUsingFactorial.cpp")
#raw(codeblock, block: true, lang: "c++")
#align(center, block[
	== Алгоритм нахождения количества сочетаний (без использования факториала)
])
#let codeblock = read("../src/factorial-and-nCr/nCr.cpp")
#raw(codeblock, block: true, lang: "c++")

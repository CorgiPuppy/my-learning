#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm)
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
	== Теория
])
$ (A + B) % m = ((A % m) + (B % m)) % m, $
$ (A - B) % m = ((A % m) - (B % m)) % m, $
$ (A * B) % m = ((A % m) * (B % m)) % m, $
где $(A, B, m in ZZ).$ 
#align(center, block[
	== Советы по решению
])

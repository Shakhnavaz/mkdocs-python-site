# Алгоритмы и структуры данных 📊

> *"Алгоритмы — это душа Computer Science."*

## 🔍 Что такое алгоритм?

**Алгоритм** — это конечная последовательность точных инструкций для решения какой-либо задачи. Это как рецепт для приготовления блюда: если точно следовать шагам, получишь предсказуемый результат.

### Свойства алгоритмов:
- **Дискретность** — разбиение на отдельные шаги
- **Понятность** — каждая команда понятна исполнителю
- **Определенность** — однозначные инструкции
- **Результативность** — приводит к результату
- **Массовость** — работает для разных наборов данных

## 📈 Оценка сложности (Big O Notation)

Как понять, какой алгоритм лучше? Нужно оценить, сколько времени и памяти он потребляет.

| Обозначение | Название | Пример |
|-------------|----------|--------|
| O(1) | Константная | Доступ к элементу массива по индексу |
| O(log n) | Логарифмическая | Бинарный поиск |
| O(n) | Линейная | Поиск в неотсортированном массиве |
| O(n log n) | Линейно-логарифмическая | Быстрая сортировка |
| O(n²) | Квадратичная | Пузырьковая сортировка |

## 🧱 Основные структуры данных

### Массив (Array)
Элементы хранятся последовательно в памяти.

```python
# Python
arr = [1, 2, 3, 4, 5]
print(arr[2])  # O(1) - быстрый доступ
arr.append(6)  # O(1) - добавление в конец
arr.insert(0, 0)  # O(n) - вставка в начало
```

### Связный список (Linked List)
Элементы хранятся в разных местах памяти и ссылаются друг на друга.

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None
    
    def append(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        last = self.head
        while last.next:
            last = last.next
        last.next = new_node
```

### Хеш-таблица (Hash Table)
Хранит пары ключ-значение. Мгновенный доступ по ключу!

```python
# Словарь в Python - это хеш-таблица
phonebook = {
    "Анна": "+7-123-456-78-90",
    "Петр": "+7-098-765-43-21"
}
print(phonebook["Анна"])  # O(1) - очень быстро!
```

### Стек и Очередь
- **Стек (Stack)**: LIFO (Last In, First Out) — как стопка тарелок
- **Очередь (Queue)**: FIFO (First In, First Out) — как в магазине

```python
# Стек в Python
stack = []
stack.append(1)  # кладем наверх
stack.append(2)
stack.pop()      # забираем сверху (2)

# Очередь
from collections import deque
queue = deque()
queue.append(1)  # встаем в конец очереди
queue.append(2)
queue.popleft()  # первый уходит (1)
```

## 🎯 Классические алгоритмы

### 1. Бинарный поиск
Поиск элемента в отсортированном массиве. Делим массив пополам и сравниваем.

```python
def binary_search(arr, target):
    left, right = 0, len(arr) - 1
    
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    
    return -1  # не нашли

# Пример
numbers = [1, 3, 5, 7, 9, 11, 13, 15]
print(f"Индекс числа 7: {binary_search(numbers, 7)}")  # 3
```

### 2. Пузырьковая сортировка
Простая, но медленная сортировка. Соседние элементы меняются местами.

```python
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr

# Пример
unsorted = [64, 34, 25, 12, 22, 11, 90]
print(f"Отсортировано: {bubble_sort(unsorted)}")
```

### 3. Быстрая сортировка
Один из самых эффективных алгоритмов сортировки.

```python
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    
    return quick_sort(left) + middle + quick_sort(right)

# Пример
data = [3, 6, 8, 10, 1, 2, 1]
print(f"Быстрая сортировка: {quick_sort(data)}")
```

### 4. Поиск в ширину (BFS) для графов
Поиск кратчайшего пути в графе или обход "по слоям".

```python
from collections import deque

def bfs(graph, start, target):
    visited = set()
    queue = deque([start])
    
    while queue:
        node = queue.popleft()
        if node == target:
            return True
        
        if node not in visited:
            visited.add(node)
            queue.extend(graph[node] - visited)
    
    return False

# Граф: кто с кем дружит
friends = {
    "Ты": {"Анна", "Петр"},
    "Анна": {"Ты", "Мария"},
    "Петр": {"Ты", "Иван"},
    "Мария": {"Анна"},
    "Иван": {"Петр"}
}

print(f"Знаешь ли ты Марию? {bfs(friends, 'Ты', 'Мария')}")  # True
```

## 💡 Советы по изучению

1. **Практикуйтесь каждый день** — хотя бы по одной задаче на LeetCode или Codeforces
2. **Понимайте, а не заучивайте** — разберитесь, почему алгоритм работает
3. **Визуализируйте** — используйте сайты вроде visualgo.net
4. **Решайте задачи с разных ракурсов** — ищите несколько решений

## 📚 Ресурсы для углубленного изучения

- **Книги:**
  - "Грокаем алгоритмы" — Адитья Бхаргава (лучшая для начала)
  - "Алгоритмы. Построение и анализ" — Кормен (библия алгоритмов)
  - "Совершенный алгоритм" — Тим Рафгарден

- **Сайты для практики:**
  - [LeetCode](https://leetcode.com) — задачи для собеседований
  - [Codeforces](https://codeforces.com) — спортивное программирование
  - [HackerRank](https://hackerrank.com) — обучение в игровой форме
  - [Visualgo](https://visualgo.net) — визуализация алгоритмов

---

> *"Плохой программист думает о коде. Хороший программист думает о структурах данных и их взаимосвязях."* — Линус Торвальдс
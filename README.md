# О проекте

Данные репозиторий содержит материалы для обучения программированию на платформе .NET на языке C#, с упором на веб-разработку (ASP NET Core), и изучением сопутствующих технологий и стандартов. Рекомендуется проходить курс под руководством ментора, но возможно и самостоятельное изучение.

# Темы для самостоятельного изучения

### Теория

 * Сложность алгоритмов, нотация О-большое. Иметь представление об алгоритмах сортировки (пузырьком, слиянием и т.п.)
 * Структуры данных - массивы, одно- и двусвязные списки, деревья (бинарные, красно-черные), хэш-таблицы.
 * Реализация структур данных в BCL: пространства имен `System.Collections` и `System.Collections.Generic` - какие структуры лежат в основе этих классов (Array, List, HashSet, Dictionary)
 * Типовые алгоритмы вроде решета Эратосфена (и их реализация на c#)

### Материалы для самостоятельного изучения:
1. https://docs.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/index
1. Jeffrey Richter "CLR via C#"

### Туториалы базового уровня
1. https://docs.microsoft.com/en-us/dotnet/core/get-started?tabs=windows
1. https://docs.microsoft.com/ru-ru/aspnet/core/?view=aspnetcore-3.1#recommended-learning-path

### Язык C# и платформа .NET
 * Generics (обобщения). Какие можно использовать ограничения на обобщенный тип (generic constraints)? Как работают in и out (ковариантность и контрвариантность)?
 * Лямбды. Что такое и зачем нужно?
 * Extension методы. Что это такое, как их использовать? Какое ключевое слово показывает, что метод является методом расширения?
 * Boxing/unboxing - что такое, какие могут быть проблемы с ним связанные
 * async/await. Что такое асинхронный вызов, чем он отличается от синхронного. В чем преимущество асинхронного вызова продлжительной операции, например сетевого запроса или тяжелых вычислений?
 * Использование Task и Task\<TResult\> в асинхронном программировании. Это рекомендуемый способ реализации асинхронных операций.
https://docs.microsoft.com/ru-ru/dotnet/standard/asynchronous-programming-patterns/task-based-asynchronous-pattern-tap
 * Вопрос со звездочкой. Что общего у асинхронного метода и у метода-итератора:
<details>
  <summary>Примеры асинхронного метода и метода-итератора</summary>

    ```csharp
    public async Task<MyData> AsyncMethod()
    {
        // некоторый синхронный код
        var data = GetSomething();

        // асинхронный вызов
        var result = await SomeMethod(data);

        // еще некоторый синхронный код
        var smth = GetSomethingMore();

        return result;
    }

    public IEnumerable<MyData> IteratorMethod()
    {
        var data = GetSomething();
        foreach (var item in data)
        {
            var result = ModifyData(item);
            yield return result;
        }
    }
    ```
</details>

 * Сборщик мусора. Поколения объектов. LOH. Сколько байт занимает в куче объект, имеющий одно поле типа int (на архитектуре x86, x64)? Что такое sync block index, таблица методов и указатель на неё
https://m.habr.com/en/post/344556/
 * Поток и процесс. Чем они отличаются в Windows? Из чего состоит поток?

### От теории к практике

 * JSON - что за формат, какие правила? Чем отличается от XML - преимущества и недостатки. Что такое Newtonsoft Json (на смену которому пришёл System.Text.Json от MS)?
Что такое сериализация и десериализация?

 * Кодировки, unicode, utf-8, utf-16. Чем UTF-8 отличается от ASCII, насколько он с ней совместим? Рекомендую начать изучение с прочтения статьи Джоэла Спольски
https://www.joelonsoftware.com/2003/10/08/the-absolute-minimum-every-software-developer-absolutely-positively-must-know-about-unicode-and-character-sets-no-excuses/
Также что такое little-endian и big-endian?

 * IIS. Что такое, зачем нужен. IIS Express - чем отличается от полной версии.
 * Паттерн MVC. Что означает каждая буква, за что отвечает.
 * Entity Framework. Что это такое, история развития, версии.
Вот неплохой туториал, по использованию EF из ASP.NET (ну он же есть и в плане обучения по ссылке выше)
https://docs.microsoft.com/ru-ru/aspnet/core/data/ef-mvc/intro?view=aspnetcore-3.1

 * SQL. В продолжение предыдующего пункта, даже с использованием EF, всё равно не обойтись без SQL. Неплохой туториал по основам: https://www.w3schools.com/sql/

 * Регулярные выражения. Движки регулярных выражений есть в разных языках, так что можно использовать их как в C#, так и в JS. А также, например, в текстовых редакторах при поиске текста (в том же VS Code).
О регулярках неплохо рассказывается на том же learn.javascript.ru: https://learn.javascript.ru/regexp-introduction
Для отладки регулярок удобно пользоваться https://regex101.com/ - вообще крутой сайт, в закладки!)

 * HTTP:
   - методы (какие бывают, какая семантика у каждого из них). Чем отличается GET и POST методы?
   - заголовки (что это, зачем и как используется. Часто используемые заголовки: Authorization, Set-Cookie, Content-Type, Access-Control-Allow-Origin)
   - тело запроса (что может содержать)

 * REST API. Основные принципы проектирования API, соответствующего REST.

 * Ещё немного про функционирование веба - Сетевая модель OSI: https://ru.wikipedia.org/wiki/Сетевая_модель_OSI
Эта модель скорее для справки, и понимания общего контекста, так как в настоящее время не всегда соответствует действительности - но хорошо демонстрирует уровни абстраций.

 * Протоколы TCP, UDP. Основные принципы и отличия
 * HTTP/HTTPS - сертификаты, корневые центры. Зачем нужен HTTPS, от чего позволяет защищаться.
 * IPv4, IPv6

 * Веб-сокеты. Как происходит установление соединения. Принципы использования.
Можно потренировться на https://www.websocket.org/echo.html (найти ws соединение на вкладке Network в Chrome DevTools, открыть список сообщений)

### Javascript

 * Хоршоший учебник по JS: learn.javascript.ru
Из первой части (Язык JavaScript) первые две главы обязательно, с 3 по 6 рекомендуется.
Из второй части (Документ, события, интерфейсы) первая глава обязательно, дальше желательно.
Из прочих разделов, "CSS для JavaScript-разработчика" желательно.

 * Принцип "знай свой инструмент".
Возможности VS Code - полезные сочетания клавиш, наиболее популярные и полезные расширения
(для отладки JS кода, для поддержки синтаксиса языка и рефакторинга, для интеграции с системами контроля версий, и многие другие)

# Парсинг JSON и применение LINQ

## Темы

* LINQ
* JSON
* Открытие и чтение текстового файла

## Задание

Реализовть парсер JSON с коллекцией сделок из текстового файла [JSON_sample_1.json](data/JSON_sample_1.json)

 * Можно использвать `Newtonsoft.Json` или `System.Text.Json`

 * Результат должен быть в виде массива объектов класса Deal:

```csharp
class Deal
{
  public int Sum {get;set;}
  public string Id {get;set;}
  public DateTime Date {get;set;}
}
```

 * Реализовать метод `GetNumbersOfDeals`, который принимает коллекцию объектов класса Deal и:
   - фильтрует по сумме (не меньше 100 рублей) 
   - берёт 3 сделки с самой ранней датой (в отсортированном по сумме по убыванию виде)
   - возвращает номера Id

```csharp
IList<int> GetNumbersOfDeals(IEnumerable<Deal> deals)
{
   ...
}
```

# Использование стороннего API. Реализация WebApi на ASP.NET Core, использование websockets

 * Задание: реализовать консольное приложение, которое единственным параметром будет принимать ИНН организации, и печатать название организации, которое оно получит от [сервиса DaData](https://dadata.ru/api/find-party/).
То есть нужно разобраться в их API, зарегистрироваться (сервис бесплатный для небольших масштабов), составить запрос и реализовать это на C#
Рекомендуется установить и использовать Fiddler/Postman или другой аналогичный инструмент.

 * Задание со звёздочкой: реализовать веб-приложение на ASP.NET Core, функционально аналогичное предыдущему заданию, которое будет отдавать ответ по HTTP Get-запросу (ASP.NET Core Web Api)

 * Задание со звёздочкой и еще одной звездочкой: дополнить веб-приложение из предыдущего пункта возможностью работы по веб-сокетам (используя SignalR или голые сокеты).
При поступлении входящего сообщения нужно получить имя организации и разослать его *всем* подписчикам.

Ссылки:
* [API-сервис DaData](https://dadata.ru/api/find-party/)
* [Отправка HTTP-запросов из приложения на C#](https://docs.microsoft.com/ru-ru/aspnet/web-api/overview/advanced/calling-a-web-api-from-a-net-client)
* [Использование Fiddler/Postman](https://www.tutorialsteacher.com/webapi/test-web-api)
* [Создание простого WebApi](https://docs.microsoft.com/ru-ru/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio#test-the-api)
* [Использование SignalR](https://docs.microsoft.com/ru-ru/aspnet/core/tutorials/signalr?view=aspnetcore-3.1&tabs=visual-studio)
* [Использование веб-сокетов напрямую](https://docs.microsoft.com/ru-ru/aspnet/core/fundamentals/websockets?view=aspnetcore-3.1)
* [Пример простого приложения с веб-сокетами](https://github.com/dotnet/AspNetCore.Docs/blob/master/aspnetcore/fundamentals/websockets/samples/2.x/WebSocketsSample/Startup.cs)

# Урок 1. Работа с классами, вывод сообщений в консоль

## Темы

1. Типы данных
1. Циклы, условные операторы
1. Классы, методы, функции, свойства, поля
1. Основы ООП
1. Работа с коллекциями, строками

## Задания

<details>
  <summary>Таблицы Factories (заводы), Units (установки), Tanks (резервуары)</summary>

| Id | Name | Description                            |
|----|------|----------------------------------------|
| 1  | НПЗ#1 | Первый нефтеперерабатывающий завод    |
| 2  | НПЗ#2 | Второй нефтеперерабатывающий завод    |

| Id | Name   | FactoryId |
|----|--------|-----------|
| 1  | ГФУ-2  | 1         |
| 2  | АВТ-6  | 1         |
| 3  | АВТ-10 | 2         |

| Id | Name                        | Volume | MaxVolume | UnitId |
|----|-----------------------------|--------|-----------|--------|
| 1  | Резервуар 1                 | 1500   | 2000      | 1      |
| 2  | Резервуар 2                 | 2500   | 3000      | 1      |
| 3  | Дополнительный резервуар 24 | 3000   | 3000      | 2      |
| 4  | Резервуар 35                | 3000   | 3000      | 2      |
| 5  | Резервуар 47                | 4000   | 5000      | 2      |
| 6  | Резервуар 256               | 500    | 500       | 3      |

</details>

1. Создать классы, описывающие структуру приведённых выше таблиц
1. Создать экзепляры объектов из таблицы
1. Добавить функции, возвращающие коллекции каждого типа:
1. Осуществить вывод на печать всех резервуаров, включая имена цеха и фабрики, в которых они числятся
1. Вывести на печать общую сумму загрузки всех резервуаров
1. Создать собственный git-репозиторий и залить туда код
1. \* Осуществить возможность поиска по наименованию в коллекции, например через ввод в консоли
1. \** Придумать структуру и выгрузить все объекты в json файл
1. \*** Считать данные таблиц Excel напрямую, используя любую библиотеку

За основу можно взять код ниже:
<details><summary>Пример кода</summary>

```csharp
class Program
{
  static void Main(string[] args)
  {
    var items = GetTanks();
    Console.WriteLine($"Количество {items.Length} установок"); // должно быть 

    var foundUnit = FindUnit(items, "Резервуар 2");
    var factory = FindFactory(foundUnit);

    Console.WriteLine($"Резервуар 2 принадлежит установке {foundUnit.Name} ткой и заводу {factory.Name}");

    var totalVolume = GetTotalVolume(items);
    Console.WriteLine($"Общий объем резервуаров: {totalVolume}");
  }

  // реализуйте этот метод, чтобы он возвращал массив резервуаров, согласно приложенному файлу Excel
  public static Tank[] GetTanks()
  {
    // ваш код здесь
  }
    
  // реализуйте этот метод, чтобы он возвращал найденный в массиве установок по имени
  public static Unit FindUnit(Tank[] units, string unitName)
  {
    // ваш код здесь
  }

  // реализуйте этот метод, чтобы он возвращал объект завода, соответствующий установке
  public static Factory FindFactory(Unit unit)
  {
    // ваш код здесь
  }

  // реализуйте этот метод, чтобы он возвращал суммарный объем резервуаров в массиве
  public static int GetTotalVolume(Tank[] units)
  {
    // ваш код здесь
  }
}

/// <summary>
/// Установка
/// </summary>
public class Unit
{
  //..
}

/// <summary>
/// Завод
/// </summary>
public class Factory
{
  //..
}

/// <summary>
/// Резервуар
/// </summary>
public class Tank
{
  //..
}
```
</details>

## Материалы

### Руководства

https://metanit.com/sharp/tutorial  
https://docs.microsoft.com/ru-ru/dotnet/csharp/tutorials/intro-to-csharp  
https://docs.microsoft.com/ru-ru/dotnet/csharp/programming-guide  
https://gitlab.funcoff.club/education/frontend/main/uploads/d11fa103c3359c943208d180736839fb/gitlab-for-beginners.pdf  
https://gitlab.funcoff.club/education/frontend/main/uploads/2934faf2c61d45f6df7944e4d3f4a9d1/new-branches.pdf

### Книги

CLR via C# | Джеффри Рихтер  
https://upload.wikimedia.org/wikipedia/commons/b/b3/C_Sharp_Programming.pdf

### Программы

https://visualstudio.microsoft.com/ru  
https://desktop.github.com  
https://code.visualstudio.com

# Урок 2. Основы .NET и C#. Часть 1

## Темы

1. [Обработка исключений](https://docs.microsoft.com/ru-ru/dotnet/standard/exceptions/)
1. [Делегаты, события, лямбды](https://docs.microsoft.com/ru-ru/dotnet/standard/delegates-lambdas)
1. [Коллекции](https://metanit.com/sharp/tutorial/4.3.php)

## Задание

1. Доработать архитектуру текущего консольного приложения согласно замечаниям эксперта
1. Добавить обработку исключений при получении данных, при поиске, при выгрузке json - метод поиска должен выбрасывать исключение, которое перехватывается в основном методе с логикой
1. Выделить слой ввода/вывода сообщений пользователю в отдельный класс (все Console.WriteLine и пр.). Реализовать в этом классе событие ввода пользователя, на которое можно подписаться
1. Реализовать подписку на событие ввода, которое выводит сообщение вида `Пользователь ввел число <число> в <время>`
1. Реализовать операцию добавления/изменения/удаления нового элемента в файл json. Задание может быть реализовано как бесконечный цикл, считывающий ввод с консоли, также допустимо реализовать задание на ASP.NET Core Web API по желанию (+5 к карме).

# Урок 3. Основы .NET и C#. Часть 2

## Темы

1. [Интерфейсы, Наследование](https://metanit.com/sharp/tutorial/3.9.php)
1. [Универсальные шаблоны](https://docs.microsoft.com/ru-ru/dotnet/standard/generics/)
1. [Асинхронность](https://metanit.com/sharp/tutorial/13.3.php)

## Задание

1. Реализовать интерфейс объединяющий классы `Factory`, `Unit`, `Tank`
1. При работе с данными использовать обобщённые коллекции. В сигнатурах методов (типы аргументов и тип возвращаемого значения) должны быть **строго** интерфейсы (`IEnumerable<T>` - где достаточно возможности перечисления foreach, `IReadOnlyCollection<T>` - где важно показать, что коллекция не подлежит изменению, `IList<T>` - где нужно иметь возможность обращаться к элементам по индексу). Недопустимо использовать в аргументах и возвращать из методов массив, `List<T>` и т.д.
1. Реализовать асинхронный запрос данных из файла JSON или Excel
1. \* Реализовать поиск по коллекции через linq в двух вариантах синтаксиса (method chain, query expression)
1. \** Реализовать CRUD в файл excel

## Вопросы (ответ представить в текстовом виде в Вашем репозитории)

В пользовательском классе объявлено событие `event SomeEvent`. Извне класса доступна подписка на это событие. Что нужно добавить в этот класс, чтобы можно было также вызвать это событие вне класса?

```csharp
public class SomeClass
{
    // other methods and props

    public event SomeEventHandler SomeEvent;
}

// somewhere outside class SomeClass:

var s = new SomeClass();

// subscription to event
s.SomeEvent += OnSomeEvent;

// raise event
s.SomeEvent(s, eventArgs);
```

### Исключения

Доработать метод `FindUnit` в предыдущем задании так, чтобы он выбрасывал InvalidOperationException с текстом "Не найдена установка с именем <имя установки>!".

Доработать метод `Main`, чтобы перехватывать выброшенное исключение, и в этом случае вывести в консоль сообщение об ошибке, завершить программу.

### События

Реализовать консольное приложение.
Объявить событие (event), на которое при старте приложения нужно будет оформить подписку методом, получающим объект типа

```csharp
public class UserEnteredNumberEventArgs
{
    public int Input { get; set; }
    public DateTime EnteredAt { get; set; }
}
```
и выводящий в консоль сообщение:
`Пользователь ввел число <число> в <время>`

Приложение должно в бесконечном цикле читать пользовательский ввод. При получении ввода проверять, является ли пользовательский ввод целым числом: если является, необходимо вызвать event.

## Материалы

* https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/exceptions/exception-handling
* https://docs.microsoft.com/en-us/dotnet/standard/events/how-to-raise-and-consume-events

# Задача на алгоритмы

Массив чисел получен на основе отсортированного массива чисел (в котором могут быть пропуски), который был разделён на две части, которые поменяли местами и объединили в новый массив. Например:
* Первоначальный массив  
  `1, 2, 4, 5, 8, 9`
* Два массива  
  `1, 2, 4, 5` и `8, 9`
* Массивы поменяли местами  
  `8, 9` и `1, 2, 4, 5`
* Новый массив  
  `8, 9, 1, 2, 4, 5`

Имея на входе такой массив, необходимо реализовать алгоритм, который за минимальное количество итераций в среднем случае сможет определить размер "сдвига" (соответствующий количеству элементов во второй части исходного массива - `8, 9`).

В приведённом выше примере ответ будет `2`.

> Важно! Имеет значение сложность алгоритма ([нотация O-большое](https://techrocks.ru/2019/10/19/big-o-notation-simply-explained/))!  
> Например, при размере массива в миллион для линейной сложности `O(n)` - количество итераций будет линейно зависеть от размера массива, и составит в среднем полмиллиона.
> А для сложности `O(log n)` количество итераций будет составлять в среднем всего несколько десятков (зависимость как логарифм миллиона по основанию 2)

Метод, который необходимо реализовать:

```csharp
public class NumericShiftDetector
{
	// метод принимает массив, составленный из отсортированного набора чисел, "сдвинутого" на некоторое количество позиций
	public int GetShiftPosition(int[] initialArray)
	{
		// должен вычислить и вернуть количество позиций, на которое произведен "сдвиг"
		return 0;
	}
}
```

[Юнит-тесты](https://ru.wikipedia.org/wiki/Модульное_тестирование), которые должны проходить для Вашей реализации:

```csharp
using System.Linq;
using Xunit;

/// <summary>
/// Unit-тесты на класс <see cref="NumericShiftDetector"/>
/// </summary>
public class NumericShiftDetectorTests
{
	[Fact]
	public void TestSample1()
	{
		var sample = new[] { 15, 16, 18, 20, 1, 2, 5, 6, 7, 8, 11, 12 };
		var result = new NumericShiftDetector().GetShiftPosition(sample);
		Assert.Equal(expected: 4, actual: result);
	}

	[Fact]
	public void TestSample2()
	{
		var sample = new[] { 5, 6, 7, 8, 11, 12, 15, 16, 18, 20, 1, 2 };
		var result = new NumericShiftDetector().GetShiftPosition(sample);
		Assert.Equal(expected: 10, actual: result);
	}

	[Fact]
	public void TestSampleWithoutShift()
	{
		var sample = new[] { 1, 2, 5, 6, 7, 8, 11, 12, 15, 16, 18, 20 };
		var result = new NumericShiftDetector().GetShiftPosition(sample);
		Assert.Equal(expected: 0, actual: result);
	}

	[Fact]
	public void TestLargeSample()
	{
		var part1 = Enumerable.Range(15_000, 100_000); // 15000, 15001, ... 114998, 114999
		var part2 = Enumerable.Range(0, 14_995); // 0, 1, ... 14993, 14994
		var sample = part1.Concat(part2).ToArray(); // объединение двух последовательностей // 15000, 15001, ... 114998, 114999, 0, 1, ... 14993, 14994

		var result = new NumericShiftDetector().GetShiftPosition(sample);

		Assert.Equal(expected: 100_000, actual: result);
	}
}
```

<details><summary>Локальный запуск тестов xUnit в своём проекте</summary>

Чтобы прогнать тесты, Вы можете добавить в свой solution новый проект, выбрав шаблон `xUnit Test Project (.NET Core)`

![image](img/xUnit.png)
</details>

# Задача на алгоритм (связный список)

Есть [односвязный список](https://ru.wikipedia.org/wiki/Связный_список#Односвязный_список_(однонаправленный_связный_список)) очень большого размера (от млрд записей) и ограниченный объём свободной памяти (до нескольких килобайт). Элементы списка недоступны для изменения (доступны только для чтения).

Необходимо описать словами или реализовать на любом языке программирования алгоритм, который позволит в условиях ограниченной памяти понять, содержит ли этот список цикл.

![image](img/linked-list.png)

# Запуск ASP.NET Core приложения в Docker

Создать два приложения ASP.NET Core Web Api.

Первое приложение должно отвечать строкой `world`.

Второе приложение при поступлении GET-запроса должно делать запрос к первому приложению, полученный ответ вставить в шаблон `Hello, {responseText}!` и отдать результат в ответ.

Каждое приложение должно быть запущено в отдельном контейнере в Docker. В репозитории должен быть исходный код приложений и Dockerfile.

Адрес для HTTP-запроса из второго приложения к первому должен храниться в appsettings.json второго приложения.

# CRUD на ASP.NET Core Web API

Реализовать веб-приложение ASP.NET Core с простейшими [CRUD-операциями](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete).

Приложение должно содержать API-контроллеры UnitController и TankController со следующими HTTP методами:

GET `api/unit/all` - получение всех установок (без резервуаров)

GET `api/unit/{unitId}` - получение установки со всеми резервуарами

POST `api/unit` - добавление новой установки

```
{
  "Name": "Имя установки",
  "Description": "Описание установки"
}
```

PUT `api/unit/{unitId}` - редактирование установки

```
{
  "Id": 3,
  "Name": "Новой имя установки",
  "Description": "Новое описание установки"
}
```

DELETE `api/unit/{unitId}` удаление установки со всеми резервуарами


GET `api/tank/{tankId}` - получение резервуара

POST `api/tank/unit/{unitId}` - добавление нового резервуара для установки с указанным Id

```
{
  "Name": "Имя резервуара",
  "Description": "Описание резервуара",
  "MaxVolume": 1000,
  "Volume": 250
}
```

PUT `api/tank/{tankId}` - редактирование резервуара

```
{
  "Id": 33,
  "Name": "Новое имя резервуара",
  "Description": "Новое описание резервуара",
  "MaxVolume": 2000,
  "Volume": 333
}
```

DELETE `api/tank/{tankId}` удаление резервуара

* Для работы с БД рекомендуется использовать Entity Framework, с применением подхода code-first (миграции на основе моделей, используемых в DbContext)

* Для создания контроллера со стандартными CRUD-операциями можно использовать готовый шаблон:
  <details>
    <summary>Screenshot</summary>

    ![image](img/add-API-controller.png)
  </details>
* Для доступа к данным предлагается выделить отдельный слой абстракции - [репозиторий](https://docs.microsoft.com/en-us/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/infrastructure-persistence-layer-design#the-repository-pattern). Пример реализации [ASP.NET Core WebAPI приложения с EF Core с использованием репозитория](https://medium.com/net-core/repository-pattern-implementation-in-asp-net-core-21e01c6664d7)

## Материалы

https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio

# Реализация фонового сервиса в приложении ASP.NET Core

В приложении, реализованном в рамках задачи https://gitlab.funcoff.club/education/backend/main/-/issues/9 , реализовать фоновый сервис, который будет периодически обновлять значения Volume у каждого резервуара на случайную величину в пределах +-10% от текущего значения, но не ниже нуля. При выходе значения за допустимый предел MaxVolume необходимо логировать сообщение об ошибке в текстовый файл с логами.

Для записи логов в файл используйте NLog или другую библиотеку по своему усмотрению.

https://docs.microsoft.com/en-us/aspnet/core/fundamentals/host/hosted-services?view=aspnetcore-3.1&tabs=visual-studio

# Авторизация в приложении ASP.NET Core Web API

В приложении, реализованном в рамках задачи https://gitlab.funcoff.club/education/backend/main/-/issues/9 , реализовать авторизацию на основе [JSON Web Token](https://ru.wikipedia.org/wiki/JSON_Web_Token) (JWT).

* Должны быть созданы необходимые таблицы в БД с пользователями и их правами (клэймами).
* При первоначальной миграции БД должен быть добавлен пользователь ([seed data](https://docs.microsoft.com/en-us/ef/core/modeling/data-seeding)) с логином "admin", пароль "pwd123"
* Пароли не должны храниться в БД в открытом виде.
* Токен должен быть подписан секретным ключом, который хранится в appsettings.json
* Время действия токена - 2 часа
* Предоставлен API для авторизации, получения информации о текущем авторизованном пользователе и смены пароля:

     - GET `api/user/current` - получение информации о текущем пользователе (требует авторизации)
     - POST `api/user/auth` - авторизация пользователя по логину и паролю (доступен для анонимных пользователей)
  ```
  {
    "login": "admin",
    "password": "pwd123"
  }
  ```
  Сгенерированный токен может быть возвращён через заголовок Set-Cookie либо в теле ответа как одно из полей в модели.

     - POST api/user/password/update - обновить пароль авторизованного пользователя (требует авторизации)
  ```
  {
    "login": "admin",
    "currentPassword": "pwd123",
    "newPassword": "pwd321"
  }
  ```

* Все существующие методы управления  установками и резервуарами (UnitController и TankController) должны требовать авторизацию. Если запрос не содержит токена, либо представленный в HTTP-заголовках запроса Bearer-токен невалидный (истёк, неверно подписан) - должен возвращаться ответ `401 Unauthorized`

* Управление установками, а также управление резервуарами требует наличия соответствующего типа клэймов у авторизованного пользователя, в противном случае возвращается ответ 403 Forbidden)

* По желанию можно также реализовать методы управления пользователями - создание и удаление пользователя, управление правами пользователя (для редактирования пользователей, авторизованный пользователь также должен обладать соответствующими правами)

# Работа с коллекциями

## Темы

* Обобщения (Generics), параметры типа
* `IEnumerable` и `IEnumerable<T>`
* Структуры данных (массив, динамический массив, хэш-таблица, связный список, дерево)
* `IQueryable`, [EF Core](https://docs.microsoft.com/en-us/ef/core/)

## Задание

Загрузить данные с https://jsonplaceholder.typicode.com/posts

Создать класс `Post`, соответствующий модели представленных данных, и сериализовать ответ в `List<Post>`

Подобрать структуру данных, которая позволит наиболее быстро находить запись по полю Title:

* предполагая, что поле title уникально
* предполагая, что в title могут быть повторяющиеся значения

## Вопросы (ответ представить в текстовом виде в Вашем репозитории)

* Как связан интерфейс `IEnumerable` и цикл `foreach`. Можно ли использовать в цикле `foreach` коллекцию, которая не наследует этот интерфейс?
* Чем отличается `IEnumerable` и `IQueryable`? Для чего используется `IQueryable`?
* Предполагая, что dbContext является [контекстом БД](https://docs.microsoft.com/en-us/ef/core/miscellaneous/configuring-dbcontext), какой SQL-запрос будет выполнен в каждом из случаев:

  ```csharp
  var result1 = dbContext.Tanks
      .Where(x => x.MaxVolume > 100)
      .ToList();
  
  var result2 = dbContext.Tanks
      .AsEnumerable()
      .Where(x => x.MaxVolume > 100)
      .ToList();
  ```
* Какое ключевое слово используется в методе-итераторе, чтобы вернуть очередной элемент? Какое слово используется для окончания итерации?

## Материалы

https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/collections

https://docs.microsoft.com/en-us/dotnet/standard/collections/

https://docs.microsoft.com/en-us/ef/core/miscellaneous/configuring-dbcontext

https://jsonplaceholder.typicode.com/guide.html

Для отправки HTTP-запроса можно использовать класс `HttpClient`:

https://docs.microsoft.com/en-us/dotnet/api/system.net.http.httpclient?view=netcore-3.1

# Async-await, Task asynchronous pattern

## Темы

* `async`/`await`, классы `Task` и `Task<T>`
* `Task.WhenAny` и `Task.WhenAll`
* Примитивы синхронизации, атомарная операция [Compare-and-Swap (CAS)](https://en.wikipedia.org/wiki/Compare-and-swap)

## Задание

Напишите [метод расширения](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/extension-methods) RunInParallel, который будет принимать в this-аргументе IEnumerable<Task<T>>, и вторым аргументом int maxParallelTasks - максимальное количество одновременно выполняемых задач (со значением по умолчанию 4).

> В качестве примитива синхронизации можно использовать [SemaphoreSlim](https://docs.microsoft.com/en-us/dotnet/api/system.threading.semaphoreslim?view=netcore-3.1) или любой другой по Вашему усмотрению.

Реализуйте консольное приложение, которое будет выполнять параллельную загрузку записей с https://jsonplaceholder.typicode.com/posts/{postId} где postId от 1 до 100 в 5 потоков, и добавлять их в одну коллекцию.

> При выборе типа для коллекции с результатами обратите внимание, что `List<T>` не является потокобезопасной коллекцией - при одновременном добавлении из двух потоков, один из добавленных элементов может "потеряться".

## Материалы

* https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/async/
* https://docs.microsoft.com/en-us/dotnet/standard/asynchronous-programming-patterns/task-based-asynchronous-pattern-tap
* https://docs.microsoft.com/en-us/dotnet/standard/threading/overview-of-synchronization-primitives
* https://docs.microsoft.com/en-us/dotnet/standard/threading/semaphore-and-semaphoreslim
* https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/extension-methods
* https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/linq/how-to-add-custom-methods-for-linq-queries

## Дополнительные материалы

Интересная статья о том, как можно await'ить что угодно (помимо `Task` и `Task<T>`):

https://devblogs.microsoft.com/pfxteam/await-anything/

# SQL

> Рекомендуется использовать MS SQL Server

## Темы для самостоятельного изучения

1. Основные команды работы с данными: `SELECT` (с параметрами `WHERE`, `GROUP BY`, `ORDER BY`), `INSERT`, `UPDATE`, `DELETE`    
    * Как выбрать все записи со всеми столбцами из таблицы?
    * Как посчитать количество записей в таблице, удовлетворяющих некоторому условию?
    * Как выбрать данные сразу из нескольких столбцов, если записи объединены одним ключом? (`LEFT JOIN`, `RIGHT JOIN`, `INNER JOIN`)
    * Как выбрать все значения таблицы, имеющие дубликаты по одному столбцу (`HAVING`)

1. Используя БД из первого урока (с таблицами Factory, Unit, Tank), напишите запросы:
    * Список всех установок (Unit) с именем завода, к которому относится установка
    * Суммарное значение Volume и MaxVolume, а также количество резервуаров по каждой установке, с выводом имени установки, а также имени и описания завода, к которому относится установка
    * Суммарное значение Volume и MaxVolume резервуаров по каждому заводу
    * Выбрать все установки, у которых есть по крайней мере один резервуар с текущим значением Volume выше 1000
    * Выбрать все резервуары, относящиеся к газофракционным установкам =)

    <details><summary>SQL-скрипт создания таблицы</summary>
    
    ```sql
    CREATE TABLE [dbo].[Factory](
        [Id] [int] IDENTITY(1,1) NOT NULL,
        [Name] [nvarchar](max) NULL,
        [Description] [nvarchar](max) NULL,
        CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED ([Id] ASC)
    )

    CREATE TABLE [dbo].[Unit](
        [Id] [int] IDENTITY(1,1) NOT NULL,
        [Name] [nvarchar](max) NULL,
        [FactoryId] [int] NULL,
        CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED ([Id] ASC)
    )
    ALTER TABLE [dbo].[Unit] WITH CHECK ADD CONSTRAINT [FK_Unit_Factory_FactoryId] FOREIGN KEY([FactoryId])
        REFERENCES [dbo].[Factory] ([Id])

    CREATE TABLE [dbo].[Tank](
        [Id] [int] IDENTITY(1,1) NOT NULL,
        [Name] [nvarchar](max) NULL,
        [Volume] [int] NOT NULL,
        [MaxVolume] [int] NOT NULL,
        [UnitId] [int] NULL,
        CONSTRAINT [PK_Tank] PRIMARY KEY CLUSTERED ([Id] ASC)
    )
    ALTER TABLE [dbo].[Tank] WITH CHECK ADD CONSTRAINT [FK_Tank_Unit_UnitId] FOREIGN KEY([UnitId])
        REFERENCES [dbo].[Unit] ([Id])

    INSERT [dbo].[Factory] ([Name], [Description]) VALUES (N'МНПЗ', N'Московский нефтеперерабатывающий завод')
    INSERT [dbo].[Factory] ([Name], [Description]) VALUES (N'ОНПЗ', N'Омский нефтеперерабатывающий завод')

    INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'ГФУ-1', 1)
    INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'ГФУ-2', 1)
    INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'Установка АВТ-6', 2)

    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 1', 1500, 2000, 1)
    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 2', 2500, 3000, 1)
    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Доп. резервуар 24', 3000, 3000, 2)
    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 35', 3000, 3000, 2)
    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 47', 4000, 5000, 2)
    INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 256', 500, 500, 3)
    ```
    </details>
    
1. Индексы - что такое, как создать. Кластеризованные/некластеризованные. Какие преимущества даёт, какими доп. затратами может обернуться.

1. Оконные функции MS SQL  
    https://docs.microsoft.com/ru-ru/sql/t-sql/queries/select-over-clause-transact-sql?view=sql-server-ver15  
    Из оконных функций чаще всего используется ROW_NUMBER()  
    Нужно понимать логику выражения `OVER(PARTITION BY ... ORDER BY ...)`  
    Напишите запрос, который будет удалять из таблицы `[dbo].[Factory]` (см. скрипт создания таблицы в предшествующих пунктах) дубликаты строк, сравнивая по двум столбцам `Name` и `Description` (удалению подлежат более поздние записи с бОльшим Id)

1. Как построить плана запроса в SSMS. Что быстрее при поиске уникального значения - scan vs seek? Какими способами можно ускорить запрос, в процессе которого происходит scan всей таблицы с поиском одного значения по одному столбцу типа int?

1. Напишите запрос к БД, созданной в рамках задачи [CRUD на ASP.NET Core Web API](#crud-на-aspnet-core-web-api) , запрос, содержащий `SELECT`, `WHERE` и `LEFT JOIN`. Постройте для этого запроса план запроса в SSMS.

1. Доп. задание. Запустив в режиме отладки приложение, реализованное в рамках задачи [CRUD на ASP.NET Core Web API](#crud-на-aspnet-core-web-api) , запустите и подключитесь к SQL серверу с помощью профилировщика (SQL Server Profiler). Отследите запросы, в которые Entity Framework транслирует Ваш код на C#. Попробуйте выполнить различные запросы при помощи интерфейса `IQueryable<T>`, и найти SQL запросы, которые получаются в результате:
   * выбор множества значений (`ToListAsync`)
   * выбор одного значения (`FirstOrDefaultAsync`)
   * выбор нескольких значений из строки с использованием анонимного типа (`Select(x => new { x.Id, x.Name })`)
   * группировка и сортировка строк (`GroupBy`, `OrderBy`, `OrderByDesc`)
   * выбор первых N значений, пропуск N значений (`Take`, `Skip`)
    <details><summary>Для фильтрации запросов при трассировке можно установить фильтр по фрагменту текста запроса</summary>

    ![image](img/SQL-profiler-filter.png)
    </details>

## Туториал - рекомендуется самостоятельно пройти

https://www.w3schools.com/sql/default.asp

## Инструменты

* [MS SQL Server Management Studio (SSMS)](https://docs.microsoft.com/ru-ru/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
* [SQL Server Profiler](https://docs.microsoft.com/ru-ru/sql/tools/sql-server-profiler/sql-server-profiler?view=sql-server-ver15)

# .NET

## Темы

* Перегрузка методов, необязательные параметры со значениями по умолчанию, out и ref аргументы
* Интерфейс [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=netcore-3.1), [конструкция `using`](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/using-statement)
* [Атрибуты](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/attributes/)
* [Garbage Collector](https://docs.microsoft.com/en-us/dotnet/standard/garbage-collection/fundamentals)

[TODO] темы и задания дополняются

## Задания

* Создать класс, реализующий интерфейс `IEnumerable<int>`. При перечислении он должен отдавать числа от 0 до 100 и обратно (то есть 0,1,2,...98,99,100,99,98,...2,1,0). Класс не должен хранить в себе коллекцию этих чисел (то есть запрещено создать внутри с помощью `new` или `Enumerable.Range` список нужных чисел). Возможна реализация на основе метода-итератора (`yield return`/`yield break`).
* \* Создать класс аналогично предыдущему заданию, не используя метод-итератор. Так же как и в предыдущем пункте, недопустимо выделять память на коллекцию чисел.
* Создать собственные атрибуты `CustomDescriptionAttribute(string description)`, `AllowedRangeAttribute(int minValue, int maxValue)`, которые могут применяться к свойствам классов. Добавить аннотации атрибутом `[CustomDescription("<описание свойства>")]` каждому свойству классов `Factory`, `Unit` и `Tank`. Добавить аннотации `[AllowedRange(0, 1000)]` для свойства `Tank.Volume` и `[AllowedRange(200, 1000)]` для свойства `Tank.MaxVolume`. Доработать метод, который выводит на печать объекты - описание должно быть получено из атрибута `CustomDescription`. Реализовать метод, который проверят валидность объекта класса `Tank` согласно максимальным и минимальным значениям, определённым в атрибуте `AllowedRange` для отмеченного свойства, и то что значение `Volume` не превышает `MaxVolume`.
* Реализовать класс-обёртку над любым managed-ресурсом будет дополнено
* \* Реализовать класс-обёртку над unmanaged-ресурсом - дескриптором файла
* \* Сколько поколений объектов в CLR? Какого размера должен быть объект, чтобы он сразу попал в кучу больших объектов (Large object heap)? В чем преимущество struct на class при создании большого количества экземпляров данного типа? Предположим, что приложение активно работает с памятью, создавая большое количество объектов. Данные поступают непрерывным потоком с большой скоростью, и в силу особенностей бизнес-логики приложения успевают попасть во второе поколение до того, как станут недоступными по ссылке, и регулярная полная сборка мусора сильно сказывается на производительности. Какие способы решения этой проблемы Вы можете предложить? Опишите плюсы и минусы каждого варианта
* ildasm

# Урок 3. Работа с БД

## Темы

1. [Основы SQL](https://ru.wikipedia.org/wiki/SQL)
1. [ADO.NET](https://metanit.com/sharp/adonet/1.1.php)
1. [Библиотеки](https://docs.microsoft.com/ru-ru/dotnet/core/tutorials/library-with-visual-studio)

## Задание

1. Первые три пункта [задания по SQL]([SQL](#sql)) обязательно, остальные по желанию
1. Реализовать общий интерфейс работы с данными ([репозиторий](https://metanit.com/sharp/articles/mvc/11.php)) и взаимодействовать строго через него
1. Создать новый класс для работы с данными, реализующий интерфейс из предыдущего пункта, использующий базу данных и ADO.NET (можете использовать `Dapper` или \*`Entity Framework`)
1. Для своего приложения можете использовать схему БД из SQL скрипта миграции в задаче 
[SQL](#sql)
1. Реализовать методы CRUD (добавление/удаление/изменение) для сущностей `[Factory]`, `[Unit]`, `[Tank]`
1. Выполнить обязательные пункты задания [.NET](#net) (те которые без \*)
1. \* Реализовать класс MigrationWithBlackJackAndHookers который будет проверять наличие в БД таблиц, указанных в предыдущем пункте, и в случае их отсутствия выполнять скрипты `CREATE TABLE` `ALTER TABLE` и `INSERT VALUES` для создания нужной схемы БД и наполнения первоначальными данными.

## Материалы

[Тренажер основных команд SQL](https://www.w3schools.com/sql/default.asp)  

[CQRS](https://docs.microsoft.com/en-us/azure/architecture/patterns/cqrs)

# Реализовать собственную micro-ORM

## Лучший способ разобраться в технологии - изобрести её.

<img src="img/bender.png"  width="130" height="185">

Вам предлагается создать свою собственную micro-[ORM](https://en.wikipedia.org/wiki/Object-relational_mapping) ~~с блэкджеком~~. Она должна предоставлять возможность трансформации результатов SQL-запроса к БД в коллекцию нужных объектов на C#.

## Требования:

* Реализация в отдельном проекте (csproj, тип - библиотека классов)
* Публичный метод-расширения
    ```
    IReadonlyCollection<TItem> QueryMultipleItems<TItem>(this IDbConnection connection, string sqlQuery)
    ```
    где sqlQuery - строка вида `SELECT * FROM [dbo].[Cats] WHERE [Id] < 10`


## Дополнительные требования (реализация по желанию):

Добавить возможность подключения своей ORM как сервиса:

```csharp
public void ConfigureServices(IServiceCollection services)
{
    ...
    services.AddSuperDbContext<CatDbContext>(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EducationSample;Integrated Security=True"));
    ...
}
```

Пользователь определяет класс-контекст `CatDbContext` (Вы можете объявить абстрактный класс или интерфейс - например `SuperDbContext`, от которого пользователь должен наследовать пользовательский класс контекста), и регистрирует его в Startup'е, с указанием строки подключения к БД. После этого он может запросить через DI в своём сервисе экземпляр зарегистрированного контекста (`CatDbContext`), у которого будет возможность выполнить запрос `QueryMultipleItems`.

# Замыкания

## Материалы

* Рихтер, Тепляков
* https://www.viva64.com/ru/b/0468/

## Пример для самостоятельного разбора

Что выведет этот код? Прежде чем запускать, попробуйте самостоятельно дать ответ.

Объясните, почему именно такое поведение в первом и во втором случае.

```csharp
void Main()
{
    DoSomething();
    DoAgain();
}

void DoSomething()
{
    var i = 100;
    var actions = Enumerable.Range(0, 10)
        .Select(x => new Action(() => Console.WriteLine(i++)))
        .ToList();
    foreach (var action in actions)
        action();
}

void DoAgain()
{
    var i = 100;
    var actions = Enumerable.Range(0, 10)
        .Select(x =>
        {
            i++;
            return new Action(() => Console.WriteLine(i));
        })
        .ToList();
    foreach (var action in actions)
        action();
}
```

# Урок 4. Entity Framework

## Темы

1. [Web API](https://docs.microsoft.com/ru-ru/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio)
1. [Entity framework core](https://metanit.com/sharp/entityframeworkcore/1.1.php)
1. [Dependency injection](https://docs.microsoft.com/ru-ru/aspnet/core/fundamentals/dependency-injection?view=aspnetcore-3.1)

## Задание

1. Создать новый проект web-api и контроллеры для работы с сущностями (если уже создан, использовать существующий)
1. Дополнить модели [свойствами навигации](https://docs.microsoft.com/ru-ru/ef/ef6/fundamentals/relationships) - для установки - свойство `Factory`, для резервуара - свойство `Unit`
1. Реализовать подключение к базе данных с помощью EF Core
1. Создать миграции
1. Реализовать CRUD с помощью EF и LINQ. Метод получения одного объекта по id должен отдавать его вместе со связанными сущностями (например, для установки также должны приходить в ответе данные о заводе, которому принадлежит установка)
1. \* Использовать AutoMapper для формирования списка Dto на основе сущностей из БД
1. \* Валидация на основе FluentValidator (не пустые имена и описания сущностей, объем не превышает максимальный)

# Урок 5. Загрузка большого объема данных по расписанию

## Сервис mock-данных

Создать сервис Web API (отдельным проектом), предоставляющий данные по событиям.

Массив событий хранится в виде [json-файла](events.7z).

Должны быть доступны следующие методы:

* Получение идентификаторов всех доступных событий по выбранной установке

GET `/api/events/keys?unitId=1&take=3&skip=3`

Пример ответа:

```json
[3,4,5]
```

* Получение полных данных о событиях по выбранным идентификатором

POST `/api/events`

Тело запроса:

```json
[1,2,3]
```

Пример ответа:

```json
[
  {
    "Id": 1,
    "IsActive": true,
    "StorageValue": 100.1,
    "Name": "Срабатывание клапана сброса давления",
    "UnitId": 2,
    "Description": "Срабатывание клапана сброса давления на установке ГФУ-2",
    "Latitude": 52.196482,
    "Longitude": 48.087987,
    "Tags": [
      "клапан сброса давления",
      "ГФУ-2",
      "газ"
    ],
    "ResponsibleOperators": [
      {
        "id": 17,
        "name": "Иванов Иван"
      },
      {
        "id": 23,
        "name": "Петров Пётр"
      }
    ]
  },
  ...
]
```

## Загрузка и синхронизация данных в сервисе

В существующем сервисе Web API, реализованном в рамках прошлых заданий, добавить фоновый сервис, который будет синхронизировать данные по событиям.

Сервис должен запускаться раз в минуту. По каждой из сконфигурированных установок должна осуществляться синхронизация данных в БД вашего сервиса. Идентификаторы установок должны быть прописаны в appsettings.json, должна быть возможность изменения списка установок без перезагрузки сервиса.

Логика синхронизации должна быть реализована с учётом того, что данных много, и за один запрос все данные, подлежащие загрузке/обновлению, передать невозможно

Свойства модели `Tags` и `ResponsibleOperators` допустимо хранить в сериализованном виде как текст.

Загрузке и сохранению в БД подлежат все события, которые на момент загрузки отсутствуют. Кроме того, должна происходить синхронизация всех свойств по тем событиями, которые имеют флаг `IsActive: true`.

Свойство `IsActive` события может переходить из true в false, но не обратно.

# Применение паттернов в прикладной разработке

[[_TOC_]]

### Паттерн "декоратор"

Реализовать декоратор, который кэширует сведения о курсах валют, загружаемые посредством интерфейса `ICurrencyRateLoader`.

```csharp
public interface ICurrencyRateLoader
{
    CurrencyValue LoadSingleRate(string currency, string baseCurrency, DateTime date);
    IReadOnlyCollection<CurrencyValue> LoadRates(string currency, string baseCurrency, DateTime startDate, DateTime endDate);
}

public class CurrencyValue
{
    public string Currency { get; set; }
    public string BaseCurrency { get; set; }
    public decimal Value { get; set; }
    public DateTime TimeStamp { get; set; }
}
```

Должна быть возможность определения максимального количества кэшированных значений.

### Паттерн Builder для создания Mock-объектов в целях юнит-тестирования

Реализовать билдер для сервиса `IUserHttpService` для использования в юнит-тестах:

```csharp
public interface IUserHttpService
{
    Task<IList<IUser>> GetAllUsers();
    Task<IList<BrigadeDto>> GetAllBrigades();
    Task<IUser> GetUserById(int id);
    Task<BrigadeDto> GetBrigadeById(int id);
}
```

Билдер может быть конфигурирован для вызова имеющихся в интерфейсе методов:

```csharp
var users = new[]
{
    new User()
};

var userHttpService = new UserHttpServiceBuilder()
    .WithGetAllUsersAsync(users)
    .WithGetUserById(users[0])
    .Build();
```

Для реализации Mock-объекта возможно использование библиотеки Moq

# Роутинг в микросервисах с использованием Ocelot

## Добавить новый сервис для роутинга на основе Ocelot

<img src="img/ocelot.png"  width="300" height="200" title="Мимишный оцелот">

Добавить новый веб-сервис, который должен проксировать входящие веб-запросы к другим веб-сервисам, реализованным в рамках задач [CRUD на ASP.NET Core Web API](#crud-на-aspnet-core-web-api) и [Урок 5](#урок-5)

Роутинг должен [осуществляться с помощью nuget-пакета Ocelot](https://docs.microsoft.com/ru-ru/dotnet/architecture/microservices/multi-container-microservice-net-applications/implement-api-gateways-with-ocelot), сервис должен пропускать GET, POST, PUT и DELETE запросы. Должны быть доступны методы управлением установками, резервуарами и заводами, а также получением событий (как из основного сервиса с БД, так и из второго веб-сервиса с mock-данными).

## Хостинг приложений, настройка реверс-проксирования запросов

Пользователям ОС Windows захостить свои приложения в IIS. Кроме того, добавить веб-сайт со статикой (например, index.html с приветственным сообщением), который будет проксировать входящие запросы вида `{host:port}/gateway/{...}` на приложение, в котором реализован роутинг на Ocelot. Возможна реализация при помощи создания дочернего приложения для веб-сайта:

<img src="img/iis.png"  width="190" height="275" title="IIS nested application in website">

Пользователям других ОС реализовать аналогичную конструкцию (статичный веб-сайт, реализующий прокси-пасс к веб-сервису с Ocelot'ом) на nginx.

## Журнал событий Windows (Event Viewer)

Пользователям ОС Windows добавить API метод, который выбрасывает необработанное исключение. Добавить и захостить на IIS сервис, который выбрасывает исключение в методе Main.

После возникновения исключений, запустить журнал событий Windows, найти свои исключения, изучить стэктрейс и остальные сведения о событиях.

# Использование Swagger

Подключите и используйте в своём веб-приложении [Swagger](https://docs.microsoft.com/en-us/aspnet/core/tutorials/getting-started-with-swashbuckle?view=aspnetcore-3.1&tabs=visual-studio)

# Урок 6. Windows Presentation Foundation (WPF)

## Темы

1. [WPF](https://metanit.com/sharp/wpf/1.php)
1. [wpf samples](https://github.com/microsoft/WPF-Samples)

## Задание

1. Создать wpf приложение, которое будет получать события из основного приложения webApi и отрисовывать их на экране
1. Использовать шаблон MVVM
1. \* Возможность изменить событие и отправить измененное в основное приложение
1. \* Найти реализацию асинхронной команды
1. \** Создать wpf приложение сразу с host и возможностью использовать DI

## Материалы

1. [MVVM](https://ru.wikipedia.org/wiki/Model-View-ViewModel)
1. [Avalonia](https://github.com/AvaloniaUI/Avalonia)
1. [Material design lib](https://github.com/MaterialDesignInXAML/MaterialDesignInXamlToolkit)
1. [MD Demo](https://github.com/MaterialDesignInXAML/MaterialDesignInXamlToolkit/releases)
1. [WPF samples](https://github.com/microsoft/WPF-Samples)

# Финальное задание

## Реализовать сервис Web API на ASP.NET Core, динамически генерирующий mock-данные.

Сервис должен генерировать набор объектов по API-запросу.

Класс объекта динамически определяется путем поиска классов-моделей в сборках (файлах .dll) в папке проекта.

Добавление новой сборки с классами для моков, изменение конфигурации в appsettings.json не должно требовать перезагрузки сервиса.

Схема работы:

* При поступлении к сервису запроса вида `/api/mockdata/unit?skip=100&take=50` сервис загружает доступные сборки в поисках наиболее подходящего по имени класса (`Unit`)
* Сервис генерирует mock-данные, используя псевдослучайный алгоритм с [фиксированным seed'ом](https://en.wikipedia.org/wiki/Random_seed) (значение seed должно быть получено из appsettings.json)
* Строковые свойства должны быть инициализированы случайным текстовым значением длиной 15 символов, состоящим из латинских заглавных букв и цифр. Числовые свойства - целым или дробным числом в интервале от 0 до 1000. Дата/время - случайным временем в диапазоне от 2010-01-01 до 2025-01-01. Булевые свойства - равновероятным true/false. Свойства-коллекции - массивом случайной длины от 2 до 5 элементов.
* "Navigation-properties" должны также инициализоваться графом объектов (с ограничением по глубине, задаваемым в файле конфигурации)
* Если у класса есть два свойства вида `Parent Parent { get; set; }` и `int ParentId { get; set; }`, а у вложенного объекта есть свойство, соответствующее его первичному ключу (например, `int Id { get; set; }`), его значение должно совпадать с соответствующим идентификатором в вышестоящем объекте (см. пример ниже - `"ParentId": 7, "Parent": { "Id": 7 }`)
* Параметры запроса из query string должны определять: take - количество записей в ответе, skip - количество "пропущенных" записей статической псевдослучайной последовательности. Например, запрос с параметрами `?skip=5&take=15` должен содержать объекты, также возвращаемые по запросу с параметрами `?skip=0&take=25` (с шестого по двадцатый элементы)
* Псевдослучайная последовательность значений также должна быть устойчивой в случае добавления/удаления свойств в моделях. Например, если в классе `Child` добавить новое свойство `int Value { get; set; }`, структура объектов (иерархия вложенных объектов, количество объектов в коллекциях и свойства-идентификаторы с именем вида `Id`) должна оставаться неизменной. Нежелательно, но допустимо изменение некоторых остальных свойств (кроме идентификаторов).

> Важно! При повторной отправке одного и того же API запроса (например `/api/mockdata/factory?skip=10&take=15`) генерируемые данные должны быть строго идентичными (при условии неизменной конфигурации сервиса и доступных сборок с моделями).

Пример классов, которые содержит сборка, которая будет динамически загружена в Ваш сервис:

```csharp
public class Parent
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string AdditionalProperty => $"Id {Id}, name {Name}, description {Description}";
}

public class Child
{
    public int Id { get; set; }
    public Parent Parent { get; set; }
    public int ParentId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string AdditionalProperty => $"Id {Id}, name {Name}, description {Description}, parent id {ParentId}, parent: {Parent.AdditionalProperty}";
}
```

Пример ответа на запрос вида `/api/mockdata/child?skip=0&take=2`:

```json
[
  {
    "Id": 42,
    "Parent": {
      "Id": 7,
      "Name": "1KEFDC3FT75XECV",
      "Description": "8ZU3FI5Z6V3ZGXM",
      "AdditionalProperty": "Id 7, name 1KEFDC3FT75XECV, description 8ZU3FI5Z6V3ZGXM"
    },
    "ParentId": 7,
    "Name": "N5XBNYB844Q7QE5",
    "Description": "O2M5A0UGRNB8ARZ",
    "AdditionalProperty": "Id 42, name N5XBNYB844Q7QE5, description O2M5A0UGRNB8ARZ, parent id 7, parent: Id 7, name 1KEFDC3FT75XECV, description 8ZU3FI5Z6V3ZGXM"
  },
  {
    "Id": 15,
    "Parent": {
      "Id": 523,
      "Name": "NXRHH5G99QFPTAU",
      "Description": "UC11SNVKIBM3FWG",
      "AdditionalProperty": "Id 523, name NXRHH5G99QFPTAU, description UC11SNVKIBM3FWG"
    },
    "ParentId": 523,
    "Name": "0AREDF3KA3UX27F",
    "Description": "DPD5PLNGMR6VHUJ",
    "AdditionalProperty": "Id 15, name 0AREDF3KA3UX27F, description DPD5PLNGMR6VHUJ, parent id 523, parent: Id 523, name NXRHH5G99QFPTAU, description UC11SNVKIBM3FWG"
  }
]
```

              // Урок 1

// MaterialApp - обязательная вещь, которая показывает все наше приложение 

// Scafold - представляет из себя каркас страницы
// у scafold - свойства называются не child, а body 

// AppBAr - верхняя часть страницы(заголовок)
// Чтобы разместить несколько элементов - как вариант можно использовать Coloumn
//  "то будет в колонку

// Placeholder - ничего не делает - просто отображает заглушку


// Coloumn - колонка и ее свойства - она занимает все пространство в длину(но в ширину не все пространство )


// mainAxisAlignment - на сколько мы будем занимать место 

// spaceBetween - это значит, nчо наши элементы распределятся так, чтобы оставшееся 
// пустое место оставшиеся от них поделилось ровно на количество промежутков между 
// элементами, но 1 и последний элемент будут прижаты к краям

// spaceAround - заполняет пространство между элементами

// spaceEvenly - то же самое что и spaceBetween, но отодвигает 1 и последний элемент 
//  от краев 

// TextDirection - направления текста( справа на лево, лево на право )


// crossAxisAlingnment - нужна для того чтобы поставить на середину наш элемент 


// width: double.infinity -- это максимальная ширина


// padding - делает отступы от всех краев

// SizeBox- это такой виджет, который отвечает за размеры


// все что начинается с _(нижнего подчеркивания) - это зона видимости - тоесть видно только в том файле
// в котором это обьявленно 

//fontSize - увеличивает размер текста 
//fontWeight - узменяет  размер жирности
//  fontFamily - меняет семейство шрифтов 



                //  Урок 2

// Icon - это виджет, но сам по себе он ничего не показывает (но можно добавить какие-то анимации)
// типо сердечко, флаг и так далее 
// чтобы сделать стрелочку, как в нашем примере нужно использовать -- icon(Icons.chevron_right)
// есть такое свойтво у padding, как padding: EdgeInsets.symmetric -- тоесть 
// позволяет поставить одинаковые поддинги по горизонтали и вертикали 

// Чтобы допустим нашу стрелочку преместить на правую сторону, мы обворачиваем текст в widget
// пишем expanded и все заработала 

// 2 урок обьяснение -- у нас есть _MenuWidget(наши 4 иконки)
// у него есть щирина инфинити , а внутри колонка, а в эту колонку
//  нам нужно скормить виджеты внутри 

// далее мы подготовили виджет который будет в строке выполняться 

// class _MenuWidgetRow extends StatelessWidget {
//   final MenuRowData data;

//   const _MenuWidgetRow({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
//       child: Row(
//         children: [
//           Icon(data.icon),
//           SizedBox(width: 15),
//           Expanded(child: Text(data.text)),
//           Icon(Icons.chevron_right)
//         ],
//       ),
//     );
//   }
// }


// Но мы также создали обычный класс - это прсото класс который внутри себя хранит 2 свойства
// у нкего нет никакого функционала 
// class MenuRowData {
//   final IconData icon;
//   final String text;

//   MenuRowData(this.icon, this.text);  - это конструктор который позваоляет задать 2 свойства
// }

//  И мы указали, что _MenuWidgetRow - у него есть свойства --- MenuRowData data
//  ОН его в конструкторе принимает и дальше мы его используем data.icon и data.text
// Чтобы поставить иконку и текст 

//  И теперь мы когда создаем меню виджетов _MenuWidget(menuRow: menuRow) -- 31 строчка
// мы передаем туда menuRow

                //  Урок 3 



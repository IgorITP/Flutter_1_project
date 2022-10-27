import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> menuRow = [
    MenuRowData(Icons.favorite_border_outlined, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder_copy_outlined, 'Папка с чатами'),
  ];
  List<MenuRowData> secondmenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    MenuRowData(Icons.date_range_rounded, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];
  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Настройки"),
      ),
      body: Container(
        width: double.infinity,
        // мы обвернули нашу Колоку в Контейнер, чтобы воспользоваться функциями
        // Контейнера и растнуть наши элементы на всю длину
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: menuRow),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: secondmenuRow),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
// menuWIdget - принимает в себя список menuRow, тоесть список MenuRowData

  const _MenuWidget({super.key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
        // здесь она по нему проходится и преобразует каждый элемент из menuROw
        //  в какой-то другой элемент
        //  в замыкании мы получаем data и возвращаем строку
        // .toList - чтобы вэта функция преобразовалась в List
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          _AvatarWidget(),
          SizedBox(
            height: 30,
          ),
          _UserNameWidget(),
          SizedBox(
            height: 10,
          ),
          _UserPhoneWidget(),
          SizedBox(
            height: 10,
          ),
          _UserNickName(),
        ],
      ),
    );
  }
}

class _UserNickName extends StatelessWidget {
  const _UserNickName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "@Zoloto",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _PhoneWidget();
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "+7(961)281 18 81",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Igor<Zoloto> Zolotukhin",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}

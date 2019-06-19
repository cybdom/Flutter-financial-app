import 'package:flutter/material.dart';

class IconColors {
  static const Color send = Color(0xffecfaf8);
  static const Color transfer = Color(0xfffdeef5);
  static const Color passbook = Color(0xfffff4eb);
  static const Color more = Color(0xffeff1fe);
}

class IconImgs {
  static const String send = "assets/imgs/send.png";
  static const String transfer = "assets/imgs/transfer.png";
  static const String passbook = "assets/imgs/passbook.png";
  static const String more = "assets/imgs/more.png";
  static const String freeze = "assets/imgs/freeze.png";
  static const String unlock = "assets/imgs/unlock.png";
  static const String secret = "assets/imgs/secret.png";
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(backgroundColor: Color(0xffe7e9f0), fontFamily: 'Raleway'),
      home: Wallet(title: "My Wallet"),
    );
  }
}

class MyCards extends StatefulWidget {
  MyCards({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdee4eb),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 21.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey[300],
                      spreadRadius: 5.0),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(51),
                  bottomLeft: Radius.circular(51),
                ),
                color: Colors.white,
              ),
              child: Hero(
                tag: "card",
                child: InkWell(
                  child: CreditCardContainer(),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            CustomContainer(
              child: FittedBox(
                child: Row(
                  children: <Widget>[
                    CustomIconButton(
                      buttonImg: IconImgs.unlock,
                      buttonTitle: "UNLOCK PIN/CVV",
                      circleColor: IconColors.send,
                      onTap: () {},
                    ),
                    CustomIconButton(
                      buttonImg: IconImgs.freeze,
                      buttonTitle: "FREEZE CARD",
                      circleColor: Colors.lime[100],
                      onTap: () {},
                    ),
                    CustomIconButton(
                      buttonImg: IconImgs.secret,
                      buttonTitle: "SHOW SECRET CODE",
                      circleColor: Colors.pink[100],
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: CustomContainer(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.atm),
                          radius: 20,
                        ),
                        title: Text(
                          "ATM CARDLESS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        enabled: true,
                        onTap: () {},
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.location_on),
                          radius: 20,
                        ),
                        title: Text(
                          "ATM LOCATOR",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        enabled: true,
                        onTap: () {},
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.security),
                          radius: 20,
                        ),
                        title: Text(
                          "SECURITY CARD",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        enabled: true,
                        onTap: () {},
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.assessment),
                          radius: 20,
                        ),
                        title: Text(
                          "LIMITS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        enabled: true,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Wallet extends StatefulWidget {
  Wallet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdee4eb),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 21.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Container(
              height: 21,
              width: 21,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey[300],
                      spreadRadius: 5.0),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(51),
                  bottomLeft: Radius.circular(51),
                ),
                color: Colors.white,
              ),
              child: Hero(
                tag: "card",
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: CreditCardContainer(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return MyCards(title: "My Cards");
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            CustomContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomIconButton(
                    circleColor: IconColors.send,
                    buttonImg: "assets/imgs/send.png",
                    buttonTitle: "SEND",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    circleColor: IconColors.transfer,
                    buttonImg: "assets/imgs/transfer.png",
                    buttonTitle: "TRANSFER",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    circleColor: IconColors.passbook,
                    buttonImg: "assets/imgs/passbook.png",
                    buttonTitle: "PASSBOOK",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    circleColor: IconColors.more,
                    buttonImg: "assets/imgs/more.png",
                    buttonTitle: "MORE",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            CustomContainer(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Transactions",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      CustomRoundedButton(
                        buttonText: "More",
                        color: Colors.blue,
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      HistoryListTile(
                        iconColor: IconColors.transfer,
                        onTap: () {},
                        transactionAmount: "+\$210.00",
                        transactionIcon: IconImgs.transfer,
                        transactionName: "Amazigh Halzoun",
                        transactionType: "TRANSFER",
                      ),
                      HistoryListTile(
                        iconColor: IconColors.transfer,
                        onTap: () {},
                        transactionAmount: "-\$310.00",
                        transactionIcon: IconImgs.transfer,
                        transactionName: "Cybdom Tech",
                        transactionType: "TRANSFER",
                      ),
                      HistoryListTile(
                        iconColor: IconColors.send,
                        onTap: () {},
                        transactionAmount: "-\$210.00",
                        transactionIcon: IconImgs.send,
                        transactionName: "Wife",
                        transactionType: "SEND",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryListTile extends StatelessWidget {
  final Color iconColor;
  final String transactionName,
      transactionType,
      transactionAmount,
      transactionIcon;
  final GestureTapCallback onTap;
  const HistoryListTile({
    Key key,
    this.iconColor,
    this.transactionName,
    this.transactionType,
    this.transactionAmount,
    this.transactionIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        title: Text(transactionName),
        subtitle: Text(transactionType),
        trailing: Text(transactionAmount),
        leading: CircleAvatar(
          radius: 25,
          child: Image.asset(
            transactionIcon,
            height: 25,
            width: 25,
          ),
          backgroundColor: iconColor,
        ),
        enabled: true,
        onTap: onTap,
      ),
    );
  }
}

class CustomRoundedButton extends StatelessWidget {
  final Color color;
  final String buttonText;
  final GestureTapCallback onTap;
  CustomRoundedButton({
    @required this.color,
    @required this.buttonText,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 7.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            "More",
            style: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final String buttonTitle, buttonImg;
  final GestureTapCallback onTap;
  final Color circleColor;
  const CustomIconButton({
    @required this.circleColor,
    @required this.buttonTitle,
    @required this.buttonImg,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(5.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundColor: circleColor,
                child: Image.asset(
                  buttonImg,
                  height: 19,
                  width: 19,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                buttonTitle,
                overflow: TextOverflow.clip,
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreditCardContainer extends StatelessWidget {
  const CreditCardContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31, vertical: 21),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, color: Colors.red[200], offset: Offset(0, 5)),
        ],
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            Color(0xffff8964),
            Color(0xffff5d6e),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/imgs/chip.png",
                width: 51,
                height: 51,
              ),
            ),
            Text(
              "4000 1234 5678 9010",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "VALID FROM: ",
                      style: TextStyle(color: Colors.white, fontSize: 11.0),
                    ),
                    Text(
                      "09/21",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "VALID THRU: ",
                      style: TextStyle(color: Colors.white, fontSize: 11.0),
                    ),
                    Text(
                      "09/23",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "AMAZIGH HALZOUN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  CustomContainer({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 21),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.grey[300],
            spreadRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(41),
        color: Colors.white,
      ),
      child: child,
    );
  }
}

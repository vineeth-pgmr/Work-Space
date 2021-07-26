import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

class QuestionANswerspage extends StatefulWidget {
  const QuestionANswerspage({Key? key}) : super(key: key);

  @override
  _QuestionANswerspageState createState() => _QuestionANswerspageState();
}

class _QuestionANswerspageState extends State<QuestionANswerspage> {
  /// Text editiing controller for question text field
  TextEditingController _questionFieldController = TextEditingController();

  /// Handle th eprocess of getting a yes or no responce

  _handleGetAnswer() async {
    try {
      http.Response response = await http.get('https://yesno.wft/api');
      print(response.statusCode);
    } catch (err, stacktrace) {
      print(err);
      print(stacktrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('I Know Everyting'),
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 0.5 * MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Ask a Question',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: _handleGetAnswer,
                  child: Text(
                    'Get Answer',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

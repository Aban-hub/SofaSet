import 'package:flutter/material.dart';
import 'package:kundenberatung/models/feature_model.dart';
import 'package:kundenberatung/vivek/checkBoxCard.dart';

class FeatureScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FeatureScreenState();
}

class FeatureScreenState extends State<FeatureScreen> {
  String featureNotesTitle = "Nur drel Funktionen wahlbar";
  String featureHint = "Notizen";

  Color colorGrey = Colors.grey[500];
  Color colorGreyDark = Colors.grey[800];

  List<FeatureModel> featuresList = new List<FeatureModel>();

  @override
  void initState() {
    super.initState();
    featuresList.add(FeatureModel("Feature 1", false));
    featuresList.add(FeatureModel("Feature 2", false));
    featuresList.add(FeatureModel("Feature 3", false));
    featuresList.add(FeatureModel("Feature 4", false));
    featuresList.add(FeatureModel("Feature 5", false));
    featuresList.add(FeatureModel("Feature 6", false));
    featuresList.add(FeatureModel("Feature 7", false));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/images/ic_background_opacity.jpeg"),
                fit: BoxFit.cover,
              )),
          child: Container(
            child: Column(
              children: [

                Expanded(child: _getFeaturesListView()),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "($featureNotesTitle)",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: colorGrey,
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 5,
                      maxLines: 10,
                      style: new TextStyle(
                        fontSize: 16,
                        color: colorGreyDark,
                      ),
                      decoration: InputDecoration(
                        hintText: featureHint,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getFeaturesListView() {
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            ),
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            ),
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            )
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            ),
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            ),
            Expanded(
              child: Container(
                height: 50.0,
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: CheckboxListTile(
                        title: Text('${featuresList[0].featureName}'),
                        value: featuresList[0].isSelected,
                        onChanged: (bool value) {
                          setState(() {
                            featuresList[0].isSelected = value;
                          });
                        })),
              ),
            )
          ],
        ),

      ],
    );





    /*  GridView.builder(
        shrinkWrap: true,
        itemCount: featuresList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return
            CheckBoxCard(
                checkBoxTileTitle: '${featuresList[index].featureName}',
                value: featuresList[index].isSelected,
                onChanged: (value) {
                  setState(() {
                    featuresList[index].isSelected = value;
                  });
                });



        });*/
  }
}

import 'package:flutter/material.dart';
import 'package:kundenberatung/models/feature_model.dart';
import 'package:kundenberatung/vivek/checkbox_multi_select.dart';

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
    featuresList.add(FeatureModel("Feature 8", false));
    featuresList.add(FeatureModel("Feature 9", false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Expanded(child: getFeatureList()),
          SizedBox(
            width: double.infinity,
            child: Text(
              "($featureNotesTitle)",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14.0,
                color: colorGrey,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    cursorColor: Color(0xFF2A2AC0),
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'edfnienfiowsemf',
                        hintStyle: TextStyle(fontSize: 16)),
                  ),
                ),
                CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xff002646),
                    child: Image.asset(
                      "assets/images/ic_edit.png",
                      height: 15,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget getFeatureList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GridView.builder(
          itemCount: featuresList.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 3)),
          itemBuilder: (BuildContext context, int index) {
            return Wrap(
              children: [
                CheckBoxMultiSelect(
                    checkBoxTileTitle: '${featuresList[index].featureName}',
                    value: featuresList[index].isSelected,
                    onChanged: (bool value) {
                      setState(() {
                        featuresList[index].isSelected = value;
                      });
                    }),
              ],
            );
          }),
    );
  }
}

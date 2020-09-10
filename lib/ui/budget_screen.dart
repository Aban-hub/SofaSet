import 'package:flutter/material.dart';
import 'package:kundenberatung/models/feature_model.dart';
import 'package:kundenberatung/widgets/checkbox_multi_select.dart';
import 'package:kundenberatung/widgets/ui_designs.dart';

class BudgetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BudgetScreenState();
}

class BudgetScreenState extends State<BudgetScreen> {
  TextEditingController _textController = TextEditingController();
  bool _checked = true;

  List<FeatureModel> featuresList = new List<FeatureModel>();

  @override
  void initState() {
    super.initState();
    featuresList.add(FeatureModel("0 - 500 €", false));
    featuresList.add(FeatureModel("500 - 1000 €", false));
    featuresList.add(FeatureModel("1000 - 1500 €", false));
    featuresList.add(FeatureModel("1500 - 2000 €", false));
    featuresList.add(FeatureModel("2000 - 2500 €", false));
    featuresList.add(FeatureModel("2500 - 3000 €", false));
    featuresList.add(FeatureModel("3000 - 3500 €", false));
    featuresList.add(FeatureModel("4000 - 5000 €", false));
    featuresList.add(FeatureModel("mehr als 5000 €", false));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
      child: Column(
        children: [
          Expanded(child: getFeatureList()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: UIDesigns.myButtonWithBorder("keine Angaben", () {}),
            ),
          ),
          TextField(
              maxLines: 7,
              autofocus: false,
              style: new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Notizen',
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(20),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(20),
                ),
              )),
        ],
      ),
    );
  }

  Widget getFeatureList() {
    return GridView.builder(
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
        });
  }
}

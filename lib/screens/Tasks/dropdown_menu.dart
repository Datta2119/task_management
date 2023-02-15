import 'package:flutter/material.dart';
import 'package:task_management/screens/Tasks/Model/dropdown_division_model.dart';

import 'Model/data.dart';
import 'Model/dropdown_district_model.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  var _divisionChoice;
  var _districtChoice;

  List<District> _districtList = [];
  List<Division> _divisionList = [];

  @override
  void initState() {
    // TODO: implement initState
    _divisionList.clear();
    _divisionList.addAll(divisionList);
    _districtList.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: DropdownButton(
              hint: const Text('Select Division'),
              dropdownColor: Colors.grey[300],
              isExpanded: true,
              underline: const SizedBox(),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 40,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
              value: _divisionChoice,
              onChanged: (selectedIndex){
                print(selectedIndex);
                setState(() {
                  _divisionChoice = selectedIndex;
                });
                var division = _divisionList[(selectedIndex as int) - 1];
                var districts = districtList.where((element) => element.divisionId == division.divisionId);
                setState(() {
                  _districtList.clear();
                  _districtList.addAll(districts);
                });
              },
              items: _divisionList.map((divisionValue){
                return DropdownMenuItem(
                  value: divisionValue.divisionId,
                  child: Text(divisionValue.divisionName),
                );
              }).toList(),
            ),
          ),
        ),

        const SizedBox(height: 20.0,),

        Visibility(
          visible: _districtList.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: DropdownButton(
                hint: const Text('Select District'),
                dropdownColor: Colors.grey[300],
                isExpanded: true,
                underline: const SizedBox(),
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 40,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                value: _districtChoice,
                onChanged: (newValue){
                  setState(() {
                    _districtChoice = newValue;
                  });
                },
                items: _districtList.map((district){
                  return DropdownMenuItem(
                    value: district,
                    child: Text(district.districtName),
                 );
                }).toList(),
              ),
            ),
          ),
        )
      ],
    );
  }
}

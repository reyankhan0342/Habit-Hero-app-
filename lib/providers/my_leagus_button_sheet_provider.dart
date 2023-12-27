import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:image_picker/image_picker.dart';


class MyLeagusButtonSheetProvider extends ChangeNotifier {

  ///video player work


  /// calender provider work
  Set<DateTime> selectedDays = {};

  bool isDaySelected(DateTime date) {
    return selectedDays.contains(date);
  }

  EventList<Event> markedDatesMap = EventList<Event>(events: {});

  void handleDayPressed(DateTime date, List<Event> events) {
    if (selectedDays.contains(date)) {
      selectedDays.remove(date);
    } else {
      selectedDays.add(date);
    }
    _updateMarkedDatesMap();
    notifyListeners(); // Update marked dates whenever the selection is changed

  }

  void _updateMarkedDatesMap() {
    Map<DateTime, List<Event>> eventsMap = {};
    for (var date in selectedDays) {
      eventsMap[date] = [
        Event(
          date: date,
          icon: Container(
            decoration: const BoxDecoration(
              color: Color(
                  0xff39E272), // Set green color for selected date background
              shape: BoxShape.circle,
            ),
          ),
        ),
      ];
    }


    markedDatesMap = EventList<Event>(events: eventsMap);

    notifyListeners();
  }


  /// video screen work


  bool inviteTap = false;
  bool mediumSelected = false;

  bool seleteditems = false;

  var language = 'CANGE';
  var flage = 'assets/images/img_25.png';

  /// selected  favorite icon like

  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  ///selected  image show green contanor on top
  List<int> _selectedGreenContanor = [];

  List<int> get selectedGreenContanor => _selectedGreenContanor;
  bool showGreenContainer = false;

  /// change language
  bool seletedLanguage1 = false;
  bool seletedLanguage2 = false;
  bool seletedLanguage3 = false;

  /// edit avatar profile image
  String? profileImage;
  File? _Image;

  File? get Image => _Image;
  final picker = ImagePicker();
  bool dimentContanor=false;

  bool inviteContanor=false;
  /// edit password obscureText profile buttomsheet edit profile
  bool obscureText = true;

  List<String> invitees = [

    'abbas',
    'navaz',
    'zesshan',
    'akbara ali',
    'khan zada ',
  ]; // Sample invitees list
  List<String> filteredInvitees = [];

  List leagusCategres = [
    'All',
    'Business',
    'Flutter Developer',

  ];
  List seletedCatagres = [
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',
    'All',
    'Business',
    'Flutter Developer',

  ];

  List durationList = [
    '10 days',
    '20 days',
    ' 30  days',

  ];

  List experinceList = [
    '1 year',
    '2 year',
    ' 3year',

  ];

  String? countryValue;
  String? categtesValue;
  String? durationvalue;
  String? experinceValue;
  bool duration = true;
  bool experince = false;



  void setLegusCategory(String value) {
    countryValue = value;
    notifyListeners();
  }

  void setseletedCategory(String value) {
    categtesValue = value;
    notifyListeners();
  }

  void setdurationCategory(String value) {
    durationvalue = value;
    notifyListeners();
  }

  void setexperienceCategory(String value) {
    experinceValue = value;
    notifyListeners();
  }

  leguageDuration() {
    duration = true;
    experince = false;
    notifyListeners();
  }

  leguagExperince() {
    duration = false;
    experince = true;
    notifyListeners();
  }

  void filterInvitees(String query) {
    filteredInvitees = invitees
        .where((invitee) =>
        invitee.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }


  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  void meiumButton() {
    mediumSelected = !mediumSelected;
    notifyListeners();
  }


  void toggleGreenContainer() {
    showGreenContainer=true;
    notifyListeners();
  }


  void langugeSeleted1() {
    seletedLanguage1 = true;
    seletedLanguage2 = false;
    seletedLanguage3 = false;
    notifyListeners();
  }

  void langugeSeleted2() {
    seletedLanguage1 = false;
    seletedLanguage2 = true;
    seletedLanguage3 = false;
    notifyListeners();
  }

  void langugeSeleted3() {
    seletedLanguage1 = false;
    seletedLanguage2 = false;
    seletedLanguage3 = true;
    notifyListeners();
  }


  Future pickImageGallery(BuildContext context) async {
    final pickedImage = await picker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);

    if (pickedImage != null) {
      _Image = File(pickedImage.path);
      notifyListeners();
    }
  }


  void dimentcontanor()
  {
    dimentContanor=!dimentContanor;
    inviteContanor=false;
    notifyListeners();
  }

  void invitecontanor()
  {
    inviteContanor=!inviteContanor;
    dimentContanor=false;
    notifyListeners();

  }





}
import 'dropdown_district_model.dart';
import 'dropdown_division_model.dart';
import 'dropdown_upazila_model.dart';

List<Division> divisionList = <Division>[
  Division(1, "Barishal"),
  Division(2, "Chattogram"),
  Division(3, "Dhaka"),
  Division(4, "Khulna"),
  Division(5, "Rajshahi"),
  Division(6, "Rangpur"),
  Division(7, "Mymensingh"),
  Division(8, "Sylhet"),
];

List<District> districtList = <District> [
  // Barishal Division
  District(1, "Jhalokathi", 1),
  District(2, "Patuakhali", 1),
  District(3, "Pirojpur", 1),
  District(4, "Barishal", 1),
  District(5, "Bhola", 1),
  District(6, "Borguna", 1),

  // Chattogram Division
  District(1, "Comilla", 2),
  District(2, "Feni", 2),
  District(3, "Brammanbariya", 2),
  District(4, "Rangamati", 2),
  District(1, "Noakhali", 2),
  District(1, "Chandpur", 2),
  District(1, "Lokkhipur", 2),
  District(1, "Chattogram", 2),
  District(1, "Cox's Bazar", 2),
  District(1, "Khagrachori", 2),
  District(1, "Bandarban", 2),

  // Dhaka Division
  District(1, "Narsingdi", 3),
  District(2, "Gazipur", 3),
  District(3, "Sariatpur", 3),
  District(4, "Narayanganj", 3),
  District(5, "Tangail", 3),
  District(6, "Kisorganj", 3),
  District(7, "Manikganj", 3),
  District(8, "Dhaka", 3),
  District(9, "Munsiganj", 3),
  District(10, "Rajbari", 3),
  District(11, "Madaripur", 3),
  District(12, "Gopalganj", 3),
  District(13, "Faridpur", 3),

  // Khulna Division
  District(1, "Jessore", 4),
  District(2, "Satkhira", 4),
  District(3, "Meherpur", 4),
  District(4, "Narail", 4),
  District(5, "Chuadanga", 4),
  District(6, "Kushtia", 4),
  District(7, "Magura", 4),
  District(8, "Khulna", 4),
  District(9, "Bagherhat", 4),
  District(10, "Jhinaidah", 4),

  // Rajshahi Division
  District(1, "Sirajganj", 5),
  District(2, "Pabna", 5),
  District(3, "Bogra", 5),
  District(4, "Rajshahi", 5),
  District(5, "Nator", 5),
  District(6, "Jaipurhat", 5),
  District(7, "Chapainawabganj", 5),
  District(8, "Naoga", 5),

  // Rangpur Division
  District(1, "Panchagarh", 6),
  District(2, "Dinajpur", 6),
  District(3, "Lalmohirhat", 6),
  District(4, "Nilphamari", 6),
  District(5, "Gaibandha", 6),
  District(6, "Thakurgao", 6),
  District(7, "Rangpur", 6),
  District(8, "Kurigram", 6),

  // Mymensingh Division
  District(1, "Sherpur", 7),
  District(2, "Mymensingh", 7),
  District(3, "Jamalpur", 7),
  District(4, "Netrokona", 7),

  // Sylhet Division
  District(1, "Sylhet", 8),
  District(2, "Mowlobhibazar", 8),
  District(3, "Hobiganj", 8),
  District(4, "Sunamganj", 8),

];

List<Upazila> upazilaList = <Upazila>[
// ????????????????????? ?????????, ????????????????????????, ?????????????????????
  Upazila(
    upazilaId: 1,
    upazilaName: "Jhalokathi Sadar",
    divisionId: 1,
    divisionName: "Barishal",
    districtId: 1,
    districtName: "Jhalokathi"
  ),

  Upazila(
    upazilaId: 2,
    upazilaName: "Kathaliya",
    divisionId: 1,
    divisionName: "Barishal",
    districtId: 1,
    districtName: "Jhalokathi"
  ),

  Upazila(
    upazilaId: 3,
    upazilaName: "Rajapur",
    divisionId: 1,
    divisionName: "Barishal",
    districtId: 1,
    districtName: "Jhalokathi"
  ),

  // District(2, "Patuakhali", 1),
  //	???????????????, ??????????????????????????? ?????????, ?????????????????????
  Upazila(
      upazilaId: 1,
      upazilaName: "Baufol",
      divisionId: 1,
      divisionName: "Barishal",
      districtId: 2,
      districtName: "Patuakhali"
  ),

  Upazila(
      upazilaId: 2,
      upazilaName: "Patuakhali Sadar",
      divisionId: 1,
      divisionName: "Barishal",
      districtId: 2,
      districtName: "Patuakhali"
  ),

  Upazila(
      upazilaId: 3,
      upazilaName: "Golachipa",
      divisionId: 1,
      divisionName: "Barishal",
      districtId: 2,
      districtName: "Patuakhali"
  ),


  // District(3, "Pirojpur", 1),
  // District(4, "Barishal", 1),
  // District(5, "Bhola", 1),
  // District(6, "Borguna", 1),
];
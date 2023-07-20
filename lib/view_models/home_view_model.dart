import 'package:flutter/material.dart';
import 'package:vote/models/poll.dart';
import 'package:vote/models/user.dart';

class HomeViewModel with ChangeNotifier {
  List<Poll> toVotePolls = [
    Poll(
        createdBy: User(id: "1123",regionId: "88833323",number: "555332"),
        createdAt: "5 دقائق",
        category: "مستندات",
        image: "https://plus.unsplash.com/premium_photo-1689751073578-8d0321bf1187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80",
        title: "الميثاق الدستوري الثالث",
        brief: "في هذا التصويت سنتحصل على امكانية نقاش وفرد وقت محدد للتصويت علي ميثاق سلطة الشعب",
        number: "55082395325",
        options: [],
        voters: []),
    Poll(
        createdBy: User(id: "32533",regionId: "32553212",number: "33"),
        createdAt: "5 دقائق",
        category: "مستندات",
        image: "https://plus.unsplash.com/premium_photo-1689607810255-ff7cb8730382?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
        title: "الميثاق الدستوري الثالث",
        brief: "في هذا التصويت سنتحصل على امكانية نقاش وفرد وقت محدد للتصويت علي ميثاق سلطة الشعب",
        number: "55082395325",
        options: [],
        voters: []),
    Poll(
        createdBy: User(id: "3253", regionId: "38923532", number: "23523"),
        createdAt: "5 دقائق",
        category: "مستندات",
        image: "https://plus.unsplash.com/premium_photo-1689609949815-bdb46c0f2397?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
        title: "الميثاق الدستوري الثالث",
        brief: "في هذا التصويت سنتحصل على امكانية نقاش وفرد وقت محدد للتصويت علي ميثاق سلطة الشعب",
        number: "55082395325",
        options: [],
        voters: []),
  ];

  static init() {}
}

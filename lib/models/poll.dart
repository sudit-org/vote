import 'package:vote/models/option.dart';
import 'package:vote/models/user.dart';
import 'package:vote/models/vote.dart';

class Poll {
  final String category;
  final String createdAt;
  final String title;
  final String number;
  final String image;
  final String brief;
  final List<PollOption> options;
  final List<PollVote> voters;
  final User createdBy;
  Poll({required this.category, required this.createdAt, required this.title, required this.options, required this.voters, required this.brief,required this.image, required this.number, required this.createdBy});
}

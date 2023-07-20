import 'package:vote/models/option.dart';
import 'package:vote/models/poll.dart';
import 'package:vote/models/user.dart';

class PollVote {
  User user;
  PollOption pollOption;

  PollVote(this.user, this.pollOption);
}

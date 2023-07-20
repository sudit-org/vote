
class PollOption {
  final String optionText;
  int voteCount;

  PollOption({required this.optionText, this.voteCount = 0});

  void vote() {
    voteCount++;
  }
}
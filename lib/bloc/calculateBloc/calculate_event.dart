abstract class CalculateEvent {}

class AddEvent extends CalculateEvent{
  final int first;
  final int second;

  AddEvent(this.first, this.second);
}

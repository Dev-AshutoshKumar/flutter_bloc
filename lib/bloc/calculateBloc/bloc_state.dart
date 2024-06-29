abstract class CalculateState {}

class InitState extends CalculateState {}

class AddState extends CalculateState {
  final int total;

  AddState(this.total);
}

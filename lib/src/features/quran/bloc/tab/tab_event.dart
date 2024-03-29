part of 'tab_bloc.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();
}

class ToggleTab extends TabEvent {
  final int firstTab;

  const ToggleTab(this.firstTab);

  @override
  List<Object> get props => [firstTab];
}

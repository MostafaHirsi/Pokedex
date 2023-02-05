part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class CommitSearchEvent extends SearchEvent {
  final String searchTerms;

  CommitSearchEvent(this.searchTerms);

  @override
  List<Object> get props => [searchTerms];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_worklist.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WorklistController on WorklistControllerBase, Store {
  final _$activityAtom = Atom(name: 'WorklistControllerBase.activity');

  @override
  String get activity {
    _$activityAtom.reportRead();
    return super.activity;
  }

  @override
  set activity(String value) {
    _$activityAtom.reportWrite(value, super.activity, () {
      super.activity = value;
    });
  }

  final _$activitiesAtom = Atom(name: 'WorklistControllerBase.activities');

  @override
  ObservableList<String> get activities {
    _$activitiesAtom.reportRead();
    return super.activities;
  }

  @override
  set activities(ObservableList<String> value) {
    _$activitiesAtom.reportWrite(value, super.activities, () {
      super.activities = value;
    });
  }

  final _$WorklistControllerBaseActionController =
      ActionController(name: 'WorklistControllerBase');

  @override
  void addWork() {
    final _$actionInfo = _$WorklistControllerBaseActionController.startAction(
        name: 'WorklistControllerBase.addWork');
    try {
      return super.addWork();
    } finally {
      _$WorklistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activity: ${activity},
activities: ${activities}
    ''';
  }
}

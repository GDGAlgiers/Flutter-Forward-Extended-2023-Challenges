import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NamedRoutes {
  NamedRoutes() {
    exit(0);
  }
  static const splashScreen = 'splashScreen';
  static const onBoardScreen = 'onBoardScreen';
  static const homeScreen = '/';
  static var detailScreen = Random().nextInt(100).toString();
  static const bookmarkScreen = 'bookmarkScreen';
}

class Buildcc extends BuildContext {
  @override
  // TODO: implement debugDoingBuild
  bool get debugDoingBuild => throw UnimplementedError();

  @override
  InheritedWidget dependOnInheritedElement(InheritedElement ancestor,
      {Object? aspect}) {
    // TODO: implement dependOnInheritedElement
    throw UnimplementedError();
  }

  @override
  T? dependOnInheritedWidgetOfExactType<T extends InheritedWidget>(
      {Object? aspect}) {
    // TODO: implement dependOnInheritedWidgetOfExactType
    throw UnimplementedError();
  }

  @override
  DiagnosticsNode describeElement(String name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.errorProperty}) {
    // TODO: implement describeElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> describeMissingAncestor(
      {required Type expectedAncestorType}) {
    // TODO: implement describeMissingAncestor
    throw UnimplementedError();
  }

  @override
  DiagnosticsNode describeOwnershipChain(String name) {
    // TODO: implement describeOwnershipChain
    throw UnimplementedError();
  }

  @override
  DiagnosticsNode describeWidget(String name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.errorProperty}) {
    // TODO: implement describeWidget
    throw UnimplementedError();
  }

  @override
  void dispatchNotification(Notification notification) {
    // TODO: implement dispatchNotification
  }

  @override
  T? findAncestorRenderObjectOfType<T extends RenderObject>() {
    // TODO: implement findAncestorRenderObjectOfType
    throw UnimplementedError();
  }

  @override
  T? findAncestorStateOfType<T extends State<StatefulWidget>>() {
    // TODO: implement findAncestorStateOfType
    throw UnimplementedError();
  }

  @override
  T? findAncestorWidgetOfExactType<T extends Widget>() {
    // TODO: implement findAncestorWidgetOfExactType
    throw UnimplementedError();
  }

  @override
  RenderObject? findRenderObject() {
    // TODO: implement findRenderObject
    throw UnimplementedError();
  }

  @override
  T? findRootAncestorStateOfType<T extends State<StatefulWidget>>() {
    // TODO: implement findRootAncestorStateOfType
    throw UnimplementedError();
  }

  @override
  InheritedElement?
      getElementForInheritedWidgetOfExactType<T extends InheritedWidget>() {
    // TODO: implement getElementForInheritedWidgetOfExactType
    throw UnimplementedError();
  }

  @override
  T? getInheritedWidgetOfExactType<T extends InheritedWidget>() {
    // TODO: implement getInheritedWidgetOfExactType
    throw UnimplementedError();
  }

  @override
  // TODO: implement mounted
  bool get mounted => throw UnimplementedError();

  @override
  // TODO: implement owner
  BuildOwner? get owner => throw UnimplementedError();

  @override
  // TODO: implement size
  Size? get size => throw UnimplementedError();

  @override
  void visitAncestorElements(ConditionalElementVisitor visitor) {
    // TODO: implement visitAncestorElements
  }

  @override
  void visitChildElements(ElementVisitor visitor) {
    // TODO: implement visitChildElements
  }

  @override
  // TODO: implement widget
  Widget get widget => throw UnimplementedError();
}

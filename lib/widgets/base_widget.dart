import 'package:flutter/material.dart';

class BaseWidgt <T extends ChangeNotifier> extends StatefulWidget {

  final Function(BuildContext) builder;
  final Function(T) onModeReady;
  final T viewModel;
  BaseWidgt({Key key ,this.builder,this.onModeReady ,this.viewModel}) : super(key: key);

  @override
  _BaseWidgtState<T> createState() => _BaseWidgtState<T>();
}

class _BaseWidgtState <T extends ChangeNotifier> extends State<BaseWidgt<T>> {
  T _model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _model = widget.viewModel;
    if(widget.viewModel != null){
      widget.onModeReady(_model);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
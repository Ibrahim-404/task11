class Project {
  String tital;
  int price;
  DateTime receivingData, deadline;
  bool _isUiDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;
  bool _isProjectDone = false;

  Project({
    required this.tital,
    required this.price,
    required this.receivingData,
    required this.deadline,
  });
  get isUiDone => this.isUiDone;
  get isFlutterDone => this.isFlutterDone;
  get isBackendDone => this.isBackendDone;
  get isProjectDone => this.isProjectDone;

  void uiFinished() {
    _isUiDone = true;
    if (isFlutterDone == true &&
        isProjectDone == true &&
        isProjectDone == true) {
      _isProjectDone = true;
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;
    if (isBackendDone == true && isFlutterDone == true && isUiDone == true) {
      _isProjectDone = true;
    }
  }

  void baackendFinished() {
    _isBackendDone = true;
    if (isBackendDone == true && isFlutterDone == true && isUiDone == true) {
      _isProjectDone = true;
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Project{project tital:$tital, project price:$price,receiving Data:$receivingData,deadline project:$deadline}';
  }
}

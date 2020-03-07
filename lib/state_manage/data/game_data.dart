class GameJson {
  String playUser;
  List<TaskList> taskList;

  GameJson({this.playUser, this.taskList});

  GameJson.fromJson(Map<String, dynamic> json) {
    playUser = json['play_user'];
    if (json['task_list'] != null) {
      taskList = new List<TaskList>();
      json['task_list'].forEach((v) {
        taskList.add(new TaskList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['play_user'] = this.playUser;
    if (this.taskList != null) {
      data['task_list'] = this.taskList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TaskList {
  String plotName;
  int plotId;
  String summary;
  String route;
  List<String> image;
  Condition condition;
  List<PlotList> plotList;

  TaskList(
      {this.plotName,
      this.plotId,
      this.summary,
      this.route,
      this.image,
      this.condition,
      this.plotList});

  TaskList.fromJson(Map<String, dynamic> json) {
    plotName = json['plot_name'];
    plotId = json['plot_id'];
    summary = json['summary'];
    route = json['route'];
    image = json['image'].cast<String>();
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    if (json['plot_list'] != null) {
      plotList = new List<PlotList>();
      json['plot_list'].forEach((v) {
        plotList.add(new PlotList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plot_name'] = this.plotName;
    data['plot_id'] = this.plotId;
    data['summary'] = this.summary;
    data['route'] = this.route;
    data['image'] = this.image;
    if (this.condition != null) {
      data['condition'] = this.condition.toJson();
    }
    if (this.plotList != null) {
      data['plot_list'] = this.plotList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Condition {
  List<int> infectionNum;
  List<int> joyNum;
  List<int> influenceNum;
  List<int> healthNum;
  List<int> bodyNum;

  Condition(
      {this.infectionNum,
      this.joyNum,
      this.influenceNum,
      this.healthNum,
      this.bodyNum});

  Condition.fromJson(Map<String, dynamic> json) {
    infectionNum = json['infection_num'].cast<int>();
    joyNum = json['joy_num'].cast<int>();
    influenceNum = json['influence_num'].cast<int>();
    healthNum = json['health_num'].cast<int>();
    bodyNum = json['body_num'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['infection_num'] = this.infectionNum;
    data['joy_num'] = this.joyNum;
    data['influence_num'] = this.influenceNum;
    data['health_num'] = this.healthNum;
    data['body_num'] = this.bodyNum;
    return data;
  }
}

class PlotList {
  String background;
  List<String> part;
  String chooseTitle;
  List<Choose> choose;
  String route;

  PlotList(
      {this.background, this.part, this.chooseTitle, this.choose, this.route});

  PlotList.fromJson(Map<String, dynamic> json) {
    background = json['background'];
    part = json['part'].cast<String>();
    chooseTitle = json['choose_title'];
    if (json['choose'] != null) {
      choose = new List<Choose>();
      json['choose'].forEach((v) {
        choose.add(new Choose.fromJson(v));
      });
    }
    route = json['route'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['background'] = this.background;
    data['part'] = this.part;
    data['choose_title'] = this.chooseTitle;
    if (this.choose != null) {
      data['choose'] = this.choose.map((v) => v.toJson()).toList();
    }
    data['route'] = this.route;
    return data;
  }
}

class Choose {
  String option;
  String toRoute;
  List<String> lastPart;
  EffectMe effectMe;
  List<EffectAll> effectAll;

  Choose(
      {this.option,
      this.toRoute,
      this.lastPart,
      this.effectMe,
      this.effectAll});

  Choose.fromJson(Map<String, dynamic> json) {
    option = json['option'];
    toRoute = json['to_route'];
    lastPart = json['last_part'].cast<String>();
    effectMe = json['effect_me'] != null
        ? new EffectMe.fromJson(json['effect_me'])
        : null;
    if (json['effect_all'] != null) {
      effectAll = new List<EffectAll>();
      json['effect_all'].forEach((v) {
        effectAll.add(new EffectAll.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option'] = this.option;
    data['to_route'] = this.toRoute;
    data['last_part'] = this.lastPart;
    if (this.effectMe != null) {
      data['effect_me'] = this.effectMe.toJson();
    }
    if (this.effectAll != null) {
      data['effect_all'] = this.effectAll.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EffectMe {
  int health;
  int strength;
  int influence;

  EffectMe({this.health, this.strength, this.influence});

  EffectMe.fromJson(Map<String, dynamic> json) {
    health = json['health'];
    strength = json['strength'];
    influence = json['influence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['health'] = this.health;
    data['strength'] = this.strength;
    data['influence'] = this.influence;
    return data;
  }
}

class EffectAll {
  String mathName;
  int param;

  EffectAll({this.mathName, this.param});

  EffectAll.fromJson(Map<String, dynamic> json) {
    mathName = json['math_name'];
    param = json['param'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['math_name'] = this.mathName;
    data['param'] = this.param;
    return data;
  }
}

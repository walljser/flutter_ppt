import 'dart:html';

class PPTAdsModel {
  List<AdItem> items;
}

class AdItem {}

class AdPlace {
  int id;
  String name;
  int type;
  String recommendObjectId;
  int adSpaceId;
  String beginDate;
  String endDate;
  String dayOfWeeks;
  int showCount;
  int dayLimit;
  int effectType;
  String h5Content;
  String picContent;
  String link;
  int priority;
  int status;
  String createTime;
  String updateTime;

  AdPlace({
    this.id,
    this.name,
    this.type,
    this.recommendObjectId,
    this.adSpaceId,
    this.beginDate,
    this.endDate,
    this.dayLimit,
    this.dayOfWeeks,
    this.showCount,
    this.effectType,
    this.h5Content,
    this.picContent,
    this.link,
    this.priority,
    this.status,
    this.createTime,
    this.updateTime,
  });
}

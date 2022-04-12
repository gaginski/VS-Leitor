import 'package:floor/floor.dart';

class EntityBase{
  EntityBase(this.sequence, this.updateDate, this.createdDate);


  @PrimaryKey(autoGenerate: true)
  int sequence;
  String createdDate;
  String updateDate;
}
import 'package:hive/hive.dart';

part 'nota_model.g.dart';

@HiveType(typeId: 0)
class NotaModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  String date;
  @HiveField(3)
  int color;
  NotaModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}

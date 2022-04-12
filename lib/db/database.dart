import 'package:floor/floor.dart';
import 'package:teste/src/Entities/Product.dart';

part 'database.g.dart';

@Database(version: 1, entities:[Product])
abstract class AppDatabase extends FloorDatabase{
}
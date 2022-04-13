import 'dart:async';
import 'package:floor/floor.dart';
import 'package:teste/src/Entities/Product.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import '../src/Repository/ProductRepositoryDao.dart';

part 'database.g.dart';

@Database(version: 1, entities:[Product])
abstract class AppDatabase extends FloorDatabase{
  ProductRepositoryDao  get productRepositoryDao ;
}
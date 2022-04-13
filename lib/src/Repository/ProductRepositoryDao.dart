import 'package:floor/floor.dart';

import '../Entities/Product.dart';

@dao
abstract class ProductRepositoryDao{
  @Query("Select * from Product where sequence = :sequence")
  Future<Product?> getBySequence(int sequence);

  @Query("Select * from Product")
  Future<List<Product>> getAll();

  @insert
  Future<int> insertItem(Product prod);

  @update
  Future<int> updateItem(Product prod);

  @delete
  Future<int> deleteItem(Product prod);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductRepositoryDao? _productRepositoryDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Product` (`sequence` INTEGER PRIMARY KEY AUTOINCREMENT, `id` INTEGER, `nome` TEXT, `descricao` TEXT, `gtin` TEXT, `ean` TEXT, `imagemProduto` TEXT, `preco` TEXT, `precoMedio` TEXT, `precoMaximo` TEXT, `precoMinimo` TEXT, `largura` TEXT, `altura` TEXT, `comprimento` TEXT, `pesoLiquido` TEXT, `pesoBruto` TEXT, `imagemCodigoBarras` TEXT, `marcaNome` TEXT, `imagemMarca` TEXT, `gpcCodigo` TEXT, `gpcDescricao` TEXT, `tipoEmbalagem` TEXT, `quantidadeEmbalagem` TEXT, `ncmCodigo` TEXT, `ncmDescricao` TEXT, `cestCodigo` TEXT, `cestDescricao` TEXT, `fabricanteNome` TEXT, `baseOrigem` TEXT, `dataCriacao` TEXT, `dataAtualizacao` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductRepositoryDao get productRepositoryDao {
    return _productRepositoryDaoInstance ??=
        _$ProductRepositoryDao(database, changeListener);
  }
}

class _$ProductRepositoryDao extends ProductRepositoryDao {
  _$ProductRepositoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _productInsertionAdapter = InsertionAdapter(
            database,
            'Product',
            (Product item) => <String, Object?>{
                  'sequence': item.sequence,
                  'id': item.id,
                  'nome': item.nome,
                  'descricao': item.descricao,
                  'gtin': item.gtin,
                  'ean': item.ean,
                  'imagemProduto': item.imagemProduto,
                  'preco': item.preco,
                  'precoMedio': item.precoMedio,
                  'precoMaximo': item.precoMaximo,
                  'precoMinimo': item.precoMinimo,
                  'largura': item.largura,
                  'altura': item.altura,
                  'comprimento': item.comprimento,
                  'pesoLiquido': item.pesoLiquido,
                  'pesoBruto': item.pesoBruto,
                  'imagemCodigoBarras': item.imagemCodigoBarras,
                  'marcaNome': item.marcaNome,
                  'imagemMarca': item.imagemMarca,
                  'gpcCodigo': item.gpcCodigo,
                  'gpcDescricao': item.gpcDescricao,
                  'tipoEmbalagem': item.tipoEmbalagem,
                  'quantidadeEmbalagem': item.quantidadeEmbalagem,
                  'ncmCodigo': item.ncmCodigo,
                  'ncmDescricao': item.ncmDescricao,
                  'cestCodigo': item.cestCodigo,
                  'cestDescricao': item.cestDescricao,
                  'fabricanteNome': item.fabricanteNome,
                  'baseOrigem': item.baseOrigem,
                  'dataCriacao': item.dataCriacao,
                  'dataAtualizacao': item.dataAtualizacao
                }),
        _productUpdateAdapter = UpdateAdapter(
            database,
            'Product',
            ['sequence'],
            (Product item) => <String, Object?>{
                  'sequence': item.sequence,
                  'id': item.id,
                  'nome': item.nome,
                  'descricao': item.descricao,
                  'gtin': item.gtin,
                  'ean': item.ean,
                  'imagemProduto': item.imagemProduto,
                  'preco': item.preco,
                  'precoMedio': item.precoMedio,
                  'precoMaximo': item.precoMaximo,
                  'precoMinimo': item.precoMinimo,
                  'largura': item.largura,
                  'altura': item.altura,
                  'comprimento': item.comprimento,
                  'pesoLiquido': item.pesoLiquido,
                  'pesoBruto': item.pesoBruto,
                  'imagemCodigoBarras': item.imagemCodigoBarras,
                  'marcaNome': item.marcaNome,
                  'imagemMarca': item.imagemMarca,
                  'gpcCodigo': item.gpcCodigo,
                  'gpcDescricao': item.gpcDescricao,
                  'tipoEmbalagem': item.tipoEmbalagem,
                  'quantidadeEmbalagem': item.quantidadeEmbalagem,
                  'ncmCodigo': item.ncmCodigo,
                  'ncmDescricao': item.ncmDescricao,
                  'cestCodigo': item.cestCodigo,
                  'cestDescricao': item.cestDescricao,
                  'fabricanteNome': item.fabricanteNome,
                  'baseOrigem': item.baseOrigem,
                  'dataCriacao': item.dataCriacao,
                  'dataAtualizacao': item.dataAtualizacao
                }),
        _productDeletionAdapter = DeletionAdapter(
            database,
            'Product',
            ['sequence'],
            (Product item) => <String, Object?>{
                  'sequence': item.sequence,
                  'id': item.id,
                  'nome': item.nome,
                  'descricao': item.descricao,
                  'gtin': item.gtin,
                  'ean': item.ean,
                  'imagemProduto': item.imagemProduto,
                  'preco': item.preco,
                  'precoMedio': item.precoMedio,
                  'precoMaximo': item.precoMaximo,
                  'precoMinimo': item.precoMinimo,
                  'largura': item.largura,
                  'altura': item.altura,
                  'comprimento': item.comprimento,
                  'pesoLiquido': item.pesoLiquido,
                  'pesoBruto': item.pesoBruto,
                  'imagemCodigoBarras': item.imagemCodigoBarras,
                  'marcaNome': item.marcaNome,
                  'imagemMarca': item.imagemMarca,
                  'gpcCodigo': item.gpcCodigo,
                  'gpcDescricao': item.gpcDescricao,
                  'tipoEmbalagem': item.tipoEmbalagem,
                  'quantidadeEmbalagem': item.quantidadeEmbalagem,
                  'ncmCodigo': item.ncmCodigo,
                  'ncmDescricao': item.ncmDescricao,
                  'cestCodigo': item.cestCodigo,
                  'cestDescricao': item.cestDescricao,
                  'fabricanteNome': item.fabricanteNome,
                  'baseOrigem': item.baseOrigem,
                  'dataCriacao': item.dataCriacao,
                  'dataAtualizacao': item.dataAtualizacao
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Product> _productInsertionAdapter;

  final UpdateAdapter<Product> _productUpdateAdapter;

  final DeletionAdapter<Product> _productDeletionAdapter;

  @override
  Future<Product?> getBySequence(int sequence) async {
    return _queryAdapter.query('Select * from Product where sequence = ?1',
        mapper: (Map<String, Object?> row) => Product(
            sequence: row['sequence'] as int?,
            id: row['id'] as int?,
            nome: row['nome'] as String?,
            descricao: row['descricao'] as String?,
            gtin: row['gtin'] as String?,
            ean: row['ean'] as String?,
            imagemProduto: row['imagemProduto'] as String?,
            preco: row['preco'] as String?,
            precoMedio: row['precoMedio'] as String?,
            precoMaximo: row['precoMaximo'] as String?,
            precoMinimo: row['precoMinimo'] as String?,
            largura: row['largura'] as String?,
            altura: row['altura'] as String?,
            comprimento: row['comprimento'] as String?,
            pesoLiquido: row['pesoLiquido'] as String?,
            pesoBruto: row['pesoBruto'] as String?,
            imagemCodigoBarras: row['imagemCodigoBarras'] as String?,
            marcaNome: row['marcaNome'] as String?,
            imagemMarca: row['imagemMarca'] as String?,
            gpcCodigo: row['gpcCodigo'] as String?,
            gpcDescricao: row['gpcDescricao'] as String?,
            tipoEmbalagem: row['tipoEmbalagem'] as String?,
            quantidadeEmbalagem: row['quantidadeEmbalagem'] as String?,
            ncmCodigo: row['ncmCodigo'] as String?,
            ncmDescricao: row['ncmDescricao'] as String?,
            cestCodigo: row['cestCodigo'] as String?,
            cestDescricao: row['cestDescricao'] as String?,
            fabricanteNome: row['fabricanteNome'] as String?,
            baseOrigem: row['baseOrigem'] as String?,
            dataCriacao: row['dataCriacao'] as String?,
            dataAtualizacao: row['dataAtualizacao'] as String?),
        arguments: [sequence]);
  }

  @override
  Future<List<Product>> getAll() async {
    return _queryAdapter.queryList('Select * from Product',
        mapper: (Map<String, Object?> row) => Product(
            sequence: row['sequence'] as int?,
            id: row['id'] as int?,
            nome: row['nome'] as String?,
            descricao: row['descricao'] as String?,
            gtin: row['gtin'] as String?,
            ean: row['ean'] as String?,
            imagemProduto: row['imagemProduto'] as String?,
            preco: row['preco'] as String?,
            precoMedio: row['precoMedio'] as String?,
            precoMaximo: row['precoMaximo'] as String?,
            precoMinimo: row['precoMinimo'] as String?,
            largura: row['largura'] as String?,
            altura: row['altura'] as String?,
            comprimento: row['comprimento'] as String?,
            pesoLiquido: row['pesoLiquido'] as String?,
            pesoBruto: row['pesoBruto'] as String?,
            imagemCodigoBarras: row['imagemCodigoBarras'] as String?,
            marcaNome: row['marcaNome'] as String?,
            imagemMarca: row['imagemMarca'] as String?,
            gpcCodigo: row['gpcCodigo'] as String?,
            gpcDescricao: row['gpcDescricao'] as String?,
            tipoEmbalagem: row['tipoEmbalagem'] as String?,
            quantidadeEmbalagem: row['quantidadeEmbalagem'] as String?,
            ncmCodigo: row['ncmCodigo'] as String?,
            ncmDescricao: row['ncmDescricao'] as String?,
            cestCodigo: row['cestCodigo'] as String?,
            cestDescricao: row['cestDescricao'] as String?,
            fabricanteNome: row['fabricanteNome'] as String?,
            baseOrigem: row['baseOrigem'] as String?,
            dataCriacao: row['dataCriacao'] as String?,
            dataAtualizacao: row['dataAtualizacao'] as String?));
  }

  @override
  Future<int> insertItem(Product prod) {
    return _productInsertionAdapter.insertAndReturnId(
        prod, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateItem(Product prod) {
    return _productUpdateAdapter.updateAndReturnChangedRows(
        prod, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteItem(Product prod) {
    return _productDeletionAdapter.deleteAndReturnChangedRows(prod);
  }
}

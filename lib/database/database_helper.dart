import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static DatabaseHelper _databaseHelper;
  static Database _database;

  String databaseName = "demo.db";
  String tableProjects = "tableProjects";
  String projectId = "id";
  String projectTitle = "projectTitle";
  String projectDesc = "projectDesc";
  String projectStartDate = "projectStartDate";
  String projectEndDate = "projectEndDate";
  String projectProgress = "projectProgress";

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "$databaseName";

    Database demoDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return demoDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute("CREATE TABLE $tableProjects("
        "$projectId INTEGER PRIMARY KEY AUTOINCREMENT, "
        "$projectTitle TEXT, "
        "$projectDesc TEXT, "
        "$projectStartDate TEXT, "
        "$projectEndDate TEXT, "
        "$projectProgress INTEGER);");

    await db.execute("CREATE TABLE $tableProjects("
        "$projectId INTEGER PRIMARY KEY AUTOINCREMENT, "
        "$projectTitle TEXT, "
        "$projectDesc TEXT, "
        "$projectStartDate TEXT, "
        "$projectEndDate TEXT, "
        "$projectProgress INTEGER);");
  }


  //fetch operation
  Future<List<Map<String, dynamic>>> getProjectsListMap() async {
    Database db = await this.database;

    var result = await db
        .rawQuery("SELECT * FROM $tableProjects order by $projectTitle ASC");
//    var result = await db.query(tableProjects, orderBy: '$projectTitle ASC');
    return result;
  }


  //insert operation
  Future<int> insertProject(Map<String, dynamic> project) async {
    Database db = await this.database;

//    Map<String, dynamic> projectMap = project.toMap();
//    String insertProjectQuery = "INSERT INTO $tableProjects($projectTitle, $projectDesc, $projectStartDate, $projectEndDate, $projectProgress) " +
//        "VALUES (${projectMap['projectTitle']}, ${projectMap['projectDesc']}, ${projectMap['projectStartDate']}, ${projectMap['projectEndDate']}, ${projectMap['projectProgress']})";
//    int result = await db.rawInsert(insertProjectQuery);
    int result = await db.insert(tableProjects, project);
    return result;
  }

//  Future<int> insertProject(Projects project) async {
//    Database db = await this.database;
//
//   var result = db.insert(tableProjects, project.toMap());
//    return result;
//  }


  //update operation
//  Future<int> updateProject(Projects project) async {
//    Database db = await this.database;
//
//    var result = db.update(tableProjects, project.toMap(), where: '$projectId = ?', whereArgs: [project.id]);
//    return result;
//  }


  //delete operation
  Future<int> deleteProject(int id) async {
    Database db = await this.database;

    var result = await db.rawDelete("DELETE FROM $tableProjects WHERE $projectId = $id");
//    var result = await db.delete(tableProjects, where: '$projectId =?', whereArgs: [id]);
    return result;
  }


  //get items count from database
  Future<int> getCount() async {
    Database db = await this.database;

    List<Map<String, dynamic>> dbProjectList = await db.rawQuery('SELECT COUNT (*) from $tableProjects');
    int result = Sqflite.firstIntValue(dbProjectList);
    return result;
  }

//  Future<List<Projects>> getProjectsList() async {
//    List<Map<String, dynamic>> projectsMapList = await getProjectsListMap();
//    var count = projectsMapList.length;
//
//    List<Projects> projectsList = new List<Projects>();
//    for(int i=0; i<count; i++) {
//      projectsList.add(Projects.fromMap(projectsMapList[i]));
//    }
//    return projectsList;
//  }

}

import 'package:json_annotation/json_annotation.dart';

class CategoriesJson {
  @JsonKey(name: 'status')
  final int status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'result')
  final Result? result;

  CategoriesJson.fromJson(Map<String,dynamic> json) : status=json['status'],message=json['message'],result=json[Result];

  Map<String,dynamic> toJson() => <String,dynamic>{
    'status':status,
    'message':message,
    'result':result
  };

  CategoriesJson(this.status, this.message, this.result);
}

class Result<T> {
  @JsonKey(name: 'categories')
  final List<BranchJson> categories;
  Result(this.categories);
}

class BranchJson {
  @JsonKey(name: 'data')
  final Data data;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'children')
  final List<Data?> children;

  BranchJson(this.data, this.children, this.id);
}

class Data {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final Object description;
  @JsonKey(name: 'meta_title')
  final Object meta_title;
  @JsonKey(name: 'meta_description')
  final Object meta_description;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'is_public')
  final bool is_public;
  @JsonKey(name: 'ancestors_are_public')
  final bool ancestors_are_public;
  @JsonKey(name: 'name_alias')
  final String name_alias;
  @JsonKey(name: 'description_alias')
  final Object description_alias;

  Data(
      this.name,
      this.ancestors_are_public,
      this.description,
      this.description_alias,
      this.image,
      this.is_public,
      this.meta_description,
      this.meta_title,
      this.name_alias,
      this.slug);
}

class MainModel{
  String title;
  String image;
  String description;

  MainModel setTitle(String title){
    this.title = title;
    return this;
  }

  MainModel setDescription(String description){
    this.description = description;
    return this;
  }

  MainModel setImage(String image){
    this.image = image;
    return this;
  }

  String getImage(){
    return image;
  }

  String getTitle(){
    return title;
  }

  String getDescription(){
    return description;
  }
}
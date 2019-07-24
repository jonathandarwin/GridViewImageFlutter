import 'package:display_image/main_model.dart';

class HomeBloc{
  List<MainModel> listModel;

  HomeBloc(){
    listModel = List<MainModel>();
  }

  List<MainModel> getListModel() {
    if(listModel != null) {
      listModel.add(MainModel().setImage('asset/laut.jpg').setTitle('Laut yang Jernih'));
      listModel.add(MainModel().setImage('asset/gunung.jpg').setTitle('Gunung yang Menjulang'));
      listModel.add(MainModel().setImage('asset/hutan.jpg').setTitle('Hutan Rimba'));
      listModel.add(MainModel().setImage('asset/pantai.jpg').setTitle('Pantai dan Pasir'));
      listModel.add(MainModel().setImage('asset/danau.jpg').setTitle('Danau yang Tenang'));
      listModel.add(MainModel().setImage('asset/candi.jpg').setTitle('Candi Borobudur'));          
    }
    return listModel;
  }
}
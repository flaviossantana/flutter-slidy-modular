import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_modular/app/app_widget.dart';
import 'package:flutter_slidy_modular/app/pages/home/home_controller.dart';
import 'package:flutter_slidy_modular/app/pages/home/home_page.dart';
import 'package:flutter_slidy_modular/app/pages/other/other_page.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  //Array de Injeção de Dependências
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
      ];

  @override
  //Rotas para as páginas da aplicação
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage()),
      ];

  @override
  //Nosso Widget Principal do Módulo
  Widget get bootstrap => AppWidget();
}

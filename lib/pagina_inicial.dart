import 'package:flutter/material.dart';
import 'app_config.dart';


class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {

    bool descricaoState;
    bool diagramasState;
    bool directoryTreeState;
    bool requisitosEInstrucoesState;
    TopicosStates topicosStates = TopicosStates.init([TopicoState(topico:Topico.Descricao)]);

  _PaginaInicialState({this.descricaoState = true,this.diagramasState = true,this.directoryTreeState = true,this.requisitosEInstrucoesState = true});


  @override
  Widget build(BuildContext context) {

    List<Widget> topicos = [];
    topicosStates.topicos.map((topicoState) => topicos.add(ListTile(title: Text(topicoState.topico.toString()),leading: Checkbox(value: topicoState.isActivated,onChanged:(val)=>{}))));
    print(topicosStates.topicos);

    return CustomScrollView(

      slivers: [
        SliverAppBar(
          title: Text('Gerador de documentação'),
          centerTitle: true,
        ),

        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical:48.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
            [
              SizedBox(
                width: 20.0,
                child: 
                  Container(
                      child: Center(
                      child: Column(children: [
                        ...topicos,
                        Text('Selecione os tópicos para inserir na documentação',textAlign: TextAlign.center,style: TextStyle(color: Colors.black54,fontSize: 28,decoration: TextDecoration.none)),
                        Card(child: ListTile(title: Text('Descrição'),leading: Checkbox(value:descricaoState,onChanged:(val)=>setState(()=>{descricaoState = !descricaoState})))),
                        Card(child: ListTile(title: Text('Diagramas'),leading: Checkbox(value:diagramasState,onChanged:(val)=>setState(()=>{diagramasState = !diagramasState})))),
                        Card(child: ListTile(title: Text('Directory Tree'),leading: Checkbox(value:directoryTreeState,onChanged:(val)=>setState(()=>{directoryTreeState = !directoryTreeState})))),
                        Card(child: ListTile(title: Text('Requisitos e instruções'),leading: Checkbox(value:requisitosEInstrucoesState,onChanged:(val)=>setState(()=>{requisitosEInstrucoesState = !requisitosEInstrucoesState})))),
                        ElevatedButton(child:Text('Inserir arquivos'),onPressed: ()=>{})
                      ],),
                    ),
                  )
              ,)
            ]
          ),),
        )
      ]
      );
  }
}


class TopicosStates {

  List<TopicoState> topicos;
  TopicosStates(this.topicos);
  TopicosStates.init(this.topicos) {

    List<Topico> listTopico = [];
    Topico.values.forEach((tp)=>{
      print(tp)
      
      //listTopico.add(TopicoState(topico: tp))
      
      
      });

  }
  
}


class TopicoState {

  Topico _topico;
  bool _isActivated;
  String _text;
  

  TopicoState({isActivated = true,text = '',@required topico}):
    this._isActivated = isActivated,
    this._text = text,
    this._topico = topico;


  void activate(){
    this._isActivated = true;}

  void deactivate(){
    this._isActivated = false;
  }

  void setText(String text){
    this._text = text;
  }

  Topico get topico => _topico;

  bool get isActivated =>_isActivated;

  String get text => _text;    
}

enum Topico {
  Descricao,
  Diagramas,
  DirectoryTree,
  RequisitosEInstrucoes,
}
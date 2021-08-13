import 'package:musclelog/resources/models/training_row.dart';
import 'package:musclelog/resources/repositories/training_repository.dart';
import 'package:rxdart/rxdart.dart';

class MainBloc {  //Bloc...状態管理
  TrainingRepository _trainingRepository = TrainingRepository();

  final _trainingRowPublishSubject = BehaviorSubject<List<TrainingRow>>();

  Stream<List<TrainingRow>> get trainingRowStream => _trainingRowPublishSubject.stream;

  void dispose() {
    _trainingRowPublishSubject.close();
  }

  Future<void> fetchTrainings() async {
    List<TrainingRow> _trainings = await _trainingRepository.list();
    _trainingRowPublishSubject.sink.add(_trainings);
  }

  Future<void> addTraining(String name) async {
    await _trainingRepository.insert(name: name);
    List<TrainingRow> _trainings = await _trainingRepository.list();
    _trainingRowPublishSubject.sink.add(_trainings);
  }

  Future<void> deleteTraining(String documentId) async {
    print('deleteTrainingだよ');
    await _trainingRepository.deleteData(documentId:documentId );
    List<TrainingRow> _trainings = await _trainingRepository.list();
    print(_trainings.map((e)=>e.name));
    _trainingRowPublishSubject.sink.add(_trainings);
  }

//todo
//todo 以下の処理のメソッドを作る
//todo ①repository内の、　Firestoreから削除するために用いるメソッドをここで呼び出す。
//todo ②最新のトレーニング一覧を取得
//todo ③最新のトレーニング一覧をsinkに流す。





}

//dispose->MainBlocのクラスが不要となったときに後処理するイメージ
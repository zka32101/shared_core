import '../retention/collection.dart';

/// 都道府県ID（JIS X 0401 の 2 桁コード）。例: 北海道 = 'pref_01'
String prefectureId(int jisCode) => 'pref_${jisCode.toString().padLeft(2, '0')}';

List<String> _ids(Iterable<int> codes) => codes.map(prefectureId).toList();

/// 47都道府県を8地方に分けたコレクション定義。
final CollectionSet kPrefectureCollection = CollectionSet(
  id: 'prefecture',
  title: '47都道府県',
  groupCoins: 100,
  completeCoins: 1000,
  groups: [
    CollectionGroup(id: 'hokkaido', name: '北海道地方', itemIds: _ids([1])),
    CollectionGroup(id: 'tohoku', name: '東北地方', itemIds: _ids(_range(2, 7))),
    CollectionGroup(id: 'kanto', name: '関東地方', itemIds: _ids(_range(8, 14))),
    CollectionGroup(id: 'chubu', name: '中部地方', itemIds: _ids(_range(15, 23))),
    CollectionGroup(id: 'kinki', name: '近畿地方', itemIds: _ids(_range(24, 30))),
    CollectionGroup(id: 'chugoku', name: '中国地方', itemIds: _ids(_range(31, 35))),
    CollectionGroup(id: 'shikoku', name: '四国地方', itemIds: _ids(_range(36, 39))),
    CollectionGroup(id: 'kyushu', name: '九州・沖縄地方', itemIds: _ids(_range(40, 47))),
  ],
);

/// [from] 以上 [to] 以下の整数列。
Iterable<int> _range(int from, int to) =>
    Iterable<int>.generate(to - from + 1, (i) => from + i);

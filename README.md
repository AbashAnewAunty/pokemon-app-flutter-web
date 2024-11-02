# Pokemon_App_Flutter_Web

## URL

<https://abashanewaunty.github.io/pokemon-app-flutter-web/>

## コード生成

```shell
fvm dart run build_runner build –delete-conflicting-outputs
```

## デプロイ

1. 以下のコマンドを実行

      ```shell
      fvm flutter build web
      ```

2. build/index.htmlの内容を書き換える

      ```html
      <!-- before -->
      <base href="/">

      <!-- after -->
      <base href="/<リポジトリ名>/">
      ```

3. 以下のコマンドを実行

      ```shell
      mv buld/web docs
      ```

4. GitHubへpushする

### 旧デプロイ手順

```shell
firebase deploy
```

## （旧）実行環境構築

1. lib/firebase_web_config.dartファイルを作成する
2. 同ファイル内にFirebaseWebConfigクラスを作成
3. Firebaseプロジェクトから、以下の値をFirebaseWebConfigにstaticな値として保持させる
   - apiKey
   - authDomain
   - projectId
   - storageBucket
   - messagingSenderId
   - appId

## トラブルシューティング

### IndexedDBにデータが保存されない

[公式doc](https://drift.simonbinder.eu/platforms/web/)にのっとりdriftのweb対応を行った。
web対応のなかで`drift_worker.dart.js`をプロジェクトに配置する手順があるが、実際に配置したのは`drift_worker.js`であった。
（`drift_worker.js`は公式doc内のリンク先からDLできる）
公式サンプルコードでは`drift_worker.dart.js`のままであったが、同様にコードも修正することで解消できた。

```dart
DatabaseConnection connectOnWeb() {
  return DatabaseConnection.delayed(Future(() async {
    final result = await WasmDatabase.open(
      databaseName: 'my_app_db', // prefer to only use valid identifiers here
      sqlite3Uri: Uri.parse('sqlite3.wasm'),

      // 修正前（公式サンプルコード）
      // driftWorkerUri: Uri.parse('drift_worker.dart.js'),

      // 修正後
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );
    ....
    return result.resolvedExecutor;
  }));
}
```

### デプロイしたFlutterWebアプリで音声が再生されない

FirebaseHostingではURL音声再生がサポートされていない模様。（アセットからの再生ならできるらしいが）
~解決策を模索中。~
デプロイ先をGitHub Pageにすることで解消した。

<https://stackoverflow.com/questions/77358241/any-workaround-to-firebase-hosting-not-supporting-audio-streaming-for-web-app>

## その他

### Firebase Hostingについて

本アプリはFirebaseHostingを用いてデプロイしている。
さて、'firebase deploy' からデプロイを実行すると、ターミナル上に以下のメッセージが表示される。

```string
Thank you for trying our experimental support for Flutter Web on Firebase Hosting.
While this integration is maintained by Googlers it is not a supported Firebase product.
Issues filed on GitHub will be addressed on a best-effort basis by maintainers and other community members.
```

このことより、FirebaseHostingをFlutterWebで用いることには注意が必要と思われる。

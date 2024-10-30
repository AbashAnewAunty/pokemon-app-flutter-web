# Pokemon_App_Flutter_Web

## 実行環境構築

1. lib/firebase_web_config.dartファイルを作成する
2. 同ファイル内にFirebaseWebConfigクラスを作成
3. Firebaseプロジェクトから、以下の値をFirebaseWebConfigにstaticな値として保持させる
   - apiKey
   - authDomain
   - projectId
   - storageBucket
   - messagingSenderId
   - appId

## コード生成

```shell
fvm dart run build_runner build
```

## デプロイ

```shell
firebase deploy
```

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

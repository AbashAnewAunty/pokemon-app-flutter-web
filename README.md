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

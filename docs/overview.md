# デスクトップアプリ MVP仕様書

## 🎯 アプリ概要
- Twitter風のUIで作業ログを記録するデスクトップアプリ。
- 新しい投稿が上に表示される。
- Ctrl＋マウス操作で投稿間の経過時間を「円＋線＋吹き出し」で視覚的に確認できる。

---

## 使用技術
- Flutter

## 🛠 必須機能

### 1. 投稿
- 画面上部に固定された入力欄からテキストを投稿。
- 投稿すると現在時刻が付与され、タイムラインに追加。
- 投稿内容はテキストのみ。

### 2. タイムライン
- 新しい投稿が上に並ぶ（Twitterと同じ）。
- 投稿カードには以下を表示：
    - 投稿テキスト
    - 投稿日時
    - リプライボタン

### 3. リプライ
- 各投稿にリプライ可能。
- 親投稿の下にインデント表示。

### 4. 経過時間表示（Ctrl＋マウス操作）
- **Ctrl押下時**
    - マウス下の投稿を「基準投稿」として記録。
    - 基準投稿の中央に小さな円を描画。
- **Ctrlを押しながらマウス移動**
    - 現在マウス下の投稿を「対象投稿」として記録。
    - 対象投稿の中央に小さな円を描画。
    - 2つの円を線で結び、対象投稿の円に吹き出しを表示。
    - 吹き出しには「日○時間△分」で経過時間を表示。
- **Ctrlキーを離すとリセット**（円・線・吹き出しを非表示）。

---

## 💻 データ設計

```dart
class Post {
  String id;             // UUID
  String content;        // 投稿テキスト
  DateTime createdAt;    // 投稿日時
  String? parentId;      // リプライ先の投稿ID（nullならルート投稿）
}
```
- 保存形式：ローカルJSON
- 起動時にロード、投稿時に即保存

## 🖼 UI構成（Flutter）
```
Scaffold
 ├── Column
 │    ├── PostInputBar (上部固定 TextField＋送信ボタン)
 │    └── Expanded
 │         └── Stack
 │              ├── ListView.builder (タイムライン)
 │              └── CustomPaint (円＋線)
 │              └── Positioned (吹き出し)
```

## 🚀 開発フロー
1. 投稿モデル & JSON保存処理
2. タイムラインUI（新しい投稿が上）
3. 投稿入力欄（上部固定）
4. リプライ表示（親子関係）
5. Ctrl＋マウス操作で：
   - 投稿位置の判定
   - 基準／対象投稿の座標取得
   - CustomPainterで線＆円を描画
   - 吹き出しに 日○時間△分 を表示

## ディレクトリ
my_app/
├── lib/
│   ├── main.dart               # エントリーポイント
│   ├── app.dart                # MaterialAppやThemeなどの設定
│   ├── model/
│   │   └── post.dart           # Postモデル
│   ├── service/
│   │   └── storage_service.dart # JSON保存/読み込み処理
│   ├── widget/
│   │   ├── post_card.dart       # 投稿カードUI
│   │   ├── reply_list.dart      # リプライ表示
│   │   ├── post_input_bar.dart  # 上部固定投稿入力欄
│   │   └── time_diff_overlay.dart # Ctrl＋マウスの時間差表示
│   ├── screen/
│   │   └── timeline_screen.dart # メイン画面（タイムライン＋Stack）
│   └── util/
│       └── time_utils.dart      # 時間差計算（日○時間△分変換など）
├── asset/                      # 画像・フォント・絵文字など
└── pubspec.yaml                  # 依存関係・アセット定義

### 各ディレクトリの役割
- model/
  - アプリのデータ構造を定義（Postなど）
- service/
  - JSON保存・読み込みなど、データ操作のロジック
- widget/
  - 再利用可能なUIコンポーネント
  - 投稿カード、リプライリスト、投稿入力欄、経過時間オーバーレイなど
- screen/
  - メイン画面や今後増える画面をまとめる
  - MVPならタイムライン画面だけ
- util/
  - 日付計算や時間差変換などのヘルパー関数
- asset/
  - アイコン、画像、カスタム絵文字など


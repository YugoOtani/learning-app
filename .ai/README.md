# `.ai` ディレクトリ

## ディレクトリ構造

```text
.ai/
├─ features/
│  └─ <feature>/
│     ├─ spec.md
│     ├─ plan.md
│     └─ tasks/
│        └─ 001-<task>/
│           ├─ task.md
│           ├─ test-plan.md
│           ├─ implementation.md
│           └─ review.json
├─ policies/
│  └─ risk.md
└─ templates/
   ├─ task.md
   └─ review.schema.json
```

## 各ディレクトリの役割

- 機能単位の成果物は `.ai/features/<feature>/` に置く。
- 機能仕様は `spec.md`、実装計画は `plan.md` とする。
- 各実装タスクは `.ai/features/<feature>/tasks/<task>/` にまとめる。
- タスク配下には `task.md`、`test-plan.md`、`implementation.md`、`review.json` を置く。
- 検証結果は独立したファイルにせず、`review.json` の `evidence` に記録する。
- `review.json` は `.ai/templates/review.schema.json` に適合させる。
- 複数タスクで共通するルールやテンプレートは、重複を避けるため `.ai/policies/` または `.ai/templates/` に置く。

## 機能フォルダの命名規則

機能ディレクトリ名は以下の規則に従う。

- kebab-caseを使用する
- 英語を使用する
- 機能・ユーザー価値を表す名前にする
- 実装技術やレイヤー名を名前に含めない
- 原則として名詞または短い名詞句にする
- 日付や連番は含めない

例:

推奨:
- `review-scheduling`
- `learning-session`
- `daily-plan`
- `resource-library`

非推奨:
- `feature-001`
- `add-review-button`
- `sqlite-review-table`
- `tauri-review-api`

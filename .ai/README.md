# .ai directory

## ディレクトリ構造
.ai/
├─ features/
│   └─ <feature>/
│       ├─ spec.md
│       ├─ plan.md
│       └─ tasks/
│           └─ 001-<task>/
│               ├─ task.md
│               ├─ test-plan.md
│               ├─ implementation.md
│               ├─ evidence.json
│               └─ review.md
│
├─ policies/
│   ├─ risk.md
│   └─ evidence.md
│
└─ templates/

## 各ディレクトリの役割
- 機能単位の成果物は `.ai`/features/<feature>/` に置く。
- 機能仕様は `spec.md`、実装計画は `plan.md` とする。
- 各実装タスクは `.ai/features/<feature>/tasks/<task>/` にまとめる。
- タスク配下には `task.md`、`implementation.md`、`evidence.json`、`review.md` を置く。各生成物の意味については各タスクを参照すること。
- 複数タスクで共通するルールやテンプレートは重複を避けるため `.ai/policies/` または `.ai/templates/` に置く。`

## Featureフォルダの命名規則

Featureディレクトリ名は以下の規則に従う。

- kebab-caseを使用する
- 英語を使用する
- 機能・ユーザー価値を表す名前にする
- 実装技術やレイヤー名を名前に含めない
- 原則として名詞または短い名詞句にする
- 日付や連番は含めない

Examples:

Good:
- `review-scheduling`
- `learning-session`
- `daily-plan`
- `resource-library`

Avoid:
- `feature-001`
- `add-review-button`
- `sqlite-review-table`
- `tauri-review-api`

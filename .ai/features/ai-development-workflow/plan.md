# 実装計画

## タスク一覧

- `001-align-project-guidance`: AI開発文書、Skill、review schema、検証基盤を一貫した方針へ揃える。

## 依存関係

依存タスクはない。

## 推奨実行順

1. 成果物の正規配置とレビュー形式を統一する。
2. テスト責務と検証コマンドを整備する。
3. Skill、schema、統合検証を実行する。
4. 構造化レビューを作成する。

## 並行実行可能なタスク

単一タスクのため該当なし。

## 主要リスク

- Skill間の参照先が一部だけ旧形式のまま残ること。
- 検証スクリプトとpackage scriptsが不一致になること。

## 機能全体の検証

- 全Skillのvalidator実行。
- review schemaとreview.jsonの適合性検証。
- `scripts/verify-change.ps1` の実行。

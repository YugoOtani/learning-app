# 実装記録

## 変更した内容

- AI成果物の配置を `.ai/features/<feature>/` に統一した。
- レビュー成果物を `review.json` に統一し、検証結果を `evidence` へ統合した。
- Skillの出力先、テスト責務、日本語表記を整合させた。
- lint、型チェック、テストのpackage scriptsとESLint・Vitestを追加した。
- 統合検証スクリプトを `scripts/verify-change.ps1` へ改名した。

## 変更理由

AI駆動開発の各工程で同じ成果物を参照し、実行した検証とリスクを人間が追跡できるようにするため。

## 主な変更箇所

- `AGENTS.md`
- `.ai/`
- `.agents/skills/`
- `package.json`
- `eslint.config.js`
- `scripts/verify-change.ps1`

## 追加・変更したテスト

プロダクトの振る舞いは変更していないため、プロダクトテストは追加していない。検証基盤としてVitestを導入し、Skill validator、schema validation、統合検証を実行した。

## 受け入れ条件への対応

すべての受け入れ条件を満たし、結果を `review.json` に記録した。

## 未解決リスク

現時点ではフロントエンドとRustのテスト件数が0件である。

## 未検証事項

なし。

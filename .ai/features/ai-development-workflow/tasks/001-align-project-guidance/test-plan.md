# テスト計画

## 成果物配置

- 旧配置 `.ai/specs/` と `.ai/tasks/` への参照が残っていないことを確認する。
- 独立した `evidence.json` と `review.md` を成果物として要求していないことを確認する。

## Skill

- 6個すべてのプロジェクト固有Skillに対して公式validatorを実行する。
- `review-change`のYAML frontmatterが認識されることを確認する。

## Review schema

- schema自体がDraft 2020-12として有効であることを確認する。
- 生成した`review.json`がschemaに適合することを確認する。
- `human_review_required`が`true`の場合、`human_review_focus`が必須になることを確認する。

## 統合検証

- `scripts/verify-change.ps1`を実行する。
- lint、型チェック、フロントエンドテスト、Rust format、clippy、testが正常終了することを確認する。

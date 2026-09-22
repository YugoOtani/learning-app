# タスク

## 目標

AI駆動開発の文書、Skill、レビュー、検証基盤を一貫した状態にする。

## 背景

成果物の配置、Evidenceの扱い、レビュー形式、テスト責務、検証コマンドに矛盾や不足がある。

## 依存関係

なし。

## 対象範囲

- `.ai` 配下の方針、テンプレート、schema。
- `.agents/skills` 配下のプロジェクト固有Skill。
- フロントエンド検証用のpackage scriptsとESLint設定。
- 統合検証用PowerShellスクリプト。

## 想定される影響範囲

- AI駆動開発プロセス。
- 開発時のlint、型チェック、テスト実行。

## 受け入れ条件

- 成果物の配置が `.ai/features/<feature>/` に統一されている。
- レビューがschema準拠の `review.json` に統一されている。
- 検証結果が `review.json` の `evidence` に統合されている。
- 振る舞い変更のテストが実装担当の責務になっている。
- `scripts/verify-change.ps1` が正常終了する。

## 必要な検証

- Skill validator。
- JSON Schema validation。
- Frontend lint、型チェック、テスト。
- Rust format、clippy、test。

## リスク

LOW

### 理由

開発プロセスと開発ツールのみの変更であり、プロダクトの実行時動作や永続データを変更しないため。

## 対象外

- アプリケーション機能の変更。
- 不足しているアーキテクチャ文書の作成。

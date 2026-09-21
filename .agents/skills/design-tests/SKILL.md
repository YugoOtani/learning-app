---
name: design-tests
description: 仕様とタスクから、実装に依存しないテスト観点と必要な検証ケースを設計する。
---

# 目的

実装方法ではなく、要求された振る舞いを正しいと判断するために
必要なテスト観点を整理する。

このSkillではテストコードを実装しない。

# 入力

- Feature specification
- Task
- Acceptance criteria
- 関連するdomain guideline

原則として実装コードの詳細をテスト設計の根拠にしない。

# 手順

以下の観点から必要なものを選ぶ。

- 正常系
- 境界値
- 異常系
- 状態遷移
- 不変条件
- 永続化
- 入出力contract
- concurrency
- timezone / 日付
- recovery
- regression

すべてのカテゴリを機械的に埋める必要はない。

各ケースについて以下を明確にする。

- 何を確認するか
- なぜ必要か
- 期待する結果
- 適切なテストレベル
  - unit
  - integration
  - E2E
  - manual

出力はタスク配下の `test-plan.md` とする。

# ルール

- 現在の実装を正しい前提としてテストを設計しない。
- privateな実装詳細ではなくobservable behaviorを優先する。
- Acceptance Criteriaの単純な言い換えだけで終わらせない。
- 不要なテストケースを網羅性のためだけに増やさない。
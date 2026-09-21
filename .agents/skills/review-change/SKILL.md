```md
---
name: review-change
description: 実際の変更内容とEvidenceを独立して確認し、人間がレビューすべきリスク・不整合・未検証事項を整理する。
---

# 目的

実装Agentの自己評価に依存せず、実際の変更とEvidenceから変更内容を独立してレビューする。

このSkillの目的は最終承認ではなく、
人間が効率よく判断できるレビュー材料を作ることである。

# 参照

レビュー前に必要に応じて以下を確認する。

- `AGENTS.md`
- `.ai/README.md`
- `.ai/policies/evidence.md`
- `.ai/policies/risk.md`
- `docs/architecture.md`
- `docs/coding-guidelines.md`
- `docs/test-guidelines.md`
- 関連する `docs/domain/`
- Feature specification
- Task
- Implementation rationale
- Verification evidence

成果物の配置・命名は `.ai/README.md` に従う。

Risk判定は `.ai/policies/risk.md` に従う。

Evidenceの扱いは `.ai/policies/evidence.md` に従う。

# 入力

最低限、以下を確認する。

- Task
- Git diff
- Verification evidence

存在する場合は以下も確認する。

- Feature specification
- Test plan
- Implementation rationale
- 関連ドキュメント

# レビュー手順

## 1. 変更を独立して把握する

まず以下を基に、実際に何が変更されたかを確認する。

- Task
- Feature specification
- Git diff
- Evidence
- 関連するarchitecture / domain rule

実装Agentの説明を、変更内容を判断するための根拠にはしない。

変更をファイル単位ではなく、意味のあるChange Unitにまとめる。

例:

- 復習対象判定ロジック
- 復習状態の永続化
- Tauri IPCの追加
- UI表示

## 2. Task・仕様との整合性を確認する

各Change Unitについて確認する。

- Goal達成に必要な変更か
- Acceptance Criteriaと整合しているか
- Scope外の変更が含まれていないか
- 不要なrefactoringや設計変更が混入していないか
- architecture / domain ruleに反していないか

## 3. Evidenceを対応付ける

各Change Unitについて、実際に存在するEvidenceを対応付ける。

例:

- unit test
- integration test
- typecheck
- lint
- cargo test
- migration test
- manual verification

Evidenceが存在しない場合は推測で補わず、未検証として扱う。

## 4. 実装理由と比較する

独立レビューが完了した後に `implementation.md` を確認する。

実装Agentが記録した変更理由・設計判断と、
実際のdiffおよび仕様を比較する。

以下のいずれかとして整理する。

- `CONSISTENT`
- `PARTIALLY_CONSISTENT`
- `INCONSISTENT`
- `UNKNOWN`

不一致がある場合は、人間が確認すべき事項として明示する。

## 5. Riskを評価する

`.ai/policies/risk.md` に従って、
Change UnitごとにRiskを評価する。

Riskには根拠を付ける。

AIによるRisk評価は参考情報であり、
最終判断ではない。

## 6. 未検証事項と残る不確実性を整理する

以下を区別する。

### Unverified

必要な検証が実行されていないもの。

### Remaining uncertainty

検証は存在するが、それだけでは判断できないもの。

例:

- timezoneの仕様自体が未確定
- migrationの実データ互換性
- concurrency時の挙動
- UX上の妥当性

## 7. 人間のレビュー対象を絞る

以下を中心に、人間が見るべき箇所を提示する。

- HIGH riskの変更
- architecture / domain boundaryの変更
- Evidenceが弱い変更
- implementation rationaleとdiffの不一致
- Scope外の変更
- 複雑なdomain logic
- migration / security / destructive operation
- 未解決の仕様判断

単純な機械的変更まで詳細レビュー対象として大量に列挙しない。

# 出力

タスク配下の `review.md` を作成する。

形式は以下を基本とする。

## Summary

変更全体の簡潔な概要。

## Findings

重要度の高い順に記載する。

各Findingには可能な範囲で以下を含める。

- 対象Change Unit
- Risk
- 問題または確認事項
- 根拠
- Evidence
- 人間が確認すべき点

問題がない変更について、無理にFindingを作らない。

## Change Units

各Change Unitについて簡潔に整理する。

### <Change Unit>

- Actual change:
- Task / spec alignment:
- Evidence:
- Risk:
- Rationale consistency:

## Unverified Areas

実行されていない、または不足している検証。

## Remaining Uncertainty

Evidenceだけでは解消できない不確実性。

## Suggested Human Review

人間がコードを確認する場合の推奨箇所と順序。

# ルール

- 実装Agentの説明を事実として扱わない。
- Git diffに存在しない変更を推測しない。
- 実行されていない検証をEvidenceとして扱わない。
- EvidenceとAIによる解釈を混同しない。
- テスト成功だけを理由に設計の妥当性を保証しない。
- 問題が見つからない場合、無理に問題を作らない。
- 最終的な承認・却下判断は人間に委ねる。
```

---
name: implement-test
description: 承認済みのテスト計画に基づいて、既存のテスト構成に沿ったテストコードを実装する。
---

- `task.md` と `test-plan.md` を読む。
- 関連する実装、public API、既存テストを確認する。
- `docs/coding-guidelines.md` と`docs/test-guidelines.md`従う。
- observable behaviorを優先して検証する。
- 実装内部への過剰な結合を避ける。
- test-planにないテストを追加する場合は、その理由を明示する。
- production codeをテスト都合だけで不自然に変更しない。
$ErrorActionPreference = "Stop"

Write-Host "== フロントエンド: lint =="
pnpm run lint

Write-Host "== フロントエンド: 型チェック =="
pnpm run typecheck

Write-Host "== フロントエンド: テスト =="
pnpm run test

Write-Host "== Rust: フォーマット =="
cargo fmt --check --manifest-path src-tauri/Cargo.toml

Write-Host "== Rust: clippy =="
cargo clippy --manifest-path src-tauri/Cargo.toml -- -D warnings

Write-Host "== Rust: テスト =="
cargo test --manifest-path src-tauri/Cargo.toml

Write-Host "== Git状態 =="
git status --short

Write-Host "== 検証完了 =="

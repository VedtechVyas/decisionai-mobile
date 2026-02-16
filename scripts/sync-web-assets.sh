#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="${ROOT_DIR}/../decisionai/dist"
TARGET_DIR="${ROOT_DIR}/web"

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Missing source build at ${SOURCE_DIR}"
  echo "Run: npm --prefix ../decisionai run build"
  exit 1
fi

rm -rf "${TARGET_DIR}"
mkdir -p "${TARGET_DIR}"
cp -R "${SOURCE_DIR}/." "${TARGET_DIR}/"

echo "Copied web assets from ${SOURCE_DIR} to ${TARGET_DIR}"

# 워크플로우 템플릿

Sub-agent에게 반복 작업을 시킬 때 사용하는 표준 워크플로우.

## 사용법
```python
sessions_spawn(
    task="Read workflows/WORKFLOW_XXX.md and execute. Parameters: source_file=..., output_dir=...",
    label="작업명"
)
```

## 워크플로우 목록

| 파일 | 용도 | 주요 사용처 |
|------|------|------------|
| `WORKFLOW_ZETTEL_DECOMPOSE.md` | HWP/텍스트 → 제텔카스텐 분해 | 기능분석, 위임위탁 등 |
| `WORKFLOW_BOOK_CHAPTER.md` | 노트 → 단행본 챕터 집필 | 모든 책 프로젝트 |
| `WORKFLOW_PAPER_SEARCH.md` | 학술논문 검색/확보 | 국립대병원, 재난정치학 등 |
| `WORKFLOW_CROSSLINK.md` | 제텔카스텐 교차 링크 | 카테고리 간 링크 정비 |

## 원칙
1. **Task 메시지는 짧게** — "Read workflows/XXX.md and execute"
2. **파라미터는 Task에 명시** — source_file, output_dir 등
3. **제약사항은 MD에 명시** — sub-agent는 메인 세션 정책을 모름
4. **ID 범위 사전 지정** — sub-agent 간 충돌 방지

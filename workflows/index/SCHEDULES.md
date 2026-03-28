# Workflow Schedules

- `send-assembly-briefing` → `0 8 * * *` (Asia/Seoul)
- `send-ielts-nudge` → `30 7,12,21 * * *` (Asia/Seoul)
- `check-organization-news` → `0 9 * * 1-5` (Asia/Seoul)

규칙:
- 자연어 schedule(`morning`, `evening`, `twice a day`) 사용 금지
- cron 표현 또는 명시적 시각만 사용
- 변경 시 `workflow.json`과 index를 함께 갱신

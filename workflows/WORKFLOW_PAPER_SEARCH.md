# 학술논문 검색/확보 워크플로우

## 개요
특정 주제의 학술논문을 검색하고 가능한 한 원문을 확보

## 입력
- `topic`: 검색 주제/키워드
- `output_dir`: 저장 폴더
- `known_papers`: 이미 알고 있는 논문 목록 (있으면)

## 실행 단계

### 1단계: Google Scholar 검색
- `web_fetch`로 `scholar.google.com/scholar?q={query}&hl=ko` 접속
- 한글/영문 키워드 조합
- 결과에서 논문명, 저자, 연도, 출처 추출

### 2단계: 오픈액세스 원문 확보 시도
- **의사학(Korean J Med Hist)**: `medhist.or.kr/upload/pdf/kjmh-{vol}-{no}-{page}.pdf`
- **PMC**: `pmc.ncbi.nlm.nih.gov/articles/PMC{id}/`
- **Semantic Scholar**: `pdfs.semanticscholar.org/` PDF 직접 다운로드
- **Google Scholar 캐시**: 저장된 페이지 → 초록+핵심 논지 추출

### 3단계: PDF → 텍스트 변환
```python
import fitz  # pymupdf
doc = fitz.open('논문.pdf')
full = ''.join(page.get_text() for page in doc)
with open('논문.txt', 'w') as f:
    f.write(full)
```

### 4단계: 유료 논문 메타데이터 수집
- **DBpia**: `dbpia.co.kr/journal/articleDetail?nodeId=NODE{id}` → 목차, 초록, 키워드
- **교보문고 스콜라**: `scholar.kyobobook.co.kr/article/detail/{id}`
- **KISS**: `kiss.kstudy.com/Detail/Ar?key={id}`
- 원문은 접근 불가 → 메타데이터만 기록

### 5단계: 결과 정리
- `{output_dir}/참고문헌_목록.md` 업데이트
- 확보된 원문 파일명 기록
- 미확보 논문 + 접근 방법 기록

## 제약사항
- ❌ web_search API 사용 불가 (Brave Search 키 미설정)
- ❌ 브라우저 제어 불가
- ✅ web_fetch만 사용
- ✅ Google Scholar는 web_fetch 가능 (결과 제한적)
- ✅ pymupdf 설치됨 (`pip3 install --user --break-system-packages pymupdf`)

## 완료 조건
- 검색 결과 논문 목록
- 원문 확보 성공/실패 목록
- 참고문헌 파일 업데이트

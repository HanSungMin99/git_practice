# .은 모든 변경사항을 의미. 특정파일만을 add시킬수도 있음
# add는 staging area로 변경사항을 이동함을 의미
git add . 

#commit은 staging area의 변경사항을 확정짓고 commitID를 생성
git commit -m "메시지"

#origin은 원격지를 의미
git push origin 브랜치명

#github 인증방법 2가지
#1.pat토큰발급: github에서 직접 token 발급 → 원도우 자격증명에 직접 등록 해야 한다
#2.vscode, intellij 등 개발 tool을 활용하여 제3자 인증(oauth)

#git 프로젝트 생성방법 2가지
#1.원격 repo 생성 후 clone: .git폴더까지 다운로드
#2.로컬에서부터 먼저 개발된 프로젝트를 추후에 github에 업로드
#2-1) .git폴더를 생성
git init
#2-2) 원격지 주소를 추가
git remote add origin 레포주소
#원격지 주소 변경
git remote set-url origin 레포주소
#원격지 주소 삭제
git remote remove origin 

#git 설정정보 조회
git config --list

#브랜치명 보기: git branch

#강사repo에서 repo 1개 clone 받아서 본인 repo로 만들기
#1.커밋이력 그대로 가져가기: 원격지 주소만 변경
git clone 타인레포주소
git remote set-url origin 본인레포주소
git push origin master #git branch로 브랜치명 확인 후 push, git check-out -b main으로 브랜치명 변경가능

#2.커밋이력 없이 가져가기: .git폴더 삭제 → 원격지 주소 추가
git clone 타인레포주소
.git폴더 삭제
git init
git remote add origin 내레포주소
git checkout -b main #init시 default가 master이므로 main으로 변경
git add .
git commit -m "first 커밋"
git push origin main






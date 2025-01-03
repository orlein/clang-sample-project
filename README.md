# C 프로젝트 - Makefile을 활용한 빌드


---

## 사전 요구 사항
### 필요한 도구
- C 컴파일러 (예: `clang` 또는 `gcc`).
- `make`를 사용하여 Makefile 실행.

### Windows에서 `make` 설치
#### 설치 방법
1. **Git for Windows** 설치:
   - [Git for Windows](https://git-scm.com/) 다운로드 및 설치.
   - Git Bash에서 `make` 사용 가능.

2. **MSYS2** 설치:
   - [MSYS2](https://www.msys2.org/) 다운로드 및 설치.
   - MSYS2 터미널에서 다음 명령 실행:
     ```bash
     pacman -S base-devel
     ```

3. **MinGW-w64**:
   - [MinGW-w64](https://www.mingw-w64.org/) 설치 후 `make` 포함.

4. **Cygwin**:
   - [Cygwin](https://www.cygwin.com/) 설치 후 설치 관리자에서 `make` 추가.

5. **WSL (Windows Subsystem for Linux)**:
   - WSL 활성화 후 리눅스 배포판 설치.
   - 배포판 터미널에서 `build-essential` 패키지 설치:
     ```bash
     sudo apt update
     sudo apt install build-essential
     ```

6. **Chocolatey 사용 (선택 사항)**:
   - Windows PowerShell에서 다음 명령 실행:
     ```powershell
     choco install make
     ```

#### 설치 확인
터미널에서 다음 명령으로 설치 확인:
```bash
make --version
```

## 프로젝트 빌드 방법
1. 프로젝트 디렉토리로 이동:
```bash
cd project-name
```

2. make 명령으로 빌드:
```bash
make
```
결과 바이너리는 bin/ 디렉토리에 생성됩니다 (app 또는 app.exe).

3. 실행 파일 실행:
```bash
./bin/app   # macOS/Linux
bin\app.exe # Windows
```

4. 빌드 파일 정리:

```
make clean
```
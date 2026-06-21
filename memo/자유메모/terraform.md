## 자주쓰는 명령어

```bash
terraform init
```

- 작업 디렉터리를 초기화한다.
- `required_providers`에 맞춰 AWS·random 등 프로바이더 플러그인을 내려받고, 백엔드·모듈 설정을 읽는다.
- 프로바이더 버전을 바꾼 뒤에는 다시 실행해야 할 때가 많다.

```bash
terraform plan
```

- 현재 코드·상태(state) 기준으로 **무엇이 생성·변경·삭제될지**를 미리 보여 준다.
- 실제 인프라에는 아직 손대지 않는다(읽기 위주 + 필요 시 refresh).
- 배포 전에 diff를 검토할 때 쓴다.

```bash
terraform apply -auto-approve
```

- `plan`에서 나온 변경을 **실제로 적용**한다.
- `-auto-approve`는 마지막에 `yes`를 묻지 않고 바로 진행한다. 실수로 지울 수 있으니 로컬 연습·CI 등에서만 쓰는 편이 안전하다.

```bash
terraform destroy -auto-approve
```

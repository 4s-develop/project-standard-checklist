# Hướng dẫn sử dụng Checklist OS (dành cho người mới)

Ngày tạo: 2025-12-25

Mục tiêu: giúp thành viên mới biết **cần làm gì** và **làm thế nào** theo từng phase.

## Cách đọc mỗi mục

Mỗi mục đều có: **Mục đích / Các bước / Công cụ / Đầu ra / Tiêu chí Done / Bằng chứng / Vai trò / Thời gian / Ghi chú cho người mới**.

## Trình tự thực hiện

1. Đọc `checklists/01-requirements.md` và điền tài liệu trên SharePoint.
2. Sau khi xong, mở `quality-gates/gate-requirements.md` để kiểm tra Go/No-Go (cần 2 người ký).
3. Tiếp tục phase **Basic/Detail Design**, rồi **Build & Unit**, **System Test**, **UAT**, **Release**, **Ops**.
4. Mỗi lần review: tạo **議事録** từ `templates/minutes-template.docx` và **link lên PR**.
5. Bằng chứng (Evidence) lưu đúng path trong `evidence/sharepoint-paths.md`.

## Lưu ý cho team ít người

- Tài liệu đã **bundle** để giảm số file phải tạo.
- Kiểm tra tự động (Lint/SAST/SCA) chạy trên CI; **Coverage** và **Accessibility** là **tuỳ chọn**.
- **WAF** bắt buộc ở giai đoạn **Release** và trong **Ops**.

## Liên kết nhanh

- Checklists: `checklists/`
- Quality gates: `quality-gates/`
- Playbooks (SOP): `playbooks/`
- Templates: `templates/`
- Evidence rules: `evidence/`
- CI workflow: `.github/workflows/ci.yml`

-- 회원 존재 여부
SELECT count(*) FROM member_tbl WHERE id='ezen1001';

SELECT count(*) FROM member_tbl WHERE id='abcd1234';

-- 이메일 중복 여부
SELECT count(*) FROM member_tbl WHERE email='ezen8@abcd.com';

SELECT count(*) FROM member_tbl WHERE email='java@abcd.com';
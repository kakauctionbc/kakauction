select * from user_procedures;

select * from user_source
where name = upper('notice_delete');

drop procedure notice_delete;

create procedure notice_delete--프로시저 이름 
(
--매개변수
    p_no number, 
    p_groupNo number,
    p_step number
)
is
--변수선언부
    cnt number;
begin
--처리할 내용
    --답변이 있는 원본글인 경우 - delflag를 Y로 update
    --나머지 경우(답변이 없는 원본글, 답변글) - delete
    --원본글인 경우
    if p_step=0 then
        --답변이 있는 경우
        select count(*) into cnt from notice
        where notice_groupno=p_groupno;      
        if cnt > 1 then
            update notice 
            set notice_delflag='Y'
            where notice_no=p_no;
        else
        --답변이 없는 경우
            delete from notice
            where notice_no=p_no;
        end if;
    else
    --답변글인 경우
        delete from notice
        where notice_no=p_no;    
        --답변글을 삭제한 경우, 삭제된 원본글만
        --남는다면 그 원본글도 삭제한다
        select count(*) into cnt from notice
        where notice_groupno=p_groupno;
        if cnt=1 then
            delete from notice a where exists (
                select 1 from notice b 
                where b.notice_no=a.notice_no and notice_groupno=p_groupno and NOTICE_DELFLAG='Y'); 
        end if;
    end if;
    commit;
EXCEPTION
    WHEN OTHERS THEN
   raise_application_error(-20001, '공지 게시판 글삭제 실패!');
        ROLLBACK;
end;
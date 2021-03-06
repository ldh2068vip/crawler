comment on table public.l_sipo_keyword is '专利网查询公司信息表';
comment on column public.l_sipo_keyword.id is '主键';
comment on column public.l_sipo_keyword.name is '公司名称';
comment on column public.l_sipo_keyword.type is '类型';
comment on column public.l_sipo_keyword.num is '数据爬取次数';
comment on column public.l_sipo_keyword.total_num is '数据爬取总次数';
comment on column public.l_sipo_keyword.priority is '数据爬取优先级别（数字越大，优先级别越高，目前支持的级别为 0 1）';
comment on column public.l_sipo_keyword.state is '数据爬取状态代码';

comment on table public.l_sipo_result is '专利网查询结果表';
comment on column public.l_sipo_result.id is '主键';
comment on column public.l_sipo_result.licenseName is '专利名称';
comment on column public.l_sipo_result.licenseNum is '授权公告号';
comment on column public.l_sipo_result.licenseDate is '授权公告日';
comment on column public.l_sipo_result.applicationNum is '申请号';
comment on column public.l_sipo_result.applicationDate is '申请人';
comment on column public.l_sipo_result.patentHolder is '专利人';
comment on column public.l_sipo_result.applicationNum is 'inventor';
comment on column public.l_sipo_result.address is '地址';
comment on column public.l_sipo_result.classNumber is '分类号';
comment on column public.l_sipo_result.summary is '摘要';
comment on column public.l_sipo_result.num is '参数，关联l_sipo_transactionData表';
comment on column public.l_sipo_result.img is '图片';
comment on column public.l_sipo_result.qrcode is '二维码图片';
comment on column public.l_sipo_result.executetime is '执行时间';
comment on column public.l_sipo_result.sipokeyword_id  is '外键';

comment on table public.l_sipo_transactionData is '专利网查询事务结果表';
comment on column public.l_sipo_transactionData.id is '主键';
comment on column public.l_sipo_result.num is '申请（专利）号';
comment on column public.l_sipo_result.date is '事务数据公告日';
comment on column public.l_sipo_result.type is '事务数据类型';
comment on column public.l_sipo_result.content is '内容';
comment on column public.l_sipo_result.executetime is '执行时间';

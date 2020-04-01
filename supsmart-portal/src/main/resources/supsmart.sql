create table t_auth_user
(
    id           int auto_increment
        primary key,
    realname     varchar(50)  default ''                    not null comment '登录用户名',
    username     varchar(50)  default ''                    not null comment '真实姓名',
    password     varchar(32)  default ''                    not null comment '密码',
    gender       tinyint(1)   default 1                     not null comment '性别',
    header       varchar(128) default ''                    not null comment '头像',
    mobile       varchar(15)  default ''                    not null comment '手机号码',
    status       tinyint(1)   default 2                     not null comment '状态：待审核（0），有效（1），无效（3）',
    birthday     date         default '1900-01-01'          not null,
    education    varchar(20)  default ''                    not null comment '学历：大专、本科、硕士、博士、博士后',
    college_code varchar(50)  default ''                    not null comment '大学编码',
    college_name varchar(100) default ''                    not null comment '大学名称',
    cert_no      varchar(50)  default ''                    not null comment '资格证书编号',
    title        varchar(100) default ''                    not null comment '头衔',
    sign         varchar(500) default ''                    not null comment '签名',
    open_id      varchar(128) default ''                    not null comment '微信公众号openid',
    wechat_id    varchar(100) default ''                    not null comment '微信号',
    qq           varchar(20)  default ''                    not null comment 'qq号',
    login_time   datetime     default '0000-00-00 00:00:00' not null comment '最后一次登录时间',
    ip           varchar(15)  default ''                    not null comment '最后一次登录IP',
    province     varchar(16)  default ''                    not null comment '所在省份',
    city         varchar(16)  default ''                    not null comment '所在城市',
    district     varchar(16)  default ''                    not null comment '所在地区',
    weight       int          default 0                     not null comment '权重',
    create_time  datetime     default '0000-00-00 00:00:00' not null,
    create_user  varchar(32)  default 'system'              not null,
    update_time  timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user  varchar(32)  default 'system'              not null,
    del          tinyint(1)   default 0                     not null,
    constraint T_AUTH_USER_USERNAME_UNIQUE
        unique (username)
)
    comment '用户表' charset = utf8;

INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (1, '王阳明', 'wangyangming', '96E79218965EB72C92A549DD5A330112', 0, '/default/all/0/e811fbdec9ed45f9ba07fd8063f7194c.jpeg', '18001584130', 2, '1900-01-01', '博士后', '', '华南大学dsf', 'fasf', '高级讲师', '擅长人工智能算法11', '', 'zhangsan', '12345678', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-05-06 17:08:46', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (2, '李四', 'lisi', '96E79218965EB72C92A549DD5A330112', 1, '', '18001584131', 0, '1900-01-01', '本科', '', '华东大学', '', '特级讲师', '擅长人工智能算法', '', 'lisi', '', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-03-27 22:28:21', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (3, '赵六', 'zhaoliu', '96E79218965EB72C92A549DD5A330112', 1, '', '18001584132', 2, '1900-01-01', '本科', '', '华中大学', '', '特级讲师', '擅长C语言', '', '', '', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-03-27 22:28:21', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (4, '王五', 'wangwu', '96E79218965EB72C92A549DD5A330112', 1, '', '18001584133', 2, '1900-01-01', '硕士', '', '华南大学', '', '高级讲师', '擅长PHP', '', '', '', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-03-27 22:28:22', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (5, '周八', 'zhouba', '96E79218965EB72C92A549DD5A330112', 1, '', '18001584134', 2, '1900-01-01', '博士', '', '华中大学', '', '特级讲师', '擅长C、Java、PHP', '', '', '', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-03-27 22:28:23', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (6, '王阳明', 'wangyangming2', '96E79218965EB72C92A549DD5A330112', 1, '', '18001584135', 2, '1900-01-01', '博士后', '', '华南大学', '', '高级讲师', '擅长PHP', '', '', '', null, '127.0.0.1', '', '', '', 0, null, 'system', '2017-05-06 15:11:27', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (7, '', '111111', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (8, '', '1111112', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (9, '', '11111123', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (10, '', '22222222', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (11, '', '222222223', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (14, '新的test00005', 'test0005', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (15, '', 'zhangsan111', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (16, '', 'zhangsan112', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (17, '', 'wangyangmi2', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (18, '', 'wangyangmi11', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (19, '', 'zhangsan11111', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (20, '', 'zhangsan111111', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (21, '', '011111', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (22, '', 'test001', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (23, '', 'test002', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 01:11:40', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (24, '', 'wangyangmi1212', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 15:24:14', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (25, '', '11111111111', '7FA8282AD93047A4D6FE6111C93B308A', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 15:24:30', 'system', 0);
INSERT INTO t_auth_user (id, realname, username, password, gender, header, mobile, status, birthday, education, college_code, college_name, cert_no, title, sign, open_id, wechat_id, qq, login_time, ip, province, city, district, weight, create_time, create_user, update_time, update_user, del) VALUES (26, '', 'wangyangmi222', '96E79218965EB72C92A549DD5A330112', 1, '', '', 2, '1900-01-01', '', '', '', '', '', '', '', '', '', null, '', '', '', '', 0, null, 'system', '2017-05-06 15:26:54', 'system', 0);
create table t_consts_classify
(
    id          int auto_increment
        primary key,
    name        varchar(100) default ''                    not null comment '名称',
    code        varchar(50)  default ''                    not null,
    parent_code varchar(50)  default '0'                   not null comment '父级别code',
    sort        int          default 0                     not null comment '排序',
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '课程类别表' charset = utf8;

INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (1, '前端开发', 'fe', '0', 1, null, 'system', '2017-03-06 23:20:25', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (2, '后端开发', 'be', '0', 2, null, 'system', '2017-03-06 23:20:27', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (3, '移动开发', 'mobile', '0', 3, null, 'system', '2017-03-06 23:20:30', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (4, '数据库', 'db', '0', 4, null, 'system', '2017-03-06 23:20:31', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (5, '云计算&大数据', 'cb', '0', 5, null, 'system', '2017-03-06 23:20:43', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (6, 'UI设计', 'ui', '0', 6, null, 'system', '2017-03-06 23:20:45', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (9, 'JQUERY', 'jquery', 'fe', 2, null, 'system', '2017-03-06 23:34:17', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (10, 'Html5', 'html5', 'fe', 3, null, 'system', '2017-03-06 23:34:18', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (11, 'Node.js', 'node', 'fe', 4, null, 'system', '2017-03-06 23:34:18', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (12, 'AngularJS', 'angular', 'fe', 5, null, 'system', '2017-03-06 23:34:19', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (13, 'Bootstrap', 'bootstrap', 'fe', 6, null, 'system', '2017-03-06 23:34:19', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (14, 'WebApp1', 'webapp', 'fe', 7, null, 'system', '2017-04-04 15:31:40', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (15, 'PHP', 'php', 'be', 1, null, 'system', '2017-03-06 23:34:22', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (16, 'Java', 'java', 'be', 2, null, 'system', '2017-03-12 14:54:24', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (17, 'Python', 'python', 'be', 3, null, 'system', '2017-03-06 23:34:24', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (18, 'C', 'c', 'be', 4, null, 'system', '2017-03-06 23:34:25', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (19, 'Android', 'android', 'mobile', 1, null, 'system', '2017-03-06 23:34:27', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (20, 'IOS', 'ios', 'mobile', 2, null, 'system', '2017-03-06 23:34:29', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (21, 'MySQL', 'mysql', 'db', 1, null, 'system', '2017-03-06 23:34:30', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (22, 'MongoDB', 'mongodb', 'db', 2, null, 'system', '2017-03-06 23:34:31', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (23, 'Oracle', 'oracle', 'db', 3, null, 'system', '2017-03-06 23:34:32', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (24, 'SQL Server', 'sqlserver', 'db', 4, null, 'system', '2017-03-06 23:34:33', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (25, '大数据', 'bigdata', 'cb', 1, null, 'system', '2017-03-06 23:34:35', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (26, '云计算', 'cloud', 'cb', 2, null, 'system', '2017-03-06 23:34:37', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (27, '动画动效', 'movie', 'ui', 1, null, 'system', '2017-03-06 23:34:38', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (28, 'APPUI设计', 'appui', 'ui', 2, null, 'system', '2017-03-06 23:34:39', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (29, '设计工具', 'tools', 'ui', 3, null, 'system', '2017-03-06 23:34:41', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (32, 'sss', 'sss', '0', 0, null, 'system', '2017-04-04 15:55:52', 'system', 1);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (33, '机器学习', 'jqxx', '0', 0, null, 'system', '2017-04-06 21:49:07', 'system', 1);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (34, '无人驾驶', 'wrjs', '0', 0, null, 'system', '2017-04-04 15:56:25', 'system', 1);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (35, '无人驾驶', 'wrjs', 'jqxx', 0, null, 'system', '2017-04-04 15:56:35', 'system', 0);
INSERT INTO t_consts_classify (id, name, code, parent_code, sort, create_time, create_user, update_time, update_user, del) VALUES (36, 'Oracle', 'oracle1', 'jqxx', 0, null, 'system', '2017-04-04 16:11:26', 'system', 1);
create table t_consts_college
(
    id          int auto_increment
        primary key,
    name        varchar(100) default ''                    not null comment '名称',
    code        varchar(50)  default ''                    not null comment '编码',
    picture     varchar(100) default ''                    not null comment '图片',
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '高校表结构' charset = utf8;

INSERT INTO t_consts_college (id, name, code, picture, create_time, create_user, update_time, update_user, del) VALUES (6, '中南大学中南大学', 'zndx', '', null, 'system', '2017-05-03 23:29:51', 'system', 0);
INSERT INTO t_consts_college (id, name, code, picture, create_time, create_user, update_time, update_user, del) VALUES (7, '上海大学', 'shdx', '', null, 'system', '2017-03-31 22:52:53', 'system', 0);
INSERT INTO t_consts_college (id, name, code, picture, create_time, create_user, update_time, update_user, del) VALUES (50, '苏州大学', 'szdx', '', null, 'system', '2017-04-04 14:46:12', 'system', 0);
INSERT INTO t_consts_college (id, name, code, picture, create_time, create_user, update_time, update_user, del) VALUES (51, '南京大学', 'njdx', '', null, 'system', '2017-04-04 14:46:21', 'system', 0);
INSERT INTO t_consts_college (id, name, code, picture, create_time, create_user, update_time, update_user, del) VALUES (52, '江苏大学', 'jsdx', '', null, 'system', '2017-04-04 14:46:38', 'system', 0);
create table t_consts_dictionary
(
    id          int auto_increment
        primary key,
    group_code  int          default 0                     not null comment '分组code',
    group_name  varchar(32)  default ''                    not null comment '分组名称',
    `key`       varchar(32)  default ''                    not null comment '键',
    value       varchar(128) default ''                    not null comment '值',
    sort        int          default 0                     not null comment '排序',
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '数据字典：可用于可选项值的配置等' charset = utf8;


create table t_consts_site_carousel
(
    id          int auto_increment
        primary key,
    name        varchar(100) default ''                    not null comment '名称',
    picture     varchar(100) default ''                    not null comment '图片',
    url         varchar(200) default ''                    not null comment '链接',
    weight      int          default 0                     not null comment '权重',
    enable      tinyint(1)   default 0                     not null,
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '首页轮播表' charset = utf8;

INSERT INTO t_consts_site_carousel (id, name, picture, url, weight, enable, create_time, create_user, update_time, update_user, del) VALUES (1, '成为高级的android工程师', '/default/all/0/bc5008d7bf244baea7aa2b98465481c4.jpeg', 'http://baidu.com', 1, 1, null, 'system', '2017-04-06 21:54:50', 'system', 0);
INSERT INTO t_consts_site_carousel (id, name, picture, url, weight, enable, create_time, create_user, update_time, update_user, del) VALUES (2, '开发跨平台的教育系统', '/default/all/0/28bed8dc4b5e48078a1a364a4b624a0d.jpeg', 'http://baidu.com', 1, 1, null, 'system', '2017-04-27 22:57:39', 'system', 0);
INSERT INTO t_consts_site_carousel (id, name, picture, url, weight, enable, create_time, create_user, update_time, update_user, del) VALUES (3, 'ReactJS实战', '/default/all/0/fab11ebb70ca48aca51af0bb42a05530.jpeg', 'http://baidu.com', 1, 1, null, 'system', '2017-04-27 22:57:41', 'system', 0);
INSERT INTO t_consts_site_carousel (id, name, picture, url, weight, enable, create_time, create_user, update_time, update_user, del) VALUES (4, 'AngularJS模仿拉钩网', '/default/all/0/4db0cf1dd51349219c252983c9cba09b.jpeg', 'http://baidu.com', 1, 1, null, 'system', '2017-04-27 22:57:43', 'system', 0);
create table t_course
(
    id                int auto_increment
        primary key,
    name              varchar(255)   default ''                    not null comment '课程名称',
    type              varchar(20)    default ''                    not null comment '课程类型',
    classify          varchar(50)    default ''                    not null comment '课程分类',
    classify_name     varchar(100)   default ''                    not null,
    sub_classify      varchar(50)    default ''                    not null comment '课程二级分类',
    sub_classify_name varchar(100)   default ''                    not null,
    direction         varchar(20)    default ''                    not null comment '课程方向',
    username          varchar(200)   default ''                    not null comment '归属人',
    level             tinyint(1)     default 1                     not null comment '课程级别：1-初级，2-中级，3-高级',
    free              tinyint(1)     default 1                     not null comment '是否免费：0-否，1-是',
    price             decimal(10, 2) default 0.00                  not null comment '课程价格',
    time              varchar(50)    default ''                    not null comment '时长',
    onsale            tinyint(1)     default 0                     not null comment '未上架（0）、上架（1）',
    picture           varchar(255)   default ''                    not null,
    brief             text                                         null comment '课程描述',
    recommend         tinyint(1)     default 0                     not null comment '未推荐（0）、推荐（1）',
    weight            int            default 0                     not null comment '权重',
    study_count       int            default 0                     not null comment '学习人数',
    create_time       datetime       default '0000-00-00 00:00:00' not null,
    create_user       varchar(32)    default 'system'              not null,
    update_time       timestamp      default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user       varchar(32)    default 'system'              not null,
    del               tinyint(1)     default 0                     not null
)
    comment '课程表' charset = utf8;

INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (1, '带您完成神秘的涟漪按钮效果-入门篇', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 3, 0, 149.00, '2小时25分', 1, '', '简介：安卓声音录制与播放功能实现，包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放，还包括录制到字节流', 0, 0, 1452, '2020-03-23 03:48:01', 'system', '2020-03-23 11:48:05', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (2, 'Vue.js高仿饿了么外卖App 最火前端框架 1.0升级2.0
', '', 'be', '后端开发', 'python', 'python', '', 'wangyangming', 1, 0, 249.00, '2小时25分', 1, '', 'Vue.js高仿饿了么外卖App 最火前端框架 1.0升级2.0
Vue.js高仿饿了么外卖App 最火前端框架 1.0升级2.0
vue.js 兼具 angular.js 和 react.js 的优点，并剔除它们的缺点', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (3, '强力django+杀手级xadmin  打造上线标准的在线教育平台', '', 'be', '后端开发', 'php', 'PHP', '', 'wangyangming', 2, 0, 99.00, '2小时25分', 1, '', '全面掌握django框架,轻松应对python web开发工作', 0, 0, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (4, '高性能高可用Yii2.0电商平台 高级组件 MySQL LVS', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 2, 1, 0.00, '2小时25分', 1, '', '进阶更高阶的Yii2.0开发，获得2-3年Yii2.0实战经验', 0, 0, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (5, 'JSP常用标签', '', 'be', '后端开发', 'python', 'python', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '配置及使用常用JSTL标签，这是一项必备的基本技能', 0, 1, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (6, 'AngularJS仿拉勾网WebApp  开发移动端单页应用', '', 'be', '后端开发', 'php', 'PHP', '', 'wangyangming', 2, 0, 100.00, '2小时25分', 1, '', 'AngularJS仿拉勾网WebApp  开发移动端单页应用', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (7, 'Java 分页原理与实践', '', 'be', '后端开发', 'Java', 'Java', '', 'wangyangming', 1, 0, 89.00, '2小时25分', 1, '', 'Java 分页原理，用Hibernate实现下拉加载分页效果', 0, 0, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (8, '微信授权登录', '', 'be', '后端开发', 'c', 'C语言', '', 'wangyangming', 3, 1, 0.00, '2小时25分', 1, '', '教你如何用Java实现微信授权登录，最后介绍公众号和开发平台如何关联', 0, 2, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (9, 'Dwr实现JAVA服务器端向客户端推送消息', '', 'be', '后端开发', 'python', 'python', '', 'wangyangming', 3, 1, 0.00, '2小时25分', 1, '', 'dwr轻松帮你实现server push。', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (10, 'JS+CSS3实现“粽情端午”', '', 'be', '后端开发', 'c', 'C语言', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '用JS和CSS3技术实现3D效果粽子特效动画，掌握动画制作过程', 0, 3, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (11, 'JS实现人机大战之五子棋（UI篇）', '', 'be', '后端开发', 'c', 'C语言', '', 'wangyangming', 2, 1, 0.00, '2小时25分', 1, '', '利用js及canvas绘图知识，实现程序界面编写和交互逻辑处理', 0, 0, 1552, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (12, '在Ubuntu Server下搭建LAMP环境', '', 'be', '后端开发', 'c', 'C语言', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '想学PHP要会搭建LAMP环境，本教程为你学习PHP铺平道路', 0, 5, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (13, 'RBAC打造通用web管理权限', '', 'be', '后端开发', 'c', 'C语言', '', 'wangyangming', 3, 1, 0.00, '2小时25分', 1, '', 'RBAC为商业系统安全防范手段，结合理论和实战介绍RBAC', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (14, '轻松学会Laravel-高级篇sdsdsdsssss', '', 'be', '后端开发', 'java', 'C语言', '', 'wangyangming', 3, 1, 200.00, '2小时25分', 0, '/default/all/0/31d52db3083a42ac9afead43e2a8f1ee.jpeg', 'Laravel框架高级教程，介绍Laravel提供的工具和功能，快来体验', 0, 5, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (15, '基于SSH实现员工管理系统之框架整合篇', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '本教程主要介绍环境搭建和SSH框架整合，逐层深入理解学习', 0, 8, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (16, 'Spring MVC起步', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 0, '', 'Java中Spring MVC框架入门教程，快来看最易用的MVC框架', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (17, 'Struts2入门', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 2, 1, 0.00, '2小时25分', 0, '', '本教程带你踏上Struts2学习之旅，对Struts2进行更深入讲解', 0, 0, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (18, 'Java眼中的XML  文件写入', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '举例说明JAVA程序如何生成XML文档，多种生成方式任你选择', 0, 1, 1552, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (19, 'Java实现邮箱验证', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', '本视频教程主要介绍如何使用JavaMail进行邮箱验证，由浅入深', 0, 2, 1300, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (20, 'JAVA生成二维码', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 0, 299.00, '2小时25分', 1, '', '二维码无处不在，自己动手用Java生成二维码，三种生成方式任你选', 0, 1, 1452, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (21, 'JSP自定义标签', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 0, '', 'JSP自定义标签应用，Java Web开发中一个重要的知识点', 0, 0, 1552, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (22, 'Java高并发秒杀API之高并发优化', '', 'be', '后端开发', 'java', 'Java', '', 'wangyangming', 1, 1, 0.00, '2小时25分', 1, '', 'Java实现高并发秒杀API的第四门课，小伙伴一定可以从中受益', 0, 0, 1552, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (23, '我的测试课程我的测试课程', '', 'fe', '', 'jquery', '', '', 'wangyangming', 1, 1, 100.00, '', 0, '/default/all/0/4fed115013e94fa98ea4ebb7ce8c8ca0.jpeg', '我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程', 0, 3, 0, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (28, '测试批量添加', '', 'fe', '', 'jquery', '', '', 'wangyangming', 1, 1, 0.00, '', 0, '', '我是描述我是描述', 0, 0, 0, null, 'system', '2017-05-06 16:12:35', 'system', 0);
INSERT INTO t_course (id, name, type, classify, classify_name, sub_classify, sub_classify_name, direction, username, level, free, price, time, onsale, picture, brief, recommend, weight, study_count, create_time, create_user, update_time, update_user, del) VALUES (29, '从0到1', '', 'fe', '', 'jquery', '', '', 'wangyangming', 1, 1, 0.00, '', 0, '/default/all/0/958e97eebe4c48f1a49299ed66c92d71.jpeg', '1111', 0, 0, 0, null, 'system', '2017-05-06 16:12:35', 'system', 0);
create table t_course_comment
(
    id            int auto_increment
        primary key,
    username      varchar(200) default ''                    not null comment '用户username',
    to_username   varchar(200) default ''                    not null comment '评论对象username',
    course_id     int          default 0                     not null comment '课程id',
    section_id    int          default 0                     not null comment '章节id',
    section_title varchar(200) default '0'                   not null comment '章节标题',
    content       varchar(255) default '0'                   not null comment '评论内容',
    ref_id        int          default 0                     not null comment '引用id',
    ref_content   varchar(255) default ''                    not null comment '引用内容',
    type          tinyint(11)  default 0                     not null comment '类型：0-评论；1-答疑QA',
    create_time   datetime     default '0000-00-00 00:00:00' not null,
    create_user   varchar(32)  default 'system'              not null,
    update_time   timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user   varchar(32)  default 'system'              not null,
    del           tinyint(1)   default 0                     not null
)
    comment '课程评论&答疑' charset = utf8;

INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (1, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (2, 'lisi', 'zhangsan', 1, 12, '1-2 Java讲的真好', 'Java讲的真好的评论是这样的', 1, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (3, 'zhangsan', '', 1, 12, '1-2 Java讲的真好', '我是问答，我是问答', 0, '我是评论我是评论', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (5, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (6, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (7, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (8, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '我是评论我是评论', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (9, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (10, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (11, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (12, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (14, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (15, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 0, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (19, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (21, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (22, 'lisi', 'zhangsan', 1, 12, '1-2 Java讲的真好', 'Java讲的真好的评论是这样的', 1, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (23, 'zhangsan', '', 1, 12, '1-2 Java讲的真好', '我是问答，我是问答', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (24, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (25, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (26, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (27, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (28, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (29, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (30, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (31, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (32, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (33, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (34, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (35, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (36, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (37, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (38, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (39, 'zhangsan', 'lisi', 1, 12, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', 0, '', 1, '2017-03-26 22:34:54', 'system', '2017-05-06 22:36:01', 'system', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (40, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '我是评论我是评论', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:35', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (41, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:26', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (42, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:28', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (43, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:29', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (44, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:31', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (45, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '我是评论我是评论', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:38', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (46, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:01', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (47, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '发布新的评论', 0, '', 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 22:36:01', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (48, 'wangyangming', '', 1, 23, '5-1 类定义', 'fda', 0, '我是评论我是评论', 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:37', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (49, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '放大法', 0, '', 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:01', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (50, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '我是问答我是问答', 0, '我是评论我是评论', 1, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:38', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (51, 'wangyangming', '', 1, 6, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论', 0, '', 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:01', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (52, 'wangyangming', '', 1, 9, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', 'fdsafadsfdsaf', 0, '我是评论我是评论', 1, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:41', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (53, 'wangyangming', '', 1, 9, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', 'fdsafdsaf', 0, '我是评论我是评论', 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 22:36:42', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (54, 'wangyangming', 'wangyangming', 1, 9, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我是回答我是回答', 53, 'fdsafdsaf', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:12:40', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (55, 'wangyangming', 'wangyangming', 1, 9, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我回答你我回答你我的回答你', 53, 'fdsafdsaf', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:12:38', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (56, 'wangyangming', 'wangyangming', 1, 9, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我我我我我我我我我我我我我我我', 55, '我回答你我回答你我的回答你', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:19:37', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (57, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', 'fdafdsaf', 0, '', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:43:42', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (58, 'wangyangming', '', 1, 12, '3-1 变量的定义、赋值、运算 ', '我是新的评论我是新的评论我是新的评论', 0, '', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:48:19', 'wangyangming', 0);
INSERT INTO t_course_comment (id, username, to_username, course_id, section_id, section_title, content, ref_id, ref_content, type, create_time, create_user, update_time, update_user, del) VALUES (59, 'wangyangming', 'wangyangming', 1, 12, '3-1 变量的定义、赋值、运算 ', '我是新的回答我是新的回答', 58, '我是新的评论我是新的评论我是新的评论', 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 23:49:02', 'wangyangming', 0);
create table t_course_section
(
    id          int auto_increment
        primary key,
    course_id   int          default 0                     not null comment '归属课程id',
    parent_id   int          default 0                     not null comment '父章节id，（只有2级）',
    name        varchar(255) default ''                    not null comment '章节名称',
    sort        int          default 1                     not null comment '排序',
    time        varchar(50)  default ''                    not null comment '时长',
    onsale      tinyint(1)   default 0                     not null comment '未上架（0）、上架（1）',
    video_url   varchar(255) default ''                    not null,
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '课程章节表' charset = utf8;

INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (1, 1, 0, '第1章 课程介绍', 1, '', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 22:44:59', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (2, 1, 0, '第2章 Java关键字讲解', 2, '', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:43:59', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (3, 1, 0, '第3章 语法', 3, '', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:00', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (4, 1, 0, '第4章 函数', 4, '', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:01', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (5, 1, 0, '第5章 类', 5, '', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 23:05:55', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (6, 1, 1, '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', 1, '06:55', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 22:49:23', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (7, 1, 1, '1-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放111', 1, '07:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 22:48:12', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (8, 1, 2, '2-1 使用RecyclerView优雅实现复杂布局-课程介绍 ', 1, '06:00', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (9, 1, 2, '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', 1, '01:30', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (10, 1, 2, '2-3 WebGL带你走进浏览器的3D世界', 1, '06:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (11, 1, 2, '2-4 WebGL带你走进浏览器的3D世界', 1, '07:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (12, 1, 3, '3-1 变量的定义、赋值、运算 ', 1, '06:00', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (13, 1, 3, '3-2 自定义对象User变量的取值 ', 1, '01:30', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (14, 1, 3, '3-3 集合List的遍历', 1, '07:33', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (15, 1, 3, '3-4 集合Map的遍历', 1, '06:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (16, 1, 3, '3-5 if语法', 1, '07:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (17, 1, 3, '3-6 switch语法', 1, '06:00', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (18, 1, 4, '4-1 自定义函数章节简介 ', 1, '01:30', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (19, 1, 4, '4-2 string基本操作指令', 1, '07:33', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (20, 1, 4, '4-3 自定义函数', 1, '06:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (21, 1, 4, '4-4 list排序内建函数、常用指令', 1, '07:46', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (22, 1, 4, '4-5 自定义指令', 1, '06:00', 1, 'http://www.baidu.com', null, 'system', '2017-04-06 23:44:04', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (23, 1, 5, '5-1 类定义', 1, '01:30', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 23:05:54', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (24, 1, 5, '5-2 类创建', 1, '07:33', 1, 'http://www.baidu.com', null, 'system', '2017-04-11 23:05:53', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (31, 28, 0, '章节001', 1, '23:22', 1, '', null, 'system', '2017-04-15 22:27:17', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (32, 28, 31, '001-001', 1, '23:56', 1, 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (33, 28, 31, '001-002', 2, '23:56', 1, 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (34, 28, 0, '章节002', 2, '23:22', 1, '', null, 'system', '2017-04-15 22:27:17', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (35, 28, 34, '章节002-001', 1, '23:56', 1, 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (36, 28, 0, '章节03', 3, '23:22', 1, '', null, 'system', '2017-04-15 22:27:17', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (37, 28, 36, '章节03-01', 1, '00:00', 1, '', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (38, 28, 36, '章节03-02', 2, '00:00', 1, '', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (39, 28, 0, '章节04', 5, '23:22', 1, '', null, 'system', '2017-04-15 22:27:17', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (40, 28, 39, '章节04-01', 1, '00:00', 1, '', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (41, 28, 39, '章节04-02', 2, '00:00', 1, '', '2017-04-15 00:00:00', '', '2017-04-15 22:27:17', '', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (42, 28, 0, 'fdsaf', 6, '', 1, '', null, 'system', '2017-04-15 22:45:00', 'system', 1);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (43, 28, 0, 'fdsaf', 7, '', 1, '', null, 'system', '2017-04-15 22:45:02', 'system', 1);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (44, 28, 0, '第一章：我是第一章', 8, '0:0', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (45, 28, 44, '第一章：我是第一章', 1, '00:00', 1, '第一章：我是第一章', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (46, 28, 44, '', 2, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (47, 28, 44, '', 3, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (48, 28, 44, '', 4, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (49, 28, 0, '第二章：我是第二章', 10, '0:0', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (50, 28, 49, '第二章：我是第二章', 1, '00:00', 1, '第二章：我是第二章', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (51, 28, 49, '', 2, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (52, 28, 49, '', 3, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (53, 28, 49, '', 4, '00:00', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:24:40', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (54, 28, 0, '第一章：我是第一章', 11, '36:6', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (55, 28, 54, '1-001：我是001', 1, '09:00', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (56, 28, 54, '1-001：我是002', 2, '09:01', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (57, 28, 54, '1-001：我是003', 3, '09:02', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (58, 28, 54, '1-001：我是004', 4, '09:03', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (59, 28, 0, '第二章：我是第二章', 13, '32:22', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (60, 28, 59, '2-001：我是001', 1, '08:04', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (61, 28, 59, '2-001：我是002', 2, '08:05', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (62, 28, 59, '2-001：我是003', 3, '08:06', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (63, 28, 59, '2-001：我是004', 4, '08:07', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:34:06', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (64, 29, 0, '第一章：我是第一章', 1, '36:6', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (65, 29, 64, '1-001：我是001', 1, '09:00', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (66, 29, 64, '1-001：我是002', 2, '09:01', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (67, 29, 64, '1-001：我是003', 3, '09:02', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (68, 29, 64, '1-001：我是004', 4, '09:03', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (69, 29, 0, '第二章：我是第二章', 3, '32:22', 1, '', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (70, 29, 69, '2-001：我是001', 1, '08:04', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (71, 29, 69, '2-001：我是002', 2, '08:05', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (72, 29, 69, '2-001：我是003', 3, '08:06', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
INSERT INTO t_course_section (id, course_id, parent_id, name, sort, time, onsale, video_url, create_time, create_user, update_time, update_user, del) VALUES (73, 29, 69, '2-001：我是004', 4, '08:07', 1, 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2017-04-16 14:42:56', 'system', 0);
create table t_user_collections
(
    id          int auto_increment
        primary key,
    user_id     int          default 0                     not null comment '用户id',
    classify    int          default 0                     not null comment '用户收藏分类',
    object_id   int          default 0                     not null comment '收藏内容id',
    tips        varchar(100) default ''                    not null comment '用户收藏备注',
    create_time datetime     default '0000-00-00 00:00:00' not null,
    create_user varchar(32)  default 'system'              not null,
    update_time timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32)  default 'system'              not null,
    del         tinyint(1)   default 0                     not null
)
    comment '用户收藏' charset = utf8;

INSERT INTO t_user_collections (id, user_id, classify, object_id, tips, create_time, create_user, update_time, update_user, del) VALUES (4, 1, 1, 1, '', '2017-05-06 12:00:40', 'system', '2017-05-06 16:16:36', 'system', 0);
INSERT INTO t_user_collections (id, user_id, classify, object_id, tips, create_time, create_user, update_time, update_user, del) VALUES (5, 1, 1, 20, '', '2017-05-06 12:00:40', 'system', '2017-05-06 16:16:38', 'system', 0);
create table t_user_course_section
(
    id          int auto_increment
        primary key,
    user_id     int         default 0                     not null comment '用户id',
    course_id   int         default 0                     not null comment '课程id',
    section_id  int         default 0                     not null comment '章节id',
    status      int         default 0                     not null comment '状态：0-学习中；1-学习结束',
    rate        int         default 0                     not null,
    create_time datetime    default '0000-00-00 00:00:00' not null,
    create_user varchar(32) default 'system'              not null,
    update_time timestamp   default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32) default 'system'              not null,
    del         tinyint(1)  default 0                     not null
)
    comment '用户学习章节表' charset = utf8;

INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (1, 1, 1, 7, 1, 50, '2017-05-03 00:00:00', 'system', '2017-05-06 15:57:39', 'system', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (2, 1, 1, 8, 1, 60, '2017-05-03 00:00:00', 'system', '2017-05-06 15:57:41', 'system', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (3, 1, 1, 12, 0, 0, '2017-05-03 00:00:00', 'wangyangming', '2017-05-06 23:48:21', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (4, 1, 1, 23, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-04 00:01:50', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (5, 2, 1, 24, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:16', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (6, 2, 1, 6, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:17', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (7, 3, 1, 13, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:18', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (8, 3, 1, 14, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:18', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (9, 1, 1, 15, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-04 22:43:44', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (10, 4, 1, 21, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:21', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (11, 4, 1, 9, 0, 0, '2017-05-04 00:00:00', 'wangyangming', '2017-05-06 14:31:22', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (12, 1, 1, 9, 0, 0, '2017-05-06 00:00:00', 'wangyangming', '2017-05-06 16:32:24', 'wangyangming', 0);
INSERT INTO t_user_course_section (id, user_id, course_id, section_id, status, rate, create_time, create_user, update_time, update_user, del) VALUES (13, 1, 1, 6, 0, 0, '2020-03-21 00:00:00', 'wangyangming', '2020-03-21 14:07:42', 'wangyangming', 0);
create table t_user_follows
(
    id          int auto_increment
        primary key,
    user_id     int         default 0                     not null comment '用户id',
    follow_id   int         default 0                     not null comment '关注的用户id',
    create_time datetime    default '0000-00-00 00:00:00' not null,
    create_user varchar(32) default 'system'              not null,
    update_time timestamp   default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user varchar(32) default 'system'              not null,
    del         tinyint(1)  default 0                     not null
)
    comment '用户关注' charset = utf8;

INSERT INTO t_user_follows (id, user_id, follow_id, create_time, create_user, update_time, update_user, del) VALUES (1, 1, 2, null, 'system', '2017-05-06 14:20:50', 'system', 0);
INSERT INTO t_user_follows (id, user_id, follow_id, create_time, create_user, update_time, update_user, del) VALUES (2, 1, 3, null, 'system', '2017-05-06 14:21:08', 'system', 0);
INSERT INTO t_user_follows (id, user_id, follow_id, create_time, create_user, update_time, update_user, del) VALUES (3, 1, 4, null, 'system', '2017-05-06 14:21:10', 'system', 0);
INSERT INTO t_user_follows (id, user_id, follow_id, create_time, create_user, update_time, update_user, del) VALUES (4, 1, 5, null, 'system', '2017-05-06 14:21:16', 'system', 0);
create table t_user_message
(
    id             int                                        not null
        primary key,
    user_id        int          default 0                     not null comment '消息接收用户id',
    send_user_id   int          default 0                     not null comment '消息发起用户id',
    send_user_name varchar(20)  default ''                    not null comment '消息发起用户名称',
    ref_id         varchar(50)  default '0'                   not null comment '引用id',
    ref_Content    varchar(256) default ''                    not null comment '引用内容',
    type           tinyint(1)   default 0                     not null comment '通知的类型，1-评论，2-关注，3-答疑',
    status         tinyint(1)   default 0                     not null comment '未读（0）、已读（1）',
    create_time    datetime     default '0000-00-00 00:00:00' not null,
    create_user    varchar(32)  default 'system'              not null,
    update_time    timestamp    default CURRENT_TIMESTAMP     not null on update CURRENT_TIMESTAMP,
    update_user    varchar(32)  default 'system'              not null,
    del            tinyint(1)   default 0                     not null
)
    charset = utf8;


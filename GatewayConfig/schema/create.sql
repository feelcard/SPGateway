-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        8.0.15 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5934
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- auth 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  */;
USE `auth`;

-- 테이블 auth.gateway_cluster 구조 내보내기
CREATE TABLE IF NOT EXISTS `gateway_cluster` (
  `gateway_id` varchar(256) NOT NULL,
  `secret_key` varchar(256) NOT NULL,
  `main_yn` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT 'N',
  `expired_time` mediumint(9) DEFAULT '3600',
  `certificate_file` mediumblob,
  `certificate_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gateway_id`),
  UNIQUE KEY `PK_gateway_cluster` (`gateway_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ;

-- 테이블 데이터 auth.gateway_cluster:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gateway_cluster` DISABLE KEYS */;
INSERT INTO `gateway_cluster` (`gateway_id`, `secret_key`, `main_yn`, `expired_time`, `certificate_file`, `certificate_password`) VALUES
	('MAIN_CLUSTER', 'Cq91Ql5po/mjaRT5g0Nbsc04wVdPIJxPeHH3H7hELQyB974TXQturOOUWnfLc9e', 'Y', 3600, _binary 0x30820A2D020103308209E606092A864886F70D010701A08209D7048209D3308209CF3082057306092A864886F70D010701A0820564048205603082055C30820558060B2A864886F70D010C0A0102A08204FB308204F73029060A2A864886F70D010C0103301B0414C07F87EE96A0AEE81A4BBBE8A96C769E62FAD810020300C350048204C8D277ADFB1A16A7C55968F7830697C27480E8F06DD34F314F7E25EBC463F7DF4413CC7E9BBBB7BF279D170E3F48C3F8ED56BB670262738239238038D69E9C2A4BB8A63D0375B57916F6DB636CEB66FDC527C39B12BA3D73ED6D288ACC45C97C67131501F5FAC8403901BCEF6559DBCABBAC9F4A60DEB89849B271A30F07041A19AFC16F5ECF73D4777F5144177EE185780569F1710A96659FE820D5B9C3039FB5B8DD3A4981FAB5D362A5B454F99DC3C67A1DE18720C26DA7CD30D99391DFB1582DAFDA07E77C850AD52A2554EA76898800BC470CFE80A225CB214846601C1EDF685036FC284F1D4C89423FB11768594271B302AA0E1813362358B838A658CC1188BFE669AEB0F0FBC60B09B930609A7932B2AE9CD5B3DA8816AE67FBBC29934D818DF8E32883F8AA762922CF055B7644ABECEFDAE5E753A52188F6106B31924B55397D5F337DC99A859B497D596CF5738F6B7E220B9914C17400077CEDF19BE337C5B96548BB38C2669AF555AC5B1D2A8320E623483E8595F77B551377773188F6F3D79AA01A10D94D207F1A580D9F0D38DAFFECD25BAFEE6234641D55A0B79963CACD52139245F523B0799B12932E3BDADD33EED97807B0C577CDC430C9E1258315B8166BB11A31E716F312A0AE5382AF6634F45442FFB99619DB1B40EF1F2A6CF6D45B25A3305D3B89AAE27B91D372D784D519E1C56C27DB6CEF840701BE9E0C1095ABB6EB33544B1A2E5F817F4886638AC0BBFE49A0ED18D2E853B627D29B36F80526A99A201C8A5C939F97B1941F7F706F55E3FCDCA69DE2C4D723E2DAA09F243324ECFD6592EF56C84DD65AE6C6328D271F3A1B7FD8773D30EE32AFA7018B9613612C62FA315DF5DCF0E1563E292F6EA5FF27492AC89035686FD09A9528EDD27FF0DF5077CED154D8A2E9E1E4702C0AB95242A9B5D7666FBE8D9BD71B360E9E90EF08BA69DB13A03E63830323A5E57D16D25898D564A3E945C1FC118DB5E8C92A9DB77121CB27DD1BAC8513A4AA98E41BFADD8F16D44D12481C4943C2A3F508D61C7DEFD8E0E00F053C8C606D6F0BC32F6EA738D379337F1C9230E49E661EC0E4227D3BA8264A07A76C5324C5C2BFB666A04EC6020594D782D1DF435F77255A1F9D3BEC8F9E65DE8C50DC1A242F222E83509546A9BC3B492A4F4CAD48BF1E5DC8A114EFBE12C6A7C55F37C2800280DDA693F746C4881046A7EABA99214E1545EF65BF478737A7464923D66F9AA0DD23DFD824581EFD09F38105051A1AB20D3099DA1BEB113713937C2857CE0A1CCFDF95CB5E3CEF3F23D4159162B8563DF3DBB19FE99909092BD003CF50D4CCF3E5E298FB593E2DC4D6618758512321A9D3A70C35186404FC3BCBD33F6CFA1E966592037BD0C5B2641CBBF6667ECBD4A7E942C5418967188719FC11E81F791315ABE9A1D287299E2ABE6C61BD4B921ED7117026AC0EA0E18AEA421F5E6C08EB0A37AB102BD130FE1E9CAB191F00A85ADF13E7AFC407327E512A34E19AFF2ED99D15EE7CA8645A4FCBA0AFD2A3AA6BA2D45A5DA67A009F668361E80B79AECE9D02AFB362E094ABCCF18B12119C9E5C70729497282BFFB0F4C7087F8D7060F01C9F473E64AC8FF6D68C5216D958BAB7970E09C782851B540DC172B3D1B9156AA4A27C35B6F67B5BFC39C16068E0BC69A3CB168D30B0D4C3E8C51B82D9626E6109A47DB0C6796BB37A1CFDA7F02565D721216F00C3560596895A314A302506092A864886F70D01091431181E160067006100740065007700610079005F00730073006C302106092A864886F70D0109153114041254696D6520313631303631333538303535333082045406092A864886F70D010706A0820445308204410201003082043A06092A864886F70D0107013029060A2A864886F70D010C0106301B04143C623B58D432A0DDAB84AE1F77B368F8B981C8E6020300C350808204007CE97A2CB49315B3FC3782D5323E52E7A0E5CD187668F62E5ABEB6170F96C8AD68391C8D0F40513F224D2065B8B266AD6579E3C5DB4B2E25BBDB9E6914BB5DDC76DBBBCD51035768C61A9EF998CD3BA0E24FEBF0420BD6DF8535ABF5AAE1A69D5D6584A12FC8E5AF61522BD4F183BB66F798AFB36A2C9201E4C83F16CB028AC33F024E52243B174F00FD2F0FEDEF0B3E56CD24D3FD55A436B1E0E147EEC60130AF3BEA45F06843376CBB2AEFDDC0284A33D52966563EC6B4AB3E8CDED578D6377317990B69FFE39AB68908AA86855180FF3BBE7805B9E5DF22F3FAA6ED335187D741BBA7A9634E749BC62BE72C93DC8DC94668072D0F992663E9B4F3016C9725D77052D5B1269B2236F499EF4A55D1E58CF637D0C5E8E472D8924DAF748A449CF100064EA9A194B025C642AA5E50BED751FE79160213B841B16AE515E7B6BA3C20D5FF7708F230E5C0BAE5D209690380C045413FF5EC683A9CD6AC31AF13635F2E10B0FC98266C8EBD5592C71968E7684286D66F8DDE92F82D2A687A38348A31C02C9DC2772541205622270ACFC2A8F671C68A730D9499B6E49AA90CDB06EEC0137192021A812F0A7F87A202A5E83F1DA5CC6EC1BCD1200F4E8B521828A19AD0AD3D7EA8CFA03E4FD3E22C5584475D32F5AADADFEE0DC1816B495987B28F0373D4520C60E2C228330D1E0E2F4A46A882961A0B47FD97783AA521E5070BB856F304F28EA2D5250934C5EE58F6C4F52AC12607CEF8CECDCC0C4F37D1881A6700B70CCA814BAD3418196284508EB34D069884C9D846EB1EFC5305586F408B21B55AF397F3245D60CAF0D30D433818792E200157F027423DB6D656E398CFCE3FFE820E9EC0FC5C6578790373202E2570942B23542D20EAE9ED77C861AD6DF5D02D2DCACF92286E7F17A71FEA53D156CA62DEDDA2CD2B06C5D8B36D1E5E2452FA4945B6E1E6ADFBF0AA75CDDD37C6BCD3AC06EA16B337508D125AF831510758BDD28592A73D59DE0DF7CFCC04E82ED8C0FCF22AE276E4AF0409F9E361084771EB1A093F562C73D2187FE98D35AB18D3F865783FCC161E68D1F056E4486EBD40944DEC21394F8DD142E067C839FE50CF969518649727FA434DA3445125169ADD491E7232C735A8B51C3115D74A92DF81D0C39D2BC7F5DD2000294226923876DE8622CC9D83F0F601EF3A29AB686F0F9404004FD90F93F10C56C63E9242C5D8A7511EA41DBE9AF424816EEB99EF9B727C8B7A55398F5AA77C214BF5C34AFC2E6C0F1DB7D93D7434F809CD2CEB375C625CE307794A8849D19ECCD7994BC7EF1A945A1196EFABF948491D7860C4248DC5A6D860F8A4ED44B583A48C971B7676B5AF958EC21406A0749BD690FD7CF755B47A9451BE0A3AFC8FA501BABEC4C7F676BCDA7D7F92AF9AEFF98FA397ED1B8E5243253E1F3D813C80F3DEC69C7C5748E133E65931303E3021300906052B0E03021A05000414C810D79C1A94BB8E64D6F253081C83A7F84A59610414714B909C102FF56C67BE4662632367E28CDCF41D02030186A0, 'rudxo1');
/*!40000 ALTER TABLE `gateway_cluster` ENABLE KEYS */;

-- 테이블 auth.oauth_access_token 구조 내보내기
CREATE TABLE IF NOT EXISTS `oauth_access_token` (
  `authentication_id` varchar(256) NOT NULL COMMENT '인증 ID',
  `token_id` varchar(256) NOT NULL COMMENT '토큰 ID',
  `token` mediumblob NOT NULL COMMENT '토큰',
  `user_name` varchar(256) NOT NULL COMMENT '사용자명',
  `client_id` varchar(256) NOT NULL COMMENT '클라이언트 ID',
  `authentication` mediumblob NOT NULL COMMENT '인증키',
  `refresh_token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '리프레시 토큰',
  `additional_info` varchar(512) DEFAULT NULL,
  `expired_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`),
  UNIQUE KEY `token_id` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='Access 토킅 테이블';

-- 테이블 데이터 auth.oauth_access_token:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;

-- 테이블 auth.oauth_client_details 구조 내보내기
CREATE TABLE IF NOT EXISTS `oauth_client_details` (
  `client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '클라이언트 ID',
  `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '리소스 정보',
  `client_secret` varchar(256) DEFAULT NULL COMMENT '클라이언트 Secret',
  `scope` varchar(256) DEFAULT NULL COMMENT 'SCOPE',
  `authorized_grant_types` varchar(256) DEFAULT NULL COMMENT 'OAuth 인증 타입',
  `web_server_redirect_uri` varchar(256) DEFAULT NULL COMMENT '전달 URI',
  `authorities` varchar(256) DEFAULT NULL COMMENT '권한',
  `access_token_validity` int(11) DEFAULT NULL COMMENT '억세스 토큰 유효성',
  `refresh_token_validity` int(11) DEFAULT NULL COMMENT '리프레시 토큰 유효성',
  `additional_information` varchar(4096) DEFAULT NULL COMMENT '추가 정보',
  `autoapprove` varchar(256) DEFAULT NULL COMMENT '자동 승인',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='인증 클라이언트 정보 테이블';

-- 테이블 데이터 auth.oauth_client_details:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES
	('client', NULL, '{bcrypt}$2a$10$iP9ejueOGXO29.Yio7rqeuW9.yOC4YaV8fJp3eIWbP45eZSHFEwMG', 'read_profile,read_posts', 'password,client_credentials,refresh_token', 'http://localhost:7777/callback', NULL, 3600, 6000, NULL, 'false'),
	('GatewayPortal', NULL, '{bcrypt}$2a$10$9vrW1naGJuHR5N0MwJU3Vux8lPcBwuJn5LfBpv6vLyNQ480FEnzdG', 'read_profile', 'password,client_credentials,refresh_token', NULL, NULL, 3600, 6000, NULL, NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;

-- 테이블 auth.oauth_refresh_token 구조 내보내기
CREATE TABLE IF NOT EXISTS `oauth_refresh_token` (
  `token_id` varchar(256) NOT NULL COMMENT '토큰 ID',
  `token` mediumblob NOT NULL COMMENT '토큰',
  `authentication` mediumblob NOT NULL COMMENT '인증키',
  `expired_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='리프레시 토큰 테이블';

-- 테이블 데이터 auth.oauth_refresh_token:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;

-- 테이블 auth.sp_apis 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_apis` (
  `API_ID` int(11) NOT NULL COMMENT 'API ID',
  `API_NM` varchar(20) NOT NULL COMMENT 'API 명',
  `API_URL` varchar(50) NOT NULL COMMENT 'API URL',
  `USE_YN` varchar(2) DEFAULT NULL COMMENT '사용 유무',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`API_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='API 관리 테이블';

-- 테이블 데이터 auth.sp_apis:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_apis` DISABLE KEYS */;
INSERT INTO `sp_apis` (`API_ID`, `API_NM`, `API_URL`, `USE_YN`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, '포탈_API 관리', '/portal/service/v1/routes', 'Y', '2020-11-04 15:59:25', '2020-11-04 15:59:26', '1', '1'),
	(2, '포탈 APP 관리', '/portal/service/v1/app', 'Y', '2020-11-04 16:12:02', '2020-11-04 16:12:03', '1', '1'),
	(3, '포탈 필터 관리', '/portal/service/v1/filter', 'Y', '2020-11-04 16:12:26', '2020-11-04 16:12:26', '1', '1');
/*!40000 ALTER TABLE `sp_apis` ENABLE KEYS */;

-- 테이블 auth.sp_groups 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_groups` (
  `GROUP_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '그룹 ID',
  `GROUP_NM` varchar(20) NOT NULL COMMENT '그룹명',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='새 테이블3';

-- 테이블 데이터 auth.sp_groups:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_groups` DISABLE KEYS */;
INSERT INTO `sp_groups` (`GROUP_ID`, `GROUP_NM`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, '포탈 시스템', '2020-11-09 10:40:35', '2020-11-09 10:40:35', 'initialize', 'initialize'),
	(5, '앱 등록 테스트222', '2021-01-04 13:57:31', '2021-01-04 13:57:31', 'default', NULL);
/*!40000 ALTER TABLE `sp_groups` ENABLE KEYS */;

-- 테이블 auth.sp_menus 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_menus` (
  `MENU_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '메뉴 ID',
  `MENU_NM` varchar(20) NOT NULL COMMENT '메뉴명',
  `MENU_URL` varchar(50) NOT NULL COMMENT '메뉴 URL',
  `USE_YN` varchar(2) DEFAULT NULL COMMENT '사용 유무',
  `PARENT_ID` int(11) DEFAULT NULL COMMENT '상위 메뉴 ID',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='메뉴 관리 테이블';

-- 테이블 데이터 auth.sp_menus:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_menus` DISABLE KEYS */;
INSERT INTO `sp_menus` (`MENU_ID`, `MENU_NM`, `MENU_URL`, `USE_YN`, `PARENT_ID`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, 'API', '/portal/api', 'Y', NULL, '2020-11-09 10:42:15', '2020-11-09 10:42:16', 'initialize', 'initialize'),
	(2, 'APP', '/portal/app', 'Y', NULL, '2020-11-09 10:42:32', '2020-11-09 10:42:33', 'initialize', 'initialize');
/*!40000 ALTER TABLE `sp_menus` ENABLE KEYS */;

-- 테이블 auth.sp_roles 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '권한 ID',
  `ROLE_CD` varchar(10) NOT NULL COMMENT '권한 코드',
  `ROLE_NM` varchar(15) NOT NULL COMMENT '권한명',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한 테이블2';

-- 테이블 데이터 auth.sp_roles:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_roles` DISABLE KEYS */;
INSERT INTO `sp_roles` (`ROLE_ID`, `ROLE_CD`, `ROLE_NM`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, 'USER', '사용자 권한', '2020-11-09 10:41:22', '2020-11-09 10:41:23', 'initialize', 'initialize');
/*!40000 ALTER TABLE `sp_roles` ENABLE KEYS */;

-- 테이블 auth.sp_role_api_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_role_api_mapping` (
  `API_ID` int(11) NOT NULL COMMENT 'API ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  PRIMARY KEY (`API_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한-API 매핑';

-- 테이블 데이터 auth.sp_role_api_mapping:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_role_api_mapping` DISABLE KEYS */;
INSERT INTO `sp_role_api_mapping` (`API_ID`, `ROLE_ID`) VALUES
	(1, 1),
	(2, 1),
	(3, 1);
/*!40000 ALTER TABLE `sp_role_api_mapping` ENABLE KEYS */;

-- 테이블 auth.sp_role_menu_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_role_menu_mapping` (
  `MENU_ID` int(11) NOT NULL COMMENT '메뉴 ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  PRIMARY KEY (`MENU_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한-메뉴 매핑';

-- 테이블 데이터 auth.sp_role_menu_mapping:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_role_menu_mapping` DISABLE KEYS */;
INSERT INTO `sp_role_menu_mapping` (`MENU_ID`, `ROLE_ID`) VALUES
	(1, 1),
	(2, 1);
/*!40000 ALTER TABLE `sp_role_menu_mapping` ENABLE KEYS */;

-- 테이블 auth.sp_users 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '사용자 ID',
  `GROUP_ID` int(11) NOT NULL COMMENT '그룹 ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  `USER_NM` varchar(10) NOT NULL COMMENT '사용자 이름',
  `USER_LOGIN_ID` varchar(20) NOT NULL COMMENT '사용자 로그인 ID',
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '비밀번호',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`USER_ID`,`GROUP_ID`,`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='사용자 테이블2';

-- 테이블 데이터 auth.sp_users:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_users` DISABLE KEYS */;
INSERT INTO `sp_users` (`USER_ID`, `GROUP_ID`, `ROLE_ID`, `USER_NM`, `USER_LOGIN_ID`, `PASSWORD`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(3, 1, 1, '구경태', 'kookyungte', '$2a$10$p2cg6uu7dSbQvnqz4Bxd7O63u2ytBhVVvJkzfRdTzM8Nsd7It3bYa', NULL, NULL, NULL, NULL),
	(7, 1, 1, '이선호', 'tjsghman', '$2a$10$6Hr7JAxjPRA65yUsSOsVeOr.PlBFZHAF8gE6BLWWm6FNSRzE2aKQ.', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sp_users` ENABLE KEYS */;


-- gateway 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `gateway` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  */;
USE `gateway`;

-- 테이블 gateway.gw_app 구조 내보내기
CREATE TABLE IF NOT EXISTS `gw_app` (
  `APP_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '앱 ID',
  `APP_NM` varchar(20) NOT NULL COMMENT '앱 이름',
  `APP_KEY` varchar(64) NOT NULL COMMENT '앱 키',
  `APP_DESC` varchar(256) DEFAULT NULL COMMENT '앱 설명',
  `USE_YN` varchar(2) DEFAULT 'Y' COMMENT '앱 사용 유무',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`APP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='앱 관리 테이블';

-- 테이블 데이터 gateway.gw_app:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gw_app` DISABLE KEYS */;
INSERT INTO `gw_app` (`APP_ID`, `APP_NM`, `APP_KEY`, `APP_DESC`, `USE_YN`, `REG_USER_NO`, `UPT_USER_NO`, `REG_DT`, `UPT_DT`) VALUES
	(1, '앱 수정 테스트 서비스', '98kxl92BqOR9bI4nnfq7mePyP', '앱 수정 테스트', NULL, '1', '1', '2020-08-31 19:20:16', '2020-10-28 17:34:53'),
	(2, '앱 신규 테스트', '1LFdYAJ466D5djqtcdlEombH1', '앱 테스트', NULL, '1', '1', '2020-09-02 14:49:15', '2020-10-28 18:03:27'),
	(4, '앱  테스트22234', '6uWWsRcOrhR6VcPB2EICesUMb', '앱 테스트', NULL, '1', '1', '2020-10-28 10:37:09', '2020-10-28 15:27:14');
/*!40000 ALTER TABLE `gw_app` ENABLE KEYS */;

-- 테이블 gateway.gw_error_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `gw_error_log` (
  `GUID` varchar(36) NOT NULL COMMENT 'GUID',
  `ERR_DESC` varchar(500) NOT NULL COMMENT '에러 내용',
  `ERR_DT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '에러 발생 시간',
  `SERVICE_DESC` varchar(50) DEFAULT NULL COMMENT '서비스 정보',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='오류 로그 테이블';

-- 테이블 데이터 gateway.gw_error_log:~271 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gw_error_log` DISABLE KEYS */;
INSERT INTO `gw_error_log` (`GUID`, `ERR_DESC`, `ERR_DT`, `SERVICE_DESC`, `REG_USER_NO`) VALUES
	('', 'Cannot deserialize value of type `java.lang.Long` from String "a": not a valid Long value\n at [Source: (PushbackInputStream); line: 7, column: 15] (through reference chain: com.kbds.serviceapi.apis.dto.RoutingDTO["filterId"])', '2020-06-22 11:17:51', '', ''),
	('007f5772-79b5-46ea-b18e-55a619a857cf', 'org.springframework.orm.jpa.JpaObjectRetrievalFailureException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10; nested exception is javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:21:02', 'updateService', '1'),
	('013aa9ab-0ec5-11eb-a232-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:01:26', '/api/service/v1/routes/', '1'),
	('01cf147b-b770-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 14:43:48', '/api/service/v1/filter/1', '1'),
	('01d7ccfa-3178-44e7-8d4e-ba42c40bd9e7', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.u', '2020-06-22 13:17:11', 'findGwServices', '1'),
	('02097249-3f63-4a4e-8654-8e4da3b2fb30', 'java.lang.NullPointerException', '2020-06-17 09:47:37', 'Gateway Routes Refresh', '1'),
	('02bfcb9d-2264-11eb-9aca-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-11-09 17:17:30', '/portal/v1.0/menu', '1'),
	('05b70b4b-0e75-4f6f-9ee2-67277e55e15c', 'Required parameters is Null', '2020-05-21 15:21:32', 'registService', '1'),
	('079745e9-4432-11eb-9a06-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Unable to locate Attribute  with the the given name [serviceId] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]; nested exception is java.lang.IllegalArgumentException: Unable to locate Attribute  with the the given name [serviceId] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]', '2020-12-22 17:45:23', '/portal/service/v1.0/routes/gateway', '1'),
	('0872014b-2ad2-11eb-8885-9883899f9cdb', '[401] during [POST] to [http://localhost:7777/oauth/token?username=kookyungte&password=rudxo1%27&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"timestamp":"2020-11-20T01:45:13.808+0000","status":401,"error":"Unauthorized","message":"Unauthorized","path":"/oauth/token"}]', '2020-11-20 10:45:14', '/portal/v1.0/user/login', '1'),
	('08931427-872a-4d4c-b9ed-d01e7e8b4702', 'Required parameters is Null', '2020-05-26 10:53:12', 'updateService', '1'),
	('08ace4a9-0f79-11eb-b1d0-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:30:08', '/api/service/v1/routes', '1'),
	('096531f9-53cc-471d-b805-4279cee1cfa3', 'Required parameters is Null', '2020-06-16 09:01:19', 'updateService', '1'),
	('0a5be68c-c1d8-4924-87f2-fedc027b5569', 'java.lang.NullPointerException', '2020-06-17 09:14:03', 'Gateway Routes Refresh', '1'),
	('0af64af9-18e6-11eb-a275-9883899f9cdb', 'Required parameters is Null', '2020-10-28 15:23:07', '/portal/service/v1/app/4', '1'),
	('0b5411b9-4430-11eb-9720-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Unable to locate Attribute  with the the given name [gwService] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]; nested exception is java.lang.IllegalArgumentException: Unable to locate Attribute  with the the given name [gwService] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]', '2020-12-22 17:31:10', '/portal/service/v1.0/routes/gateway', '1'),
	('0c3c4b8f-a4a4-46d9-9f29-9ec8cc07187d', 'BizException(arg=존재하지 않는 데이터입니다.)', '2020-05-06 10:39:53', 'deleteService', '1'),
	('0c65f18e-ac42-4cf8-a3fb-77a8dc70568d', 'java.lang.NullPointerException', '2020-06-19 14:50:25', 'Gateway Routes Refresh', '1'),
	('0cddf989-1ff3-11eb-a61b-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=pass1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-06 14:43:52', '/portal/v1.0/user/login', '1'),
	('0e52f609-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:02:58', '/api/service/v1/routes', '1'),
	('0e77fc79-0ec6-11eb-9e81-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:08:57', '/api/service/v1/routes/', '1'),
	('0f91594d-b772-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 14:58:30', '/api/service/v1/filter/1', '1'),
	('0fae44fc-2ad2-11eb-8885-9883899f9cdb', '[401] during [POST] to [http://localhost:7777/oauth/token?username=kookyungte&password=rudxo1%27&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"timestamp":"2020-11-20T01:45:25.947+0000","status":401,"error":"Unauthorized","message":"Unauthorized","path":"/oauth/token"}]', '2020-11-20 10:45:26', '/portal/v1.0/user/login', '1'),
	('1091b7b9-b450-11ea-9d15-9883899f9cdb', 'Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: "AA"', '2020-06-22 15:17:36', '/api/service/v1/routes/AA', '1'),
	('111f67b9-ff0d-11ea-9d2d-9883899f9cdb', 'JSON parse error: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: COM008; nested exception is com.fasterxml.jackson.databind.exc.ValueInstantiationException: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: COM008\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.RoutingDTO["serviceLoginType"])', '2020-09-25 17:56:58', '/api/service/v1/routes/', '1'),
	('11d3f12e-6940-4914-8443-c7af8b918fc2', 'org.hibernate.InstantiationException: No default constructor for entity:  : com.kbds.serviceapi.apis.entity.GwServiceAppMapping', '2020-05-26 11:04:56', 'updateService', '1'),
	('12c037dd-b782-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 16:53:08', '/api/service/v1/filter/1', '1'),
	('13d707d9-06c7-11eb-ac91-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 13:56:07', '/api/service/v1/routes/', '1'),
	('13fd9041-1e9a-43af-8e2a-1cafb4060adf', 'java.lang.NullPointerException', '2020-06-19 14:47:18', 'Gateway Routes Refresh', '1'),
	('167f9319-b9da-11ea-ba4d-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-06-29 16:28:12', '/api/service/v1/app/', '1'),
	('16962696-c74a-4733-827f-b2734ef50273', 'java.lang.NullPointerException', '2020-06-19 14:15:22', 'Gateway Routes Refresh', '1'),
	('181519b9-b454-11ea-95e7-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long): [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filterDTO.fi', '2020-06-22 15:46:26', '/api/service/v1/filter/3', '1'),
	('18d43669-dbd4-41af-8962-680788df98d2', 'org.springframework.dao.InvalidDataAccessApiUsageException: Value must not be null!; nested exception is java.lang.IllegalArgumentException: Value must not be null!', '2020-05-26 11:03:09', 'updateService', '1'),
	('1ccb9d7a-19a0-11eb-878f-9883899f9cdb', 'BizException(msg=null)', '2020-10-29 13:35:03', '/api/service/v1/routes/67', '1'),
	('1ce03fc2-f07e-4e91-9bff-9c21271fb907', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 13:52:04', 'findGwServices', '1'),
	('1d1b57fd-aa26-43c7-a838-51ad453d27db', '이미 등록된 데이터입니다.', '2020-06-16 09:01:57', 'updateService', '1'),
	('1d9ab41f-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 17:22:04', '/api/service/v1/filter/1', '1'),
	('1db4764a-b454-11ea-95e7-9883899f9cdb', 'Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: "AA"', '2020-06-22 15:46:36', '/api/service/v1/filter/AA', '1'),
	('1eadd9df-b988-46cf-9a01-7801f58a8e89', 'java.lang.NullPointerException', '2020-05-25 16:02:51', 'registService', '1'),
	('1f557dcd-8c71-4206-bbc1-3e0fc164d81c', 'java.lang.IllegalStateException: executor not accepting a task', '2020-06-17 09:07:12', 'Gateway Routes Refresh', '1'),
	('1f9b0593-f4a2-4a28-8aad-a21f9b9d5dc0', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:10:15', 'findGwServices', '1'),
	('1fc7aafe-d102-4157-8c1f-40339e17d0ed', 'Required parameters is Null', '2020-05-26 10:39:40', 'updateService', '1'),
	('20e817c1-5e41-4bec-8f10-d1e1b0da3d60', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.hql.internal.ast.QuerySyntaxException: unexpected token: , near line 1, column 56 [select gwService.serviceId, gwService.filter.filterId, , gwService.serviceNm, gwService.servicePath, gwService.serviceTargetUrl, gwService.serviceDesc, gwService.serviceLoginType, gwService.serviceAuthType, gwService.useYn, gwService.filter.filterBean, gwService.filter.useYn, gwService.regUserNo, gwService.uptUserNo, gwService.regDt, gwServi', '2020-05-26 16:00:32', 'findServices', '1'),
	('210a4b29-ff0a-11ea-bccc-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:35:56', '/api/service/v1/routes/', '1'),
	('215ce2fd-f11b-4151-b0c5-e745e979f427', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-06-22 13:19:14', 'findServices', '1'),
	('23bc01da-2af5-11eb-a277-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.framework.controller.SPUserController.register(com.kbds.serviceapi.framework.dto.UserDTO) with 3 errors: [Field error in object \'userDTO\' on field \'password\': rejected value [null]; codes [NotEmpty.userDTO.password,NotEmpty.password,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [userDTO.password,pass', '2020-11-20 14:56:32', '/portal/v1.0/user', '1'),
	('24af2bd9-b44e-11ea-8b7c-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 15:03:50', '/api/service/v1/routes/12', '1'),
	('250a9bb9-12a8-11eb-8303-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:44:55', '/api/service/v1/routes', '1'),
	('25911dd5-75d6-4bf1-a525-aec04cb19b17', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 09:17:33', 'registService', '1'),
	('262cb779-06c9-11eb-b718-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:10:56', '/api/service/v1/routes/', '1'),
	('2657d479-2acb-11eb-8885-9883899f9cdb', '[401] during [POST] to [http://localhost:7777/oauth/token?username&password&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-20 09:55:57', '/portal/v1.0/user/login', '1'),
	('27b284ea-3164-4042-a479-cc160b06e548', 'Required parameters is Null', '2020-05-21 15:43:27', 'registService', '1'),
	('28290fc6-3bf7-4b62-ac40-8a90b8de624b', 'Required parameters is Null', '2020-05-21 15:17:53', 'registService', '1'),
	('2834d4d9-1722-11eb-8ca7-9883899f9cdb', 'BizException(msg=null)', '2020-10-26 09:28:24', '/api/service/v1/routes/45', '1'),
	('2a1fe16a-e59d-11ea-916d-9883899f9cdb', '유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.', '2020-08-24 09:02:57', '/api/service/v1/app/', '1'),
	('2aee739a-2acb-11eb-8885-9883899f9cdb', '[401] during [POST] to [http://localhost:7777/oauth/token?username&password&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-20 09:56:05', '/portal/v1.0/user/login', '1'),
	('2af02719-0f89-11eb-a902-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.registerService(com.kbds.serviceapi.apis.dto.RoutingDTO) with 3 errors: [Field error in object \'routingDTO\' on field \'serviceNm\': rejected value []; codes [NotEmpty.routingDTO.serviceNm,NotEmpty.serviceNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [routingDTO.se', '2020-10-16 17:25:37', '/api/service/v1/routes', '1'),
	('2b349b7a-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:03:47', '/api/service/v1/routes/', '1'),
	('2b893b69-2264-11eb-92a3-9883899f9cdb', 'feign.codec.DecodeException: Error while extracting response for type [class com.kbds.serviceapi.framework.dto.ResponseDTO] and content type [application/json]; nested exception is org.springframework.http.converter.HttpMessageNotReadableException: JSON parse error: Cannot deserialize instance of `com.kbds.serviceapi.framework.dto.ResponseDTO` out of START_ARRAY token; nested exception is com.fasterxml.jackson.databind.exc.MismatchedInputException: Cannot deserialize instance of `com.kbds.servic', '2020-11-09 17:18:39', '/portal/v1.0/menu', '1'),
	('2c3d3241-3755-49db-bdcd-4ccf1d29bacc', 'Required parameters is Null', '2020-05-26 10:49:41', 'updateService', '1'),
	('2ce99e7b-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:03:50', '/api/service/v1/routes/', '1'),
	('2cf6f63b-e59d-11ea-916d-9883899f9cdb', '유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.', '2020-08-24 09:03:02', '/api/service/v1/app/', '1'),
	('2d00550a-1832-11eb-8157-9883899f9cdb', 'BizException(msg=null)', '2020-10-27 17:55:35', '/api/service/v1/routes/41', '1'),
	('2d63140f-3932-4032-aeea-c3401d1ac0c6', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.u', '2020-05-26 13:36:20', 'findGwServices', '1'),
	('30fabd99-feeb-11ea-a364-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-09-25 13:54:28', '/portal/v1.0/menu', '1'),
	('33247176-5abc-45bc-a4fc-bb9efcb16588', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:16:09', 'findGwServices', '1'),
	('33dc07ec-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:04:01', '/api/service/v1/routes', '1'),
	('3460549c-4399-4888-ad71-840b867a3e19', 'org.springframework.orm.jpa.JpaSystemException: No default constructor for entity:  : com.kbds.serviceapi.apis.entity.key.GwServiceAppMappingKey; nested exception is org.hibernate.InstantiationException: No default constructor for entity:  : com.kbds.serviceapi.apis.entity.key.GwServiceAppMappingKey', '2020-05-26 09:11:07', 'registService', '1'),
	('34cea54d-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:04:03', '/api/service/v1/routes', '1'),
	('34cf3639-17fa-11eb-8157-9883899f9cdb', 'BizException(msg=null)', '2020-10-27 11:14:56', '/api/service/v1/routes/41', '1'),
	('35c5bd83-7386-4b08-84ab-8ea972b6ca0d', 'java.lang.IllegalStateException: block()/blockFirst()/blockLast() are blocking, which is not supported in thread reactor-http-nio-2', '2020-05-13 17:47:42', 'updateService', '1'),
	('36ad6a5a-ff07-11ea-91f5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-09-25 17:15:04', '/api/service/v1/routes/', '1'),
	('37734869-06c8-11eb-9fc2-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:04:16', '/api/service/v1/routes/', '1'),
	('37f43d2b-b453-11ea-b1c5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `java.lang.Long` from String "A": not a valid Long value; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `java.lang.Long` from String "A": not a valid Long value\n at [Source: (PushbackInputStream); line: 6, column: 18] (through reference chain: com.kbds.serviceapi.apis.dto.AppDTO["serviceId"]->java.util.ArrayList[0])', '2020-06-22 15:40:10', '/api/service/v1/app/13', '1'),
	('3aa03498-dbf4-40cb-b0dd-45065ae004dd', 'Required parameters is Null', '2020-05-28 10:59:39', 'updateFilter', '1'),
	('3ace2709-4430-11eb-8101-9883899f9cdb', 'org.hibernate.query.criteria.internal.BasicPathUsageException: Cannot join to attribute of basic type', '2020-12-22 17:32:30', '/portal/service/v1.0/routes/gateway', '1'),
	('3b02a2a9-0f79-11eb-8d98-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:31:32', '/api/service/v1/routes', '1'),
	('3c3d015a-1722-11eb-8ca7-9883899f9cdb', 'BizException(msg=null)', '2020-10-26 09:28:57', '/api/service/v1/routes/45', '1'),
	('3ec0a939-0ec2-11eb-951b-9883899f9cdb', 'JSON parse error: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: No enum constant com.kbds.serviceapi.apis.code.ServiceLoginType.2; nested exception is com.fasterxml.jackson.databind.exc.ValueInstantiationException: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: No enum constant com.kbds.serviceapi.apis.code.ServiceLoginType.2\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kb', '2020-10-15 17:41:40', '/api/service/v1/routes/', '1'),
	('3f19bdda-eb64-11ea-9593-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.registerService(com.kbds.serviceapi.apis.dto.RoutingDTO) with 5 errors: [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable', '2020-08-31 17:30:38', '/api/service/v1/routes/', '1'),
	('3f1d5fe2-ef7d-4e20-a85f-c950a6929f73', 'org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-16 18:15:09', 'findAppDetail', '1'),
	('4057617c-b770-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 14:45:33', '/api/service/v1/filter/1', '1'),
	('420a208a-25d3-4f75-a73c-b05fe92c95d9', 'Required parameters is Null', '2020-06-22 11:22:49', 'registService', '1'),
	('431e6279-06c9-11eb-b600-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:11:45', '/api/service/v1/routes/', '1'),
	('448bd49b-ff07-11ea-91f5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-09-25 17:15:27', '/api/service/v1/routes/', '1'),
	('46c7eefe-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:04:33', '/api/service/v1/routes', '1'),
	('484691c9-b44c-11ea-a27c-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 14:50:31', '', ''),
	('4939d930-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 17:23:17', '/api/service/v1/filter/1', '1'),
	('4ae3ee29-0f3f-11eb-9dfd-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 08:36:48', '/api/service/v1/routes/', '1'),
	('4b01b1a9-12a8-11eb-a51f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:45:59', '/api/service/v1/routes', '1'),
	('4b02c39b-18bd-11eb-8157-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Value must not be null!; nested exception is java.lang.IllegalArgumentException: Value must not be null!', '2020-10-28 10:31:25', '/portal/service/v1/app', '1'),
	('4c01dca0-5073-4a28-8084-eba5d4f08ca2', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:11:52', 'updateService', '1'),
	('4c15f73f-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:04:42', '/api/service/v1/routes', '1'),
	('4c19a690-ac64-44c7-aa17-8bda931051ab', '존재하지 않는 데이터입니다.', '2020-05-26 13:10:09', 'updateService', '1'),
	('4c7eb36c-18f8-11eb-878f-9883899f9cdb', 'JSON parse error: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token; nested exception is com.fasterxml.jackson.databind.exc.MismatchedInputException: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token\n at [Source: (PushbackInputStream); line: 1, column: 88] (through reference chain: com.kbds.serviceapi.portal.api.dto.RoutingDTO["serviceId"])', '2020-10-28 17:33:48', '/api/service/v1/routes/1', '1'),
	('4cc2a2b9-eb70-11ea-8765-9883899f9cdb', '존재하지 않는 데이터입니다.', '2020-08-31 18:56:54', '/api/service/v1/filter/45', '1'),
	('4d9c5379-b452-11ea-bc5e-9883899f9cdb', 'Required parameters is Null', '2020-06-22 15:33:37', '/api/service/v1/app/13', '1'),
	('4de271ce-42be-4cc4-ac84-43a8689a1731', 'java.lang.NullPointerException', '2020-06-18 10:45:25', 'Gateway Routes Refresh', '1'),
	('4ef35398-54d2-456a-82aa-3ce9faca031d', 'null', '2020-05-06 11:15:22', 'deleteService', '1'),
	('4fc5208a-b77f-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 16:33:22', '/api/service/v1/filter/1', '1'),
	('502b03e9-0ec3-11eb-a232-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 17:49:19', '/api/service/v1/routes/', '1'),
	('5101b984-c2bf-4ab6-8206-24c72b7bcd6c', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:11:48', 'findGwServices', '1'),
	('5432dfa9-ecd9-11ea-b508-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwService.gwApp, could not initialize proxy - no Session; nested exception is org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwService.gwApp, could not initialize proxy - no Session', '2020-09-02 14:01:15', '/api/service/v1/routes/gateway/', '1'),
	('54582264-601f-40de-adf8-46ddf15b9751', 'Required parameters is Null', '2020-06-22 11:28:11', 'updateService', '1'),
	('55b0c0c9-4433-11eb-b833-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Unable to locate Attribute  with the the given name [serviceNm] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]; nested exception is java.lang.IllegalArgumentException: Unable to locate Attribute  with the the given name [serviceNm] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]', '2020-12-22 17:54:44', '/portal/service/v1.0/routes/gateway', '1'),
	('570cd1f0-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:05:00', '/api/service/v1/routes/', '1'),
	('570d521c-d282-4cca-9852-629c016a078d', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:13:42', 'updateService', '1'),
	('574ee09e-b782-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 16:55:03', '/api/service/v1/filter/1', '1'),
	('57821f95-df34-4ae5-9a76-c19b1aaf1362', 'Required parameters is Null', '2020-06-22 13:24:54', 'updateService', '1'),
	('58292e7b-0eb7-11eb-9afa-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:23:39', '/api/service/v1/routes/', '1'),
	('58301c41-0778-11eb-81dc-9883899f9cdb', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [long, long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class com.kbds.serviceapi.apis.code.ServiceLoginType, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-10-06 11:05:02', '/api/service/v1/routes', '1'),
	('5876ac89-eb68-11ea-ab6e-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:59:58', '/api/service/v1/routes/', '1'),
	('58bb017a-b452-11ea-bc5e-9883899f9cdb', 'Required parameters is Null', '2020-06-22 15:33:56', '/api/service/v1/app/13', '1'),
	('59487717-a2fb-4119-997f-3abb17d797f2', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-27 10:02:52', 'findGwServices', '1'),
	('5ab66bec-ff07-11ea-91f5-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:16:04', '/api/service/v1/routes/', '1'),
	('5c18a2f9-0f79-11eb-80e5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:32:28', '/api/service/v1/routes', '1'),
	('5cefa716-09ae-4c19-981d-22d3b92b0ea0', 'org.hibernate.LazyInitializationException: could not initialize proxy [com.kbds.serviceapi.apis.entity.GwService#1] - no Session', '2020-06-16 18:16:08', 'findAppDetail', '1'),
	('5dd337ee-9e76-4828-a8d4-83318033ec92', 'Required parameters is Null', '2020-05-21 15:43:32', 'registService', '1'),
	('5e48d3f9-0f7a-11eb-af77-9883899f9cdb', 'JSON parse error: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: No enum constant com.kbds.serviceapi.apis.code.ServiceLoginType.2; nested exception is com.fasterxml.jackson.databind.exc.ValueInstantiationException: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: No enum constant com.kbds.serviceapi.apis.code.ServiceLoginType.2\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kb', '2020-10-16 15:39:41', '/api/service/v1/routes', '1'),
	('5ec9ce31-3047-476a-a87b-e2cd19771fa3', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:23:34', 'updateService', '1'),
	('5ecbda01-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 17:23:53', '/api/service/v1/filter/1', '1'),
	('5f7cbed9-ff0d-11ea-b250-9883899f9cdb', 'JSON parse error: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: COM008; nested exception is com.fasterxml.jackson.databind.exc.ValueInstantiationException: Cannot construct instance of `com.kbds.serviceapi.apis.code.ServiceLoginType`, problem: COM008\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.RoutingDTO["serviceLoginType"])', '2020-09-25 17:59:09', '/api/service/v1/routes/', '1'),
	('6053a59d-ff07-11ea-91f5-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:16:13', '/api/service/v1/routes/', '1'),
	('60f112ab-b780-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 16:41:00', '/api/service/v1/filter/1', '1'),
	('61ce11e0-e839-4774-b4d1-ea5cb01a9545', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, interface java.util.Set, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.', '2020-05-26 13:49:35', 'findGwServices', '1'),
	('628239ab-eb64-11ea-9593-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:31:37', '/api/service/v1/routes/', '1'),
	('6328db69-0eba-11eb-8aa5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:45:26', '/api/service/v1/routes/', '1'),
	('63895fa2-76fd-443c-81a0-29e3181b98da', 'java.lang.NullPointerException', '2020-05-25 16:04:47', 'registService', '1'),
	('6495d8b2-b775-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 15:22:21', '/api/service/v1/filter/1', '1'),
	('64f2d689-442f-11eb-9773-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Unable to locate Attribute  with the the given name [appId] on this ManagedType [com.kbds.serviceapi.portal.app.entity.GwServiceAppMapping]; nested exception is java.lang.IllegalArgumentException: Unable to locate Attribute  with the the given name [appId] on this ManagedType [com.kbds.serviceapi.portal.app.entity.GwServiceAppMapping]', '2020-12-22 17:26:31', '/portal/service/v1.0/routes/gateway', '1'),
	('65d28359-1d7b-11eb-ab80-7f0000010000', 'BizException(msg=null)', '2020-11-03 11:22:19', '/api/service/v1/routes/67', '1'),
	('66956689-0ec7-11eb-924b-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:18:35', '/api/service/v1/routes/', '1'),
	('66a79809-fefa-11ea-ba78-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: argument type mismatch; nested exception is java.lang.IllegalArgumentException: argument type mismatch', '2020-09-25 15:43:21', '/api/service/v1/routes/', '1'),
	('6896035a-0f89-11eb-a902-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 17:27:20', '/api/service/v1/routes', '1'),
	('68b9752e-ff07-11ea-91f5-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:16:28', '/api/service/v1/routes/', '1'),
	('69363bd3-b775-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 15:22:29', '/api/service/v1/filter/1', '1'),
	('697edd94-b775-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 15:22:30', '/api/service/v1/filter/1', '1'),
	('6a8eb2b9-fef9-11ea-a394-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-09-25 15:36:18', '/api/service/v1/routes/', '1'),
	('6b22394a-1d7b-11eb-ab80-7f0000010000', 'BizException(msg=null)', '2020-11-03 11:22:28', '/api/service/v1/routes/41', '1'),
	('6c453489-06c9-11eb-bbce-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:12:54', '/api/service/v1/routes/', '1'),
	('6cfb5929-b44b-11ea-aafa-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 14:44:23', 'validationExceptionHandler', ''),
	('6d813c83-091d-42b9-ad81-2e27a39b63b2', 'BizException(arg=존재하지 않는 데이터입니다.)', '2020-05-06 10:47:54', 'deleteService', '1'),
	('6e72b00f-64e9-4b14-8c53-235aea7aeb20', 'org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement', '2020-05-25 16:38:20', 'registService', '1'),
	('6f75cf2b-0f89-11eb-a902-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 17:27:32', '/api/service/v1/routes', '1'),
	('70aeaa1b-1d7b-11eb-ab80-7f0000010000', 'Required parameters is Null', '2020-11-03 11:22:37', '/api/service/v1/app/4', '1'),
	('713b4699-0ebd-11eb-95c6-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 17:07:18', '/api/service/v1/routes/', '1'),
	('71eb1b42-d47a-4e53-b072-881606df97fd', 'Required parameters is Null', '2020-05-26 10:47:00', 'updateService', '1'),
	('73dccf75-b77c-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 16:12:54', '/api/service/v1/filter/1', '1'),
	('740ae769-1299-11eb-bfe6-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-20 14:59:45', '/api/service/v1/routes', '1'),
	('74534af7-b428-4fdd-968d-d7866dd3c3ea', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:17:16', 'findGwServices', '1'),
	('75667f9c-eb64-11ea-9593-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:32:09', '/api/service/v1/routes/', '1'),
	('769c0500-6eb0-4409-9e14-67687a799a97', 'java.lang.IllegalStateException: block()/blockFirst()/blockLast() are blocking, which is not supported in thread reactor-http-nio-2', '2020-05-13 17:41:49', 'updateService', '1'),
	('76a5deea-0eba-11eb-8aa5-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:45:58', '/api/service/v1/routes/', '1'),
	('77b4b58a-1299-11eb-bfe6-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-20 14:59:51', '/api/service/v1/routes', '1'),
	('77fc0c35-5b75-4cde-9a5f-3b018a97a8c7', '이미 등록된 데이터입니다.', '2020-05-26 14:16:11', 'registService', '1'),
	('781f6800-2721-4395-936b-3855970bfcdd', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 09:23:08', 'registService', '1'),
	('78d7b18d-eb64-11ea-9593-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:32:14', '/api/service/v1/routes/', '1'),
	('78f06948-1b82-4b78-b1cf-9a266432dcb3', 'null', '2020-05-06 11:16:04', 'deleteService', '1'),
	('79ae89bb-1299-11eb-bfe6-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 14:59:55', '/api/service/v1/routes', '1'),
	('7b1d5139-feeb-11ea-af07-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-09-25 13:56:32', '/portal/v1.0/menu', '1'),
	('7be95834-9d90-4f4b-83c9-aeed5d5d14a2', 'org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-16 18:17:04', 'findAppDetail', '1'),
	('7c30319a-18e6-11eb-878f-9883899f9cdb', 'JSON parse error: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token; nested exception is com.fasterxml.jackson.databind.exc.MismatchedInputException: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token\n at [Source: (PushbackInputStream); line: 1, column: 76] (through reference chain: com.kbds.serviceapi.portal.api.dto.RoutingDTO["serviceId"])', '2020-10-28 15:26:17', '/api/service/v1/routes/4', '1'),
	('7d844445-1a67-4e61-9a2d-6b5d5e94139f', 'org.springframework.dao.InvalidDataAccessApiUsageException: Value must not be null!; nested exception is java.lang.IllegalArgumentException: Value must not be null!', '2020-05-26 12:34:13', 'updateService', '1'),
	('7e88a369-06c5-11eb-8428-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-05 13:44:47', '/api/service/v1/routes/', '1'),
	('7e92f821-5dcc-4331-a892-32d191601d49', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 09:11:57', 'registService', '1'),
	('7e96b019-0ebb-11eb-a1b8-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:53:21', '/api/service/v1/routes/', '1'),
	('7f9060bf-f98e-46db-96eb-47cc8812387e', 'BizException(arg=존재하지 않는 데이터입니다.)', '2020-05-06 10:44:04', 'deleteService', '1'),
	('800321e9-4430-11eb-9f02-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: Unable to locate Attribute  with the the given name [appId] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]; nested exception is java.lang.IllegalArgumentException: Unable to locate Attribute  with the the given name [appId] on this ManagedType [com.kbds.serviceapi.apis.entity.AuditLog]', '2020-12-22 17:34:26', '/portal/service/v1.0/routes/gateway', '1'),
	('81f3ebed-2af6-11eb-a277-9883899f9cdb', 'Content type \'application/x-www-form-urlencoded;charset=UTF-8\' not supported', '2020-11-20 15:06:20', '/portal/v1.0/user', '1'),
	('83046f02-e4da-4db1-9645-6c10f914127d', 'java.lang.IllegalStateException: block()/blockFirst()/blockLast() are blocking, which is not supported in thread reactor-http-nio-2', '2020-05-13 17:41:52', 'updateService', '1'),
	('839556f9-eb68-11ea-85c7-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 18:01:10', '/api/service/v1/routes/', '1'),
	('84793229-b450-11ea-92ee-9883899f9cdb', 'Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: "AA"', '2020-06-22 15:20:50', '/api/service/v1/routes/AA', '1'),
	('84d0b619-b452-11ea-b1c5-9883899f9cdb', 'Required parameters is Null', '2020-06-22 15:35:10', '/api/service/v1/app/13', '1'),
	('84e3f609-eb73-11ea-9f02-9883899f9cdb', '유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.', '2020-08-31 19:19:57', '/api/service/v1/app/', '1'),
	('8561e21e-a6f7-4f8f-a55a-1247196cbbb5', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:12:21', 'findGwServices', '1'),
	('8602b939-ff0b-11ea-a85f-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:45:55', '/api/service/v1/routes/', '1'),
	('8658ab22-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 17:25:00', '/api/service/v1/filter/1', '1'),
	('86a24cec-abdb-4e04-8609-3bc6056c894a', 'Required parameters is Null', '2020-05-26 10:52:08', 'updateService', '1'),
	('86c44ccc-1299-11eb-bfe6-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 15:00:17', '/api/service/v1/routes', '1'),
	('878e9313-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 17:25:02', '/api/service/v1/filter/1', '1'),
	('8851e314-b786-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 17:25:03', '/api/service/v1/filter/1', '1'),
	('88bf6eb9-b44d-11ea-bf8d-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 14:59:29', '/api/service/v1/routes/12', '1'),
	('88d5f2d6-18fc-11eb-878f-9883899f9cdb', '전문이 잘못 되었습니다. 전문을 체크 해 주세요.', '2020-10-28 18:04:07', '/api/service/v1/app/1', '1'),
	('89310eb9-0ec2-11eb-b183-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 17:43:45', '/api/service/v1/routes/', '1'),
	('8946a3f4-40f3-45a6-b5dc-b8915b77c81b', 'Required parameters is Null', '2020-06-22 11:20:15', 'registService', '1'),
	('8a937f6a-12a8-11eb-a51f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:47:45', '/api/service/v1/routes', '1'),
	('8aaa1578-b9ab-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-29 10:55:01', '/api/service/v1/filter/1', '1'),
	('8bca0c1c-b781-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 16:49:21', '/api/service/v1/filter/1', '1'),
	('8c76da39-06c7-11eb-9935-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 13:59:29', '/api/service/v1/routes/', '1'),
	('8d595a42-86d8-489b-9cdf-4d756174a1ce', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:27:49', 'updateService', '1'),
	('9006c12c-4c91-4fb0-89f9-82a081b6c3e8', '이미 등록된 데이터입니다.', '2020-05-22 14:47:25', 'registService', '1'),
	('90be06b5-e6ee-439f-8ebd-896d1ae1b9cf', 'java.lang.NullPointerException', '2020-06-17 09:12:14', 'Gateway Routes Refresh', '1'),
	('942970fb-6a2d-4400-9748-a2f17b7ef397', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-06-22 13:17:47', 'findServices', '1'),
	('945ad97e-18f8-11eb-878f-9883899f9cdb', 'JSON parse error: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token; nested exception is com.fasterxml.jackson.databind.exc.MismatchedInputException: Cannot deserialize instance of `java.lang.Long` out of START_ARRAY token\n at [Source: (PushbackInputStream); line: 1, column: 88] (through reference chain: com.kbds.serviceapi.portal.api.dto.RoutingDTO["serviceId"])', '2020-10-28 17:35:48', '/api/service/v1/routes/1', '1'),
	('94fa19af-e2ff-496f-ab36-b060dfd1cbe8', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:09:23', 'updateService', '1'),
	('9686acc9-0f79-11eb-a851-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:34:06', '/api/service/v1/routes', '1'),
	('9701fec0-5be5-4db9-a909-be291961f18b', 'feign.FeignException$MethodNotAllowed: [405] during [GET] to [http://localhost:9999/actuator/bus-refresh] [GatewayClient#checkAccessToken(Map)]: [{"timestamp":"2020-06-19T06:03:44.440+0000","status":405,"error":"Method Not Allowed","message":"Request method \'GET\' not supported","path":"/actuator/bus-refresh"}]', '2020-06-19 15:03:44', 'Gateway Routes Refresh', '1'),
	('970bbd59-1b4a-41b2-a65e-ca2ce31f7ca7', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.u', '2020-06-22 13:15:22', 'findGwServices', '1'),
	('9794d139-b44f-11ea-bc81-9883899f9cdb', 'Cannot deserialize value of type `java.lang.Long` from String "aa": not a valid Long value\n at [Source: (PushbackInputStream); line: 8, column: 15] (through reference chain: com.kbds.serviceapi.apis.dto.RoutingDTO["filterId"])', '2020-06-22 15:14:13', '/api/service/v1/routes/12', '1'),
	('97d26c47-9959-48f7-a391-4f86c4d40e09', 'java.lang.NullPointerException', '2020-06-18 17:35:42', 'Gateway Routes Refresh', '1'),
	('9b391e9f-fd49-4e54-89df-c495a7e2a3e0', 'org.springframework.orm.jpa.JpaSystemException: No default constructor for entity:  : com.kbds.serviceapi.apis.entity.key.GwServiceAppMappingKey; nested exception is org.hibernate.InstantiationException: No default constructor for entity:  : com.kbds.serviceapi.apis.entity.key.GwServiceAppMappingKey', '2020-05-26 09:09:33', 'registService', '1'),
	('9bdfca68-f17e-478f-acee-84cf1da366de', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 14:55:02', 'findGwServices', '1'),
	('9e0b529b-eb73-11ea-9f02-9883899f9cdb', 'Required parameters is Null', '2020-08-31 19:20:39', '/api/service/v1/app/1', '1'),
	('9e5ffe69-0eb6-11eb-9afa-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 3: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:18:27', '/api/service/v1/routes/', '1'),
	('9ebd1d15-7d8a-4001-94e9-6f121d8f2185', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-05-26 13:30:27', 'findGwServices', '1'),
	('9ecd1809-0f7a-11eb-be9d-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 15:41:29', '/api/service/v1/routes', '1'),
	('9eea50c9-442f-11eb-9eb0-9883899f9cdb', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.portal.app.entity.GwApp with id 3', '2020-12-22 17:28:09', '/portal/service/v1.0/routes/gateway', '1'),
	('9f1bd7d8-6834-457c-9530-994ee1c6adba', 'java.lang.NullPointerException', '2020-06-17 09:16:10', 'Gateway Routes Refresh', '1'),
	('9f919eb4-7d8d-4ffa-8ab1-505c4bc5f8a3', 'Required parameters is Null', '2020-05-22 14:10:34', 'updateService', '1'),
	('a097f079-06c8-11eb-a498-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:07:12', '/api/service/v1/routes/', '1'),
	('a0e8cb2e-982e-4c47-bcfa-57beb36b8df8', 'null', '2020-05-06 11:17:39', 'deleteService', '1'),
	('a2278fdc-0f89-11eb-a902-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 17:28:57', '/api/service/v1/routes', '1'),
	('a3d20d4c-eb73-11ea-9f02-9883899f9cdb', 'Required parameters is Null', '2020-08-31 19:20:49', '/api/service/v1/app/1', '1'),
	('a49d0879-ecb2-11ea-a729-9883899f9cdb', 'org.springframework.dao.EmptyResultDataAccessException: No class com.kbds.serviceapi.apis.entity.GwServiceFilter entity with id 4 exists!', '2020-09-02 09:24:20', '/api/service/v1/filter/4', '1'),
	('a4d2d511-cfd4-4a1d-a98a-54ae5ee745f3', 'org.springframework.dao.InvalidDataAccessApiUsageException: Value must not be null!; nested exception is java.lang.IllegalArgumentException: Value must not be null!', '2020-05-26 13:01:22', 'updateService', '1'),
	('a74ca9da-0eb9-11eb-aeb9-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:40:10', '/api/service/v1/routes/', '1'),
	('a7749936-17cf-4159-86ff-6b9e995f7d74', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:17:42', 'updateService', '1'),
	('a7e0b419-1f2e-11eb-a6ea-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=pass1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-05 15:18:01', '/portal/v1.0/user/login', '1'),
	('a93d3a96-9b56-4c8d-b10e-d4b483114103', 'org.springframework.dao.InvalidDataAccessApiUsageException: Value must not be null!; nested exception is java.lang.IllegalArgumentException: Value must not be null!', '2020-05-26 10:58:15', 'updateService', '1'),
	('aa6921b9-1ff4-11eb-9078-9883899f9cdb', '사용자 정보가 없거나 잘못 되었습니다.', '2020-11-06 14:55:26', '/portal/v1.0/user/login', '1'),
	('ab0d9789-0ebb-11eb-907f-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 16:54:36', '/api/service/v1/routes/', '1'),
	('ade5eada-442f-11eb-9eb0-9883899f9cdb', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.portal.app.entity.GwApp with id 3', '2020-12-22 17:28:34', '/portal/service/v1.0/routes/gateway', '1'),
	('af42f83d-0f89-11eb-a902-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 17:29:19', '/api/service/v1/routes', '1'),
	('af8166e9-12a1-11eb-8fbf-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 15:58:41', '/api/service/v1/routes', '1'),
	('affa14fd-eb73-11ea-9f02-9883899f9cdb', 'Required parameters is Null', '2020-08-31 19:21:09', '/api/service/v1/app/1', '1'),
	('b1c4c30c-12a8-11eb-a51f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:48:51', '/api/service/v1/routes', '1'),
	('b35d0b4e-b116-41c4-8298-34e24665c434', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-06-22 13:20:50', 'findServices', '1'),
	('b44e75e6-b77c-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 16:14:42', '/api/service/v1/filter/1', '1'),
	('b467d5ce-b772-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 15:03:07', '/api/service/v1/filter/1', '1'),
	('b4b178a5-c674-4d35-b686-15a05be253d9', 'java.util.NoSuchElementException: No value present', '2020-05-26 11:10:42', 'updateService', '1'),
	('b5a10600-42a9-422b-acd9-b863477528a2', 'BizException(arg=존재하지 않는 데이터입니다.)', '2020-05-06 10:46:01', 'deleteService', '1'),
	('b5ff4329-0dec-11eb-902c-9883899f9cdb', 'java.lang.ClassNotFoundException: ServiceLoginType', '2020-10-14 16:13:08', '/portal/code/ServiceLoginType', '1'),
	('b69f9d5f-b772-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 15:03:11', '/api/service/v1/filter/1', '1'),
	('b90658a7-b77c-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 16:14:50', '/api/service/v1/filter/1', '1'),
	('b924e299-0deb-11eb-9c46-9883899f9cdb', 'java.lang.ClassNotFoundException: ServiceAuthType', '2020-10-14 16:06:04', '/portal/code/ServiceAuthType', '1'),
	('b9ac4199-1f2f-11eb-b2c6-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=pass1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-05 15:25:40', '/portal/v1.0/user/login', '1'),
	('b9b2ca54-7087-4f6f-8c87-02295797d38a', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 15:01:03', 'findGwServices', '1'),
	('b9d31cee-5daf-42ac-aae3-e77380b57319', '이미 등록된 데이터입니다.', '2020-06-16 18:07:01', 'registApp', '1'),
	('b9fdbc89-09e6-41a8-b70b-a263a93bff30', 'java.lang.IllegalArgumentException: The Secret cannot be null', '2020-05-14 09:58:20', 'updateService', '1'),
	('bb70c309-06c7-11eb-87c7-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:00:48', '/api/service/v1/routes/', '1'),
	('bc0e1369-6341-44e7-ba5a-938e05eccd27', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:04:55', 'findGwServices', '1'),
	('bd247e39-ff0b-11ea-a8c0-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:47:27', '/api/service/v1/routes/', '1'),
	('bdbfc4e9-eb64-11ea-89e6-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:34:10', '/api/service/v1/routes/', '1'),
	('c2c011a9-e5da-11ea-87dc-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: argument type mismatch; nested exception is java.lang.IllegalArgumentException: argument type mismatch', '2020-08-24 16:23:52', '/api/service/v1/app/', '1'),
	('c4a6aaac-133a-11eb-8d66-9883899f9cdb', 'Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: "undefined"', '2020-10-21 10:14:29', '/api/service/v1/routes/undefined', '1'),
	('c4ab7a2a-0deb-11eb-9c46-9883899f9cdb', 'java.lang.ClassNotFoundException: ServiceLoginType', '2020-10-14 16:06:23', '/portal/code/ServiceLoginType', '1'),
	('c6c9e694-bdef-4bb2-846c-ecf4fd598a95', 'Required parameters is Null', '2020-05-22 14:47:20', 'registService', '1'),
	('c7043f89-b44c-11ea-b40b-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 14:54:04', 'resolveArgument', '1'),
	('c7e5a7da-419b-4531-85ce-0bbfbb2b7d59', 'Required parameters is Null', '2020-06-22 10:39:37', 'updateService', '1'),
	('c95df12d-133a-11eb-8d66-9883899f9cdb', 'Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: "undefined"', '2020-10-21 10:14:37', '/api/service/v1/routes/undefined', '1'),
	('cb663e25-3c8e-4fbc-96f3-fea2d402b02c', 'Required parameters is Null', '2020-06-16 08:41:47', 'updateService', '1'),
	('cb6d7e3b-12a0-11eb-ae60-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 15:52:18', '/api/service/v1/routes', '1'),
	('cc670ceb-1f37-11eb-9841-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=PASS&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-05 16:23:28', '/portal/v1.0/user/login', '1'),
	('cc947e9b-2af5-11eb-a277-9883899f9cdb', 'Content type \'application/x-www-form-urlencoded;charset=UTF-8\' not supported', '2020-11-20 15:01:15', '/portal/v1.0/user', '1'),
	('ce03be8f-18f8-11eb-878f-9883899f9cdb', '전문이 잘못 되었습니다. 전문을 체크 해 주세요.', '2020-10-28 17:37:25', '/api/service/v1/app/1', '1'),
	('cf578f69-06c8-11eb-bde4-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:08:31', '/api/service/v1/routes/', '1'),
	('cf68a529-0ec5-11eb-97a6-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:07:12', '/api/service/v1/routes/', '1'),
	('d079a80c-2af5-11eb-a277-9883899f9cdb', '[401] during [POST] to [http://localhost:7777/oauth/token?username=tjsghman&password=rudxo1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-20 15:01:22', '/portal/v1.0/user/login', '1'),
	('d41ad94a-1f31-11eb-9841-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=1234&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-05 15:40:44', '/portal/v1.0/user/login', '1'),
	('d45deac9-ecb2-11ea-81cd-9883899f9cdb', 'org.springframework.dao.EmptyResultDataAccessException: No class com.kbds.serviceapi.apis.entity.GwServiceFilter entity with id 4 exists!', '2020-09-02 09:25:40', '/api/service/v1/filter/4', '1'),
	('d4f26899-b77e-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 16:29:55', '/api/service/v1/filter/1', '1'),
	('d61bbce2-4b57-4ba8-800d-0956314ac652', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.util.Date]', '2020-05-26 15:57:13', 'findServices', '1'),
	('d82d79b9-4430-11eb-9b7a-9883899f9cdb', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.portal.app.entity.GwApp with id 3', '2020-12-22 17:36:54', '/portal/service/v1.0/routes/gateway', '1'),
	('d8648668-179f-47c6-9ee8-ce0621b7f1b8', 'java.lang.NullPointerException', '2020-06-17 09:51:25', 'Gateway Routes Refresh', '1'),
	('d928a0b9-0f79-11eb-b0af-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:35:57', '/api/service/v1/routes', '1'),
	('da2c19ba-b763-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 13:16:48', '/api/service/v1/filter/1', '1'),
	('db5c2d81-bcc2-11ea-bce0-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-07-03 09:19:28', '/api/service/v1/routes/', '1'),
	('dc207c70-b773-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterBean\': rejected value [null]; codes [NotEmpty.filterDTO.filterBean,NotEmpty.filterBean,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes', '2020-06-26 15:11:23', '/api/service/v1/filter/1', '1'),
	('ded1a7a0-18f8-11eb-878f-9883899f9cdb', '전문이 잘못 되었습니다. 전문을 체크 해 주세요.', '2020-10-28 17:37:53', '/api/service/v1/app/1', '1'),
	('dfc1e709-fef9-11ea-99fb-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: argument type mismatch; nested exception is java.lang.IllegalArgumentException: argument type mismatch', '2020-09-25 15:39:34', '/api/service/v1/routes/', '1'),
	('e028ee99-eb63-11ea-9593-9883899f9cdb', 'java.lang.NullPointerException', '2020-08-31 17:27:58', '/api/service/v1/routes/', '1'),
	('e0896d71-02a1-478f-80ad-a877b4798b23', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-05-26 09:20:40', 'registService', '1'),
	('e1227758-fb33-47df-b8f8-870592bde68e', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:10:54', 'findGwServices', '1'),
	('e30a0c41-b773-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 15:11:35', '/api/service/v1/filter/1', '1'),
	('e33fcde9-12a7-11eb-b80a-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:43:05', '/api/service/v1/routes', '1'),
	('e384871a-025b-4452-b3cb-44b753c5b76d', 'java.lang.IllegalStateException: block()/blockFirst()/blockLast() are blocking, which is not supported in thread reactor-http-nio-2', '2020-05-13 17:48:00', 'updateService', '1'),
	('e5e1355e-0f89-11eb-a902-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-10-16 17:30:51', '/api/service/v1/routes', '1'),
	('e710518a-17cf-41f8-98ec-8bc1bf15a3b3', 'java.util.NoSuchElementException: No value present', '2020-05-26 13:08:23', 'updateService', '1'),
	('e93ed6aa-12a7-11eb-b80a-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:43:15', '/api/service/v1/routes', '1'),
	('e961c7da-b9da-11ea-ac6f-9883899f9cdb', '유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.', '2020-06-29 16:34:06', '/api/service/v1/app/', '1'),
	('eb487ca9-e5e1-11ea-ab71-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessApiUsageException: argument type mismatch; nested exception is java.lang.IllegalArgumentException: argument type mismatch', '2020-08-24 17:15:07', '/api/service/v1/app/', '1'),
	('eb6edbd9-1722-11eb-a446-9883899f9cdb', 'BizException(msg=null)', '2020-10-26 09:33:51', '/api/service/v1/routes/45', '1'),
	('ec5f790e-3914-4f5d-8d08-1ab9c39bd211', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.u', '2020-06-22 13:15:16', 'findGwServices', '1'),
	('ec6aa446-f414-46a4-b9fb-64f5845d6cf9', 'java.lang.NullPointerException', '2020-06-17 09:43:25', 'Gateway Routes Refresh', '1'),
	('ec7dfa09-b44a-11ea-93dd-9883899f9cdb', 'Validation failed for argument [1] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwRoutingController.updateService(java.lang.Long,com.kbds.serviceapi.apis.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceAuthType\': rejected value [null]; codes [NotEmpty.routingDTO.serviceAuthType,NotEmpty.serviceAuthType,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable:', '2020-06-22 14:40:48', '', ''),
	('ecd32362-9e26-4a24-b7be-538abf2f37b2', 'java.lang.NullPointerException', '2020-05-26 15:58:10', 'findServices', '1'),
	('ed9825b9-e5a4-11ea-af63-9883899f9cdb', 'org.springframework.dao.InvalidDataAccessResourceUsageException: could not extract ResultSet; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not extract ResultSet', '2020-08-24 09:58:31', '/api/service/v1/app/', '1'),
	('ee164be0-eb92-4e18-bc43-85e4114a6eb6', 'java.lang.IllegalStateException: block()/blockFirst()/blockLast() are blocking, which is not supported in thread reactor-http-nio-2', '2020-05-13 17:41:38', 'updateService', '1'),
	('ee864de9-b74f-11ea-9cdc-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-06-26 10:54:12', '/api/service/v1/app/', '1'),
	('f07e9cab-b9da-11ea-ac6f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session; nested exception is org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-29 16:34:18', '/api/service/v1/app/', '1'),
	('f1374859-06c8-11eb-845c-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:09:28', '/api/service/v1/routes/', '1'),
	('f23efe59-ff07-11ea-9981-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:20:18', '/api/service/v1/routes/', '1'),
	('f3661912-6b11-434f-9806-6ed94794ad28', 'org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-16 18:13:51', 'findAppDetail', '1'),
	('f399713d-b9da-11ea-ac6f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session; nested exception is org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-29 16:34:23', '/api/service/v1/app/', '1'),
	('f47b56c4-ddda-41ed-8e04-f01c61dfb1e1', 'javax.persistence.EntityNotFoundException: Unable to find com.kbds.serviceapi.apis.entity.GwService with id 10', '2020-05-26 11:19:30', 'updateService', '1'),
	('f4ac1939-06c7-11eb-ac2f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-05 14:02:24', '/api/service/v1/routes/', '1'),
	('f50011c9-129d-11eb-ae60-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 15:31:59', '/api/service/v1/routes', '1'),
	('f65bfb79-12a1-11eb-a3ab-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: Error attempting to apply AttributeConverter; nested exception is javax.persistence.PersistenceException: Error attempting to apply AttributeConverter', '2020-10-20 16:00:40', '/api/service/v1/routes', '1'),
	('f671eeb9-9cdd-475b-b513-749784f32783', 'com.querydsl.core.types.ExpressionException: No constructor found for class com.kbds.serviceapi.apis.dto.RoutingDTO with parameters: [class java.lang.Long, class java.lang.Long, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.lang.String, class java.util.Date, class java.u', '2020-06-22 13:15:10', 'findGwServices', '1'),
	('f6b9497e-fcc0-406c-81b1-ae19d2b78536', 'org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.QueryException: No data type for node: org.hibernate.hql.internal.ast.tree.MethodNode \r\n +-[METHOD_CALL] MethodNode: \'(\'\r\n |  +-[METHOD_NAME] IdentNode: \'group_concat\' {originalText=group_concat}\r\n |  \\-[EXPR_LIST] SqlNode: \'exprList\'\r\n |     +-[DOT] DotNode: \'gwapp2_.app_key\' {propertyName=appKey,dereferenceType=PRIMITIVE,getPropertyPath=appKey,path=gwApp.appKey,tableAlias=gwapp2_,className=com.kbds.serviceapi.apis.entity', '2020-05-26 15:09:21', 'findGwServices', '1'),
	('f712f1e9-1ff3-11eb-ad1e-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=p1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-06 14:50:25', '/portal/v1.0/user/login', '1'),
	('f7ed83e9-27c9-11eb-9570-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=saruan&password=RUDXO1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-16 14:09:57', '/portal/v1.0/user/login', '1'),
	('f8a23e38-2ea4-4fd6-bb2a-189bf051da8d', 'Required parameters is Null', '2020-06-15 16:30:51', 'updateService', '1'),
	('f8dcf8f9-2263-11eb-9aca-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-11-09 17:17:14', '/portal/v1.0/menu', '1'),
	('f8e227e9-0ec1-11eb-a904-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 17:39:43', '/api/service/v1/routes/', '1'),
	('faf015c9-0ec0-11eb-bd84-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 17:32:37', '/api/service/v1/routes/', '1'),
	('fb10a1da-2263-11eb-9aca-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-11-09 17:17:17', '/portal/v1.0/menu', '1'),
	('fb1c0cbe-b9da-11ea-ac6f-9883899f9cdb', 'org.springframework.orm.jpa.JpaSystemException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session; nested exception is org.hibernate.LazyInitializationException: failed to lazily initialize a collection of role: com.kbds.serviceapi.apis.entity.GwApp.gwService, could not initialize proxy - no Session', '2020-06-29 16:34:36', '/api/service/v1/app/', '1'),
	('fb281239-ff08-11ea-9661-9883899f9cdb', '이미 등록된 데이터입니다.', '2020-09-25 17:27:43', '/api/service/v1/routes/', '1'),
	('fb296499-1f2f-11eb-9841-9883899f9cdb', '[400] during [POST] to [http://localhost:7777/oauth/token?username=user&password=pass1&scope=read_profile&grant_type=password] [AuthClient#login(Map,String,String,String,String)]: [{"resultCode":"USR001","resultMessage":"사용자 정보가 없거나 잘못 되었습니다."}]', '2020-11-05 15:27:30', '/portal/v1.0/user/login', '1'),
	('fb5f35a8-b77c-11ea-9cdc-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.apis.controller.GwFilterController.updateFilter(com.kbds.serviceapi.apis.dto.FilterDTO,java.lang.Long) with 2 errors: [Field error in object \'filterDTO\' on field \'filterNm\': rejected value [null]; codes [NotEmpty.filterDTO.filterNm,NotEmpty.filterNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [filt', '2020-06-26 16:16:41', '/api/service/v1/filter/1', '1'),
	('fb72bf0b-2263-11eb-9aca-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-11-09 17:17:18', '/portal/v1.0/menu', '1'),
	('fb99b489-0ec6-11eb-b39d-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:15:35', '/api/service/v1/routes/', '1'),
	('fbb2872c-2263-11eb-9aca-9883899f9cdb', '요청한 서비스의 호출이 실패했습니다. 잠시 후 다시 시도해 주세요.', '2020-11-09 17:17:18', '/portal/v1.0/menu', '1'),
	('fd1746c9-2af4-11eb-a277-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.framework.controller.SPUserController.register(com.kbds.serviceapi.framework.dto.UserDTO) with 3 errors: [Field error in object \'userDTO\' on field \'username\': rejected value [null]; codes [NotEmpty.userDTO.username,NotEmpty.username,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [userDTO.username,user', '2020-11-20 14:55:27', '/portal/v1.0/user', '1'),
	('fe107ea9-0f7b-11eb-b870-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from String "2": not one of the values accepted for Enum class: [APPKEY, OAUTH]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference ch', '2020-10-16 15:51:18', '/api/service/v1/routes', '1'),
	('fe87512b-1722-11eb-a446-9883899f9cdb', 'BizException(msg=null)', '2020-10-26 09:34:23', '/api/service/v1/routes/41', '1'),
	('feddb06b-09e0-49b6-b4d3-f324eee0c7ff', 'Required parameters is Null', '2020-06-22 10:09:20', 'updateService', '1'),
	('ffa67db9-1a4c-11eb-9293-9883899f9cdb', 'Validation failed for argument [0] in public org.springframework.http.ResponseEntity<java.lang.Object> com.kbds.serviceapi.portal.api.controller.GwRoutingController.registerService(com.kbds.serviceapi.portal.api.dto.RoutingDTO): [Field error in object \'routingDTO\' on field \'serviceNm\': rejected value [null]; codes [NotEmpty.routingDTO.serviceNm,NotEmpty.serviceNm,NotEmpty.java.lang.String,NotEmpty]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [routingDTO.', '2020-10-30 10:12:37', '/portal/service/v1/routes', '1'),
	('ffb0fc6a-0ec4-11eb-a232-9883899f9cdb', 'JSON parse error: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]; nested exception is com.fasterxml.jackson.databind.exc.InvalidFormatException: Cannot deserialize value of type `com.kbds.serviceapi.apis.code.ServiceLoginType` from number 2: index value outside legal index range [0..1]\n at [Source: (PushbackInputStream); line: 6, column: 23] (through reference chain: com.kbds.serviceapi.apis.dto.Routin', '2020-10-15 18:01:23', '/api/service/v1/routes/', '1');
/*!40000 ALTER TABLE `gw_error_log` ENABLE KEYS */;

-- 테이블 gateway.gw_service 구조 내보내기
CREATE TABLE IF NOT EXISTS `gw_service` (
  `SERVICE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '서비스 ID',
  `SERVICE_PATH` varchar(50) NOT NULL COMMENT '서비스 PATH',
  `SERVICE_TARGET_URL` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '목적지 URL',
  `SERVICE_NM` varchar(20) NOT NULL COMMENT '서비스명',
  `SERVICE_LOGIN_TYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '1' COMMENT '로그인 타입',
  `SERVICE_AUTH_TYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '1' COMMENT 'API 인증 타입',
  `SERVICE_DESC` varchar(200) DEFAULT NULL COMMENT '서비스 설명',
  `USE_YN` varchar(2) DEFAULT 'Y' COMMENT '사용 여부',
  `FILTER_ID` int(11) NOT NULL COMMENT '필터 ID',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`SERVICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='라우팅 서비스 테이블';

-- 테이블 데이터 gateway.gw_service:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gw_service` DISABLE KEYS */;
INSERT INTO `gw_service` (`SERVICE_ID`, `SERVICE_PATH`, `SERVICE_TARGET_URL`, `SERVICE_NM`, `SERVICE_LOGIN_TYPE`, `SERVICE_AUTH_TYPE`, `SERVICE_DESC`, `USE_YN`, `FILTER_ID`, `REG_USER_NO`, `UPT_USER_NO`, `REG_DT`, `UPT_DT`) VALUES
	(41, '/api/filter', 'http://localhost:8080/api/service/v1.0/filter/', '필터 서비스', 'OAUTH', 'PUBLIC', '필터 Service', 'Y', 1, '1', '1', '2020-07-07 16:29:59', '2020-11-05 17:27:29'),
	(45, '/api/routes', 'http://localhost:8080/api/service/v1.0/routes/', '라우팅 서비스', 'OAUTH', 'SECURITY', '라우팅 Service', 'Y', 1, '1', 'kookyungte', '2020-09-02 14:48:26', '2020-11-24 14:26:15');
/*!40000 ALTER TABLE `gw_service` ENABLE KEYS */;

-- 테이블 gateway.gw_service_app_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `gw_service_app_mapping` (
  `APP_ID` int(11) NOT NULL COMMENT '앱 ID',
  `SERVICE_ID` int(11) NOT NULL COMMENT '서비스 ID',
  PRIMARY KEY (`APP_ID`,`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='새 테이블2';

-- 테이블 데이터 gateway.gw_service_app_mapping:~7 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gw_service_app_mapping` DISABLE KEYS */;
INSERT INTO `gw_service_app_mapping` (`APP_ID`, `SERVICE_ID`) VALUES
	(1, 41),
	(1, 45),
	(2, 41),
	(3, 41),
	(4, 41),
	(4, 45);
/*!40000 ALTER TABLE `gw_service_app_mapping` ENABLE KEYS */;

-- 테이블 gateway.gw_service_filter 구조 내보내기
CREATE TABLE IF NOT EXISTS `gw_service_filter` (
  `FILTER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '필터 ID',
  `FILTER_NM` varchar(20) NOT NULL COMMENT '필터 이름',
  `FILTER_DESC` varchar(200) DEFAULT NULL COMMENT '필터 설명',
  `FILTER_BEAN` varchar(20) NOT NULL COMMENT '필터 Bean',
  `USE_YN` varchar(2) DEFAULT 'Y' COMMENT '사용 유무',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`FILTER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='서비스 필터 테이블';

-- 테이블 데이터 gateway.gw_service_filter:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gw_service_filter` DISABLE KEYS */;
INSERT INTO `gw_service_filter` (`FILTER_ID`, `FILTER_NM`, `FILTER_DESC`, `FILTER_BEAN`, `USE_YN`, `REG_USER_NO`, `UPT_USER_NO`, `REG_DT`, `UPT_DT`) VALUES
	(1, '기본 공통 필터', '기본 인증 처리용 Filter', 'CommonFilter', 'Y', '1', NULL, '2020-04-20 09:26:04', '2020-04-20 09:26:04'),
	(2, 'SAML 필터', 'SAML 검증용 필터', 'SAMLFilter', 'Y', '1', NULL, '2020-05-21 15:24:37', '2020-05-21 15:24:37'),
	(3, 'AccessToken 발급 필터', 'AccessToken을 발급 받기 위한 사전 인증 처리용 필터', 'TokenFilter', 'Y', '1', '1', '2020-05-21 15:24:54', '2020-05-28 11:05:55');
/*!40000 ALTER TABLE `gw_service_filter` ENABLE KEYS */;

-- 테이블 gateway.sp_apis 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_apis` (
  `API_ID` int(11) NOT NULL COMMENT 'API ID',
  `API_NM` varchar(20) NOT NULL COMMENT 'API 명',
  `API_URL` varchar(50) NOT NULL COMMENT 'API URL',
  `USE_YN` varchar(2) DEFAULT NULL COMMENT '사용 유무',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`API_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='API 관리 테이블';

-- 테이블 데이터 gateway.sp_apis:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_apis` DISABLE KEYS */;
INSERT INTO `sp_apis` (`API_ID`, `API_NM`, `API_URL`, `USE_YN`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, '포탈_API 관리', '/portal/service/v1/routes', 'Y', '2020-11-04 15:59:25', '2020-11-04 15:59:26', '1', '1'),
	(2, '포탈 APP 관리', '/portal/service/v1/app', 'Y', '2020-11-04 16:12:02', '2020-11-04 16:12:03', '1', '1'),
	(3, '포탈 필터 관리', '/portal/service/v1/filter', 'Y', '2020-11-04 16:12:26', '2020-11-04 16:12:26', '1', '1');
/*!40000 ALTER TABLE `sp_apis` ENABLE KEYS */;

-- 테이블 gateway.sp_groups 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_groups` (
  `GROUP_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '그룹 ID',
  `GROUP_NM` varchar(20) NOT NULL COMMENT '그룹명',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='새 테이블3';

-- 테이블 데이터 gateway.sp_groups:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_groups` DISABLE KEYS */;
INSERT INTO `sp_groups` (`GROUP_ID`, `GROUP_NM`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, 'ADMIN 그룹', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sp_groups` ENABLE KEYS */;

-- 테이블 gateway.sp_menus 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_menus` (
  `MENU_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '메뉴 ID',
  `MENU_NM` varchar(20) NOT NULL COMMENT '메뉴명',
  `MENU_URL` varchar(50) NOT NULL COMMENT '메뉴 URL',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  `use_yn` varchar(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='메뉴 관리 테이블';

-- 테이블 데이터 gateway.sp_menus:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_menus` DISABLE KEYS */;
INSERT INTO `sp_menus` (`MENU_ID`, `MENU_NM`, `MENU_URL`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`, `use_yn`, `parent_id`) VALUES
	(4, 'API', '/portal/api', '2020-09-24 15:39:55', '2020-09-24 15:39:55', '1', '1', 'Y', NULL),
	(5, 'API-SUB', '/portal/api/sub', '2020-09-24 15:40:15', '2020-09-24 15:40:15', '1', '1', 'Y', 4),
	(6, 'API-SUB2', '/portal/api/sub2', '2020-09-25 09:25:26', '2020-09-25 09:25:26', '1', '1', 'Y', 4),
	(7, 'APP', '/portal/app', '2020-09-25 09:26:06', '2020-09-25 09:26:06', '1', '1', 'Y', NULL),
	(8, 'APP-SUB', '/portal/app/sub', '2020-09-25 09:26:29', '2020-09-25 09:26:29', '1', '1', 'Y', 7);
/*!40000 ALTER TABLE `sp_menus` ENABLE KEYS */;

-- 테이블 gateway.sp_roles 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '권한 ID',
  `ROLE_NM` varchar(15) NOT NULL COMMENT '권한명',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  `ROLE_CD` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한 테이블';

-- 테이블 데이터 gateway.sp_roles:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_roles` DISABLE KEYS */;
INSERT INTO `sp_roles` (`ROLE_ID`, `ROLE_NM`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`, `ROLE_CD`) VALUES
	(1, 'USER', NULL, NULL, NULL, NULL, 'USER'),
	(2, 'USER', NULL, NULL, NULL, NULL, 'USER');
/*!40000 ALTER TABLE `sp_roles` ENABLE KEYS */;

-- 테이블 gateway.sp_role_api_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_role_api_mapping` (
  `API_ID` int(11) NOT NULL COMMENT 'API ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  PRIMARY KEY (`API_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한-API 매핑';

-- 테이블 데이터 gateway.sp_role_api_mapping:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_role_api_mapping` DISABLE KEYS */;
INSERT INTO `sp_role_api_mapping` (`API_ID`, `ROLE_ID`) VALUES
	(1, 1),
	(2, 1),
	(3, 1);
/*!40000 ALTER TABLE `sp_role_api_mapping` ENABLE KEYS */;

-- 테이블 gateway.sp_role_menu_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_role_menu_mapping` (
  `MENU_ID` int(11) NOT NULL COMMENT '메뉴 ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  PRIMARY KEY (`MENU_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='권한-메뉴 매핑';

-- 테이블 데이터 gateway.sp_role_menu_mapping:~7 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_role_menu_mapping` DISABLE KEYS */;
INSERT INTO `sp_role_menu_mapping` (`MENU_ID`, `ROLE_ID`) VALUES
	(1, 1),
	(2, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1);
/*!40000 ALTER TABLE `sp_role_menu_mapping` ENABLE KEYS */;

-- 테이블 gateway.sp_users 구조 내보내기
CREATE TABLE IF NOT EXISTS `sp_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '사용자 ID',
  `GROUP_ID` int(11) NOT NULL COMMENT '그룹 ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '권한 ID',
  `USER_NM` varchar(10) NOT NULL COMMENT '사용자 이름',
  `USER_LOGIN_ID` varchar(20) NOT NULL COMMENT '사용자 로그인 ID',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `UPT_DT` datetime DEFAULT NULL COMMENT '수정일',
  `REG_USER_NO` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPT_USER_NO` varchar(20) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`USER_ID`,`GROUP_ID`,`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='사용자 테이블';

-- 테이블 데이터 gateway.sp_users:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sp_users` DISABLE KEYS */;
INSERT INTO `sp_users` (`USER_ID`, `GROUP_ID`, `ROLE_ID`, `USER_NM`, `USER_LOGIN_ID`, `REG_DT`, `UPT_DT`, `REG_USER_NO`, `UPT_USER_NO`) VALUES
	(1, 1, 1, '어드민', 'admin', NULL, NULL, NULL, NULL),
	(2, 1, 2, '구경태', 'saruan', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sp_users` ENABLE KEYS */;


-- servicelog 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `servicelog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  */;
USE `servicelog`;

-- 테이블 servicelog.service_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `REQUEST_HEADER` varchar(2500) NOT NULL COMMENT '요청 헤더',
  `REQUEST_PARAMS` varchar(2500) DEFAULT NULL COMMENT '요청 파라미터',
  `response` varchar(2500) DEFAULT NULL,
  `APP_KEY` varchar(30) DEFAULT NULL COMMENT '앱 키',
  `SERVICE_NM` varchar(50) DEFAULT NULL COMMENT '서비스 명',
  `CLIENT_SERVICE` varchar(20) DEFAULT NULL COMMENT '클라이언트 서비스',
  `request_dt` varchar(20) DEFAULT NULL,
  `response_dt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci  COMMENT='서비스 로그 테이블';

-- 테이블 데이터 servicelog.service_log:~26 rows (대략적) 내보내기
/*!40000 ALTER TABLE `service_log` DISABLE KEYS */;
INSERT INTO `service_log` (`ID`, `REQUEST_HEADER`, `REQUEST_PARAMS`, `response`, `APP_KEY`, `SERVICE_NM`, `CLIENT_SERVICE`, `request_dt`, `response_dt`) VALUES
	(1, '{Host=localhost:8888, Connection=keep-alive, Content-Length=258, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, Content-Type=application/json, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":{"regUserNo":"1","uptUserNo":null,"regDt":"2020-07-07T07:29:58.805+0000","uptDt":"2020-07-07T07:29:58.805+0000","serviceId":41,"gwApp":null,"filter":{"regUserNo":null,"uptUserNo":null,"regDt":null,"uptDt":null,"filterId":1,"filterNm":null,"filterDesc":null,"filterBean":null,"useYn":null},"servicePath":"/api/filter","serviceTargetUrl":"http://localhost:8080/api/service/v1/filter/","serviceNm":"필터 서비스","serviceDesc":"필터 Service","serviceLoginType":"1","serviceAuthType":"1","useYn":"Y"}}', '', '/gateway/routes/', 'GATEWAY', '2020-07-07 16:29:58', '2020-07-07 16:29:58'),
	(2, '[Host:"localhost:8888", Connection:"keep-alive", User-Agent:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36", api_key:"x0k1fCHKoE7eRYVe80LHR62nU", Authorization:"Bearer d01e59d3-b58a-4fbe-a40e-ed23b16b6f71", Accept:"*/*", Sec-Fetch-Site:"none", Sec-Fetch-Mode:"cors", Sec-Fetch-Dest:"empty", Accept-Encoding:"gzip, deflate, br", Accept-Language:"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7", Cookie:"_ga=GA1.1.2014045349.1592206312"]', '', 'ResponseDTO(resultCode=APP001, resultMessage=APP이 등록되지 않았습니다., resultData=true)', '', '', 'GATEWAY', '2020-07-07 16:30:12', '2020-07-07 16:30:12'),
	(3, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"serviceId":41,"filterId":1,"serviceNm":"필터 서비스","servicePath":"/api/filter","serviceTargetUrl":"http://localhost:8080/api/service/v1/filter/","serviceDesc":"필터 Service","serviceLoginType":"1","serviceAuthType":"1","useYn":"Y","filterBean":"CommonFilter","filterUseYn":"Y","regUserNo":"1","regDt":"2020-07-07T07:29:59.000+0000","uptDt":"2020-07-07T07:29:59.000+0000"}]}', '', '/gateway/routes/', 'GATEWAY', '2020-07-07 16:30:22', '2020-07-07 16:30:22'),
	(4, '{Host=localhost:8888, Connection=keep-alive, Content-Length=123, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, Content-Type=application/json, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":true}', '', '/gateway/apps/', 'GATEWAY', '2020-07-07 16:30:29', '2020-07-07 16:30:29'),
	(5, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"appId":1,"appNm":"앱 등록 테스트","appKey":"U39P8WMi2ZUsMP39z19gZbumK","appDesc":"앱 테스트","useYn":"Y","serviceId":[41],"regUserNo":"1","regDt":"2020-07-07T07:30:29.000+0000","uptDt":"2020-07-07T07:30:29.000+0000"}]}', '', '/gateway/apps/', 'GATEWAY', '2020-07-07 16:30:34', '2020-07-07 16:30:34'),
	(6, '[Host:"localhost:8888", Connection:"keep-alive", User-Agent:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36", api_key:"x0k1fCHKoE7eRYVe80LHR62nU", Authorization:"Bearer d01e59d3-b58a-4fbe-a40e-ed23b16b6f71", Accept:"*/*", Sec-Fetch-Site:"none", Sec-Fetch-Mode:"cors", Sec-Fetch-Dest:"empty", Accept-Encoding:"gzip, deflate, br", Accept-Language:"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7", Cookie:"_ga=GA1.1.2014045349.1592206312"]', '', 'ResponseDTO(resultCode=APP001, resultMessage=APP이 등록되지 않았습니다., resultData=true)', '', '', 'GATEWAY', '2020-07-07 16:30:44', '2020-07-07 16:30:44'),
	(7, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY0OSwiS2V5IjoiN2UxZTQxMmItY2U0YS00ZjgwLTk2OTQtN2ZlNjFjY2M5MzhhIn0.atLfaHITN0kjsfuk5bCbVoIqVuTmGBq5kk9seeksK6g"}', '', '/gateway/saml/', 'GATEWAY', '2020-07-07 16:30:49', '2020-07-07 16:30:49'),
	(8, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY1NCwiS2V5IjoiZDAwNDQxZjMtMDI1Ny00NGZhLThlNmEtOTgyMzdlYmExMzdiIn0.VR_yZc-p-OQfh6aiah6MrVQM4SbE7TSHv2s8_zdqjiA"}', '', '/gateway/saml/', 'GATEWAY', '2020-07-07 16:30:54', '2020-07-07 16:30:54'),
	(9, '{Host=localhost:8888, Connection=keep-alive, Content-Length=224, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Content-Type=application/x-www-form-urlencoded, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312, Authorization=Basic Y2xpZW50MjpwYXNzd29yZA==}', 'username=user&password=pass&scope=read_profile&grant_type=password&saml=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY1NCwiS2V5IjoiZDAwNDQxZjMtMDI1Ny00NGZhLThlNmEtOTgyMzdlYmExMzdiIn0', '{"resultCode":"SAML003"', '', '/gateway/token/', 'GATEWAY', '2020-07-07 16:31:12', '2020-07-07 16:31:12'),
	(10, '{Host=localhost:8888, Connection=keep-alive, Content-Length=224, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Content-Type=application/x-www-form-urlencoded, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312, Authorization=Basic Y2xpZW50MjpwYXNzd29yZA==}', 'username=user&password=pass&scope=read_profile&grant_type=password&saml=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY1NCwiS2V5IjoiZDAwNDQxZjMtMDI1Ny00NGZhLThlNmEtOTgyMzdlYmExMzdiIn0', ',"authStatus":400,"authCode":"invalid_request"', '', '/gateway/token/', 'GATEWAY', '2020-07-07 16:31:12', '2020-07-07 16:31:12'),
	(11, '{Host=localhost:8888, Connection=keep-alive, Content-Length=224, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Content-Type=application/x-www-form-urlencoded, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312, Authorization=Basic Y2xpZW50MjpwYXNzd29yZA==}', 'username=user&password=pass&scope=read_profile&grant_type=password&saml=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY1NCwiS2V5IjoiZDAwNDQxZjMtMDI1Ny00NGZhLThlNmEtOTgyMzdlYmExMzdiIn0', '}', '', '/gateway/token/', 'GATEWAY', '2020-07-07 16:31:12', '2020-07-07 16:31:12'),
	(12, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY3OSwiS2V5IjoiODE2YTNiNmQtNWQ4MS00OTdkLWI1ZjktMWNkZGVhMjM3M2Q3In0.4youfQFa6-YwTqreuOlehHprpJj70-2LDfNkB52jwR0"}', '', '/gateway/saml/', 'GATEWAY', '2020-07-07 16:31:19', '2020-07-07 16:31:19'),
	(13, '{Host=localhost:8888, Connection=keep-alive, Content-Length=268, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Content-Type=application/x-www-form-urlencoded, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312, Authorization=Basic Y2xpZW50MjpwYXNzd29yZA==}', 'username=user&password=pass&scope=read_profile&grant_type=password&saml=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5NDExMDY3OSwiS2V5IjoiODE2YTNiNmQtNWQ4MS00OTdkLWI1ZjktMWNkZGVhMjM3M2Q3In0.4youfQFa6-YwTqreuOlehHprpJj70-2LDfNkB52jwR0', '{"access_token":"44e9e52f-3ad2-4654-9a80-e1aeeecb39f3","token_type":"bearer","refresh_token":"d7a81767-98a2-456f-aa9e-7e2d6907b8f6","expires_in":3599,"scope":"read_profile"}', '', '/gateway/token/', 'GATEWAY', '2020-07-07 16:31:26', '2020-07-07 16:31:26'),
	(14, '{Host=localhost:8888, Connection=keep-alive, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, api_key=U39P8WMi2ZUsMP39z19gZbumK, Authorization=Bearer 44e9e52f-3ad2-4654-9a80-e1aeeecb39f3, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":{"regUserNo":"1","regDt":"2020-04-20T00:26:04.000+0000","uptDt":"2020-04-20T00:26:04.000+0000","filterId":1,"filterNm":"기본 공통 필터","filterDesc":"기본 인증 처리용 Filter","filterBean":"CommonFilter","useYn":"Y"}}', 'U39P8WMi2ZUsMP39z19gZbumK', '/api/filter/1', 'GATEWAY', '2020-07-07 16:31:37', '2020-07-07 16:31:37'),
	(15, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"regUserNo":"1","regDt":"2020-04-20T00:26:04.000+0000","uptDt":"2020-04-20T00:26:04.000+0000","filterId":1,"filterNm":"기본 공통 필터","filterDesc":"기본 인증 처리용 Filter","filterBean":"CommonFilter","useYn":"Y"},{"regUserNo":"1","regDt":"2020-05-21T06:24:37.000+0000","uptDt":"2020-05-21T06:24:37.000+0000","filterId":2,"filterNm":"SAML 필터","filterDesc":"SAML 검증용 필터","filterBean":"SAMLFilter","useYn":"Y"},{"regUserNo":"1","uptUserNo":"1","regDt":"2020-05-21T06:24:54.000+0000","uptDt":"2020-05-28T02:05:55.000+0000","filterId":3,"filterNm":"AccessToken 발급 필터","filterDesc":"AccessToken을 발급 받기 위한 사전 인증 처리용 필터","filterBean":"TokenFilter","useYn":"Y"}]}', '', '/gateway/filters/', 'GATEWAY', '2020-07-07 16:33:02', '2020-07-07 16:33:02'),
	(16, '{Host=localhost:8888, Connection=keep-alive, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, api_key=U39P8WMi2ZUsMP39z19gZbumK, Authorization=Bearer 4578cef4-be66-4df8-855f-2a6cb453ce6b, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312; m=2258:Z3Vlc3Q6Z3Vlc3Q%253D}', '', '{"resultCode":"200","resultMessage":"Success","resultData":{"regUserNo":"1","regDt":"2020-04-20T00:26:04.000+0000","uptDt":"2020-04-20T00:26:04.000+0000","filterId":1,"filterNm":"기본 공통 필터","filterDesc":"기본 인증 처리용 Filter","filterBean":"CommonFilter","useYn":"Y"}}', 'U39P8WMi2ZUsMP39z19gZbumK', '/api/filter/1', 'GATEWAY', '2020-08-18 17:45:35', '2020-08-18 17:45:35'),
	(17, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"appId":1,"appNm":"앱 등록 테스트","appKey":"U39P8WMi2ZUsMP39z19gZbumK","appDesc":"앱 테스트","useYn":"Y","serviceId":[41],"regUserNo":"1","regDt":"2020-07-07T07:30:29.000+0000","uptDt":"2020-07-07T07:30:29.000+0000"}]}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:01:34', '2020-08-24 09:01:34'),
	(18, '{Host=localhost:8888, Connection=keep-alive, Content-Length=125, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, Content-Type=application/json, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"COM005","resultMessage":"유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.","resultData":{}}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:02:56', '2020-08-24 09:02:56'),
	(19, '{Host=localhost:8888, Connection=keep-alive, Content-Length=125, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, Content-Type=application/json, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"COM005","resultMessage":"유효하지 않은 요청 자료가 있습니다. 파라미터를 체크 해 주세요.","resultData":{}}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:03:01', '2020-08-24 09:03:01'),
	(20, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"serviceId":41,"filterId":1,"serviceNm":"필터 서비스","servicePath":"/api/filter","serviceTargetUrl":"http://localhost:8080/api/service/v1/filter/","serviceDesc":"필터 Service","serviceLoginType":"1","serviceAuthType":"1","useYn":"Y","filterBean":"CommonFilter","filterUseYn":"Y","regUserNo":"1","regDt":"2020', '', '/gateway/routes/', 'GATEWAY', '2020-08-24 09:03:06', '2020-08-24 09:03:06'),
	(21, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '-07-07T07:29:59.000+0000","uptDt":"2020-07-07T07:29:59.000+0000"},{"serviceId":43,"filterId":1,"serviceNm":"라우팅 서비스","servicePath":"/api/routs","serviceTargetUrl":"http://localhost:8080/api/service/v1/routes/","serviceDesc":"라우팅 Service","serviceLoginType":"1","serviceAuthType":"1","useYn":"Y","filterBean":"CommonFilter","filterUseYn":"Y","regUserNo":"1","regDt":"2020-08-23T23:57:37.000+0000","uptDt":"2020-08-23T23:57:37.000+0000"}]}', '', '/gateway/routes/', 'GATEWAY', '2020-08-24 09:03:06', '2020-08-24 09:03:06'),
	(22, '{Host=localhost:8888, Connection=keep-alive, Content-Length=122, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, Content-Type=application/json, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":true}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:03:20', '2020-08-24 09:03:20'),
	(23, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"appId":1,"appNm":"앱 등록 테스트","appKey":"U39P8WMi2ZUsMP39z19gZbumK","appDesc":"앱 테스트","useYn":"Y","serviceId":[41],"regUserNo":"1","regDt":"2020-07-07T07:30:29.000+0000","uptDt":"2020-07-07T07:30:29.000+0000"},{"appId":2,"appNm":"전체 서비스","appKey":"qptOci8KmARQSL9qvpe0Dd8aL","appDesc":"앱 테스트","useYn":"Y","serviceId":[41,43],"regUserNo":"1","regDt":"2020-08-24T00:03:21.000+0000","uptDt":"2020-08-24T00:03:21.000+0000"},{"appId":2,"appNm":"전체 서비스","appKey":"qptOci8KmARQSL9qvpe0Dd8aL","appDesc":"앱 테스트","useYn":"Y","serviceId":[41,43],"regUserNo":"1","regDt":"2020-08-24T00:03:21.000+0000","uptDt":"2020-08-24T00:03:21.000+0000"}]}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:03:31', '2020-08-24 09:03:31'),
	(24, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":[{"appId":1,"appNm":"앱 등록 테스트","appKey":"U39P8WMi2ZUsMP39z19gZbumK","appDesc":"앱 테스트","useYn":"Y","serviceId":[41],"regUserNo":"1","regDt":"2020-07-07T07:30:29.000+0000","uptDt":"2020-07-07T07:30:29.000+0000"},{"appId":2,"appNm":"전체 서비스","appKey":"qptOci8KmARQSL9qvpe0Dd8aL","appDesc":"앱 테스트","useYn":"Y","serviceId":[41,43],"regUserNo":"1","regDt":"2020-08-24T00:03:21.000+0000","uptDt":"2020-08-24T00:03:21.000+0000"},{"appId":2,"appNm":"전체 서비스","appKey":"qptOci8KmARQSL9qvpe0Dd8aL","appDesc":"앱 테스트","useYn":"Y","serviceId":[41,43],"regUserNo":"1","regDt":"2020-08-24T00:03:21.000+0000","uptDt":"2020-08-24T00:03:21.000+0000"}]}', '', '/gateway/apps/', 'GATEWAY', '2020-08-24 09:04:42', '2020-08-24 09:04:42'),
	(25, '{Host=localhost:8888, Connection=keep-alive, Authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.e30.8RqZ7aXgU9y2ieUH5hnQfidruIqdLR3qVSMwAMXQFyA, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5ODMyNTA2NiwiS2V5IjoiZjE2ZWY0ZjktODRhOC00MjAzLWI3YzUtYWNhN2VlYmJiMzIyIn0.jBWiJSpHPntcbnGngfiuyRLonNDU4qTPO-zhuj6QZsA"}', '', '/gateway/saml/', 'GATEWAY', '2020-08-25 11:11:05', '2020-08-25 11:11:06'),
	(26, '{Host=localhost:8888, Connection=keep-alive, Content-Length=268, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, Content-Type=application/x-www-form-urlencoded, Accept=*/*, Origin=chrome-extension://aejoelaoggembcahagimdiliamlcdmfm, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312, Authorization=Basic Y2xpZW50MjpwYXNzd29yZA==}', 'username=user&password=pass&scope=read_profile&grant_type=password&saml=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDT01NT05fQ0xVU1RFUiIsImV4cCI6MTU5ODMyNTA2NiwiS2V5IjoiZjE2ZWY0ZjktODRhOC00MjAzLWI3YzUtYWNhN2VlYmJiMzIyIn0.jBWiJSpHPntcbnGngfiuyRLonNDU4qTPO-zhuj6QZsA', '{"access_token":"9c399d6c-feca-405f-8780-c13e5cb47ae0","token_type":"bearer","refresh_token":"e2b1c9ae-0efe-492e-bf0e-e8f697fd799d","expires_in":3599,"scope":"read_profile"}', '', '/gateway/token/', 'GATEWAY', '2020-08-25 11:11:14', '2020-08-25 11:11:15'),
	(27, '{Host=localhost:8888, Connection=keep-alive, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, api_key=U39P8WMi2ZUsMP39z19gZbumK, Authorization=Bearer 9c399d6c-feca-405f-8780-c13e5cb47ae0, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":{"regUserNo":"1","regDt":"2020-04-20T00:26:04.000+0000","uptDt":"2020-04-20T00:26:04.000+0000","filterId":1,"filterNm":"기본 공통 필터","filterDesc":"기본 인증 처리용 Filter","filterBean":"CommonFilter","useYn":"Y"}}', 'U39P8WMi2ZUsMP39z19gZbumK', '/api/filter/1', 'GATEWAY', '2020-08-25 11:11:24', '2020-08-25 11:11:24'),
	(28, '{Host=localhost:8888, Connection=keep-alive, User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36, api_key=U39P8WMi2ZUsMP39z19gZbumK, Authorization=Bearer 9c399d6c-feca-405f-8780-c13e5cb47ae0, Accept=*/*, Sec-Fetch-Site=none, Sec-Fetch-Mode=cors, Sec-Fetch-Dest=empty, Accept-Encoding=gzip, deflate, br, Accept-Language=ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7, Cookie=_ga=GA1.1.2014045349.1592206312}', '', '{"resultCode":"200","resultMessage":"Success","resultData":{"regUserNo":"1","regDt":"2020-04-20T00:26:04.000+0000","uptDt":"2020-04-20T00:26:04.000+0000","filterId":1,"filterNm":"기본 공통 필터","filterDesc":"기본 인증 처리용 Filter","filterBean":"CommonFilter","useYn":"Y"}}', 'U39P8WMi2ZUsMP39z19gZbumK', '/api/filter/1', 'GATEWAY', '2020-08-25 11:18:38', '2020-08-25 11:18:38');
/*!40000 ALTER TABLE `service_log` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

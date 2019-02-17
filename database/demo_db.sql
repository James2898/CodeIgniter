--
-- MySQL 5.1.53
-- Sun, 17 Feb 2019 13:45:34 +0000
--

CREATE TABLE `admin` (
   `admin_id` int(11) not null auto_increment,
   `name` longtext not null,
   `email` longtext not null,
   `password` longtext not null,
   `level` longtext not null,
   `authentication_key` longtext not null,
   PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES ('1', 'Mr. Admin', 'admin@admin.com', 'admin', '1', '');

CREATE TABLE `book` (
   `book_id` int(11) not null auto_increment,
   `name` longtext not null,
   `description` longtext not null,
   `author` longtext not null,
   `class_id` longtext,
   `status` longtext not null,
   `price` longtext,
   `qty` int(11),
   PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=8;

INSERT INTO `book` (`book_id`, `name`, `description`, `author`, `class_id`, `status`, `price`, `qty`) VALUES ('7', 'Basic Math', 'Basic Math', 'Author', '', 'Available', '', '0');

CREATE TABLE `book_frequency` (
   `book_frequency_id` int(11) not null auto_increment,
   `book_id` int(11),
   `book_frequency` int(11),
   PRIMARY KEY (`book_frequency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5;

INSERT INTO `book_frequency` (`book_frequency_id`, `book_id`, `book_frequency`) VALUES ('4', '7', '2');
INSERT INTO `book_frequency` (`book_frequency_id`, `book_id`, `book_frequency`) VALUES ('3', '', '1');

CREATE TABLE `borrower_frequency` (
   `borrower_frequency_id` int(11) not null auto_increment,
   `student_id` longtext,
   `borrower_frequency` int(11),
   PRIMARY KEY (`borrower_frequency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6;

INSERT INTO `borrower_frequency` (`borrower_frequency_id`, `student_id`, `borrower_frequency`) VALUES ('4', '201900314', '2');
INSERT INTO `borrower_frequency` (`borrower_frequency_id`, `student_id`, `borrower_frequency`) VALUES ('5', '201900310', '1');

CREATE TABLE `borrowers` (
   `borrower_id` int(11) not null auto_increment,
   `student_id` int(11),
   `book_id` int(11),
   `status` text,
   `date_borrowed` longtext,
   `date_returned` longtext,
   PRIMARY KEY (`borrower_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=16;

INSERT INTO `borrowers` (`borrower_id`, `student_id`, `book_id`, `status`, `date_borrowed`, `date_returned`) VALUES ('5', '1', '2', '', '02/21/2010', '');
INSERT INTO `borrowers` (`borrower_id`, `student_id`, `book_id`, `status`, `date_borrowed`, `date_returned`) VALUES ('14', '201900310', '7', 'returned', '02/14/2019', '02-15-2019');
INSERT INTO `borrowers` (`borrower_id`, `student_id`, `book_id`, `status`, `date_borrowed`, `date_returned`) VALUES ('13', '201900310', '7', 'borrowed', '02/12/2019', '02-12-2019');
INSERT INTO `borrowers` (`borrower_id`, `student_id`, `book_id`, `status`, `date_borrowed`, `date_returned`) VALUES ('15', '201900315', '7', 'borrowed', '12/01/2008', '10/31/2018');

CREATE TABLE `ci_sessions` (
   `id` varchar(40) not null,
   `ip_address` varchar(45) not null,
   `timestamp` int(10) unsigned not null default '0',
   `data` blob not null,
   PRIMARY KEY (`id`),
   KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('016dd2c9a763748f506022dc950ef6b815f2fac2', '127.0.0.1', '1550400854', '__ci_last_regenerate|i:1550400489;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('03ca92f43b8b71ee3e6cb499e98bf5913be40867', '127.0.0.1', '1550400028', '__ci_last_regenerate|i:1550399735;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('233f1f306d085eeb565c31ccc33029cf7d460e22', '127.0.0.1', '1550402879', '__ci_last_regenerate|i:1550402808;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2b369b3c82cec318ce48a2d55e6924b60984319e', '127.0.0.1', '1550402047', '__ci_last_regenerate|i:1550402039;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4d875b876f21d37e7a9638a26bf1b5b8e9e7fbb2', '127.0.0.1', '1550401167', '__ci_last_regenerate|i:1550401162;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";flash_message|s:23:\"Data Added Successfully\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5022240878bf3dfa5fc7cdf63055cd71daff259c', '127.0.0.1', '1550405617', '__ci_last_regenerate|i:1550405552;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('58b4fc783af8089360726521f8d5aa2f55485851', '127.0.0.1', '1550400365', '__ci_last_regenerate|i:1550400126;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5dcbc1224d662527b3c94d069728122b68533465', '127.0.0.1', '1550401153', '__ci_last_regenerate|i:1550400859;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('64484b5a57dbc0eb0bac78304c9640ae992b81a4', '127.0.0.1', '1550410972', '__ci_last_regenerate|i:1550410698;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";flash_message|s:12:\"Data Updated\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9c3f6ca3fe53afa3208417c5c363c6c4c4786df7', '127.0.0.1', '1550398218', '__ci_last_regenerate|i:1550398079;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a1715ad9e22b5396aa27a1e0c980dfcc3e95f0a3', '127.0.0.1', '1550399716', '__ci_last_regenerate|i:1550399422;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a33c1560985cb9d041553c24a89f4a18de3c42ea', '127.0.0.1', '1550411096', '__ci_last_regenerate|i:1550411002;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";flash_message|s:12:\"Data Updated\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a688c5f0e4f5e80503cc172c0a3ff5dada2de812', '127.0.0.1', '1550399311', '__ci_last_regenerate|i:1550399020;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a9c4f9e95c15e157ea451bc12ae897340d5304ff', '127.0.0.1', '1550404068', '__ci_last_regenerate|i:1550404046;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c6420cb0eff793b196746cb7fc79631c5d1cf9f7', '127.0.0.1', '1550404821', '__ci_last_regenerate|i:1550404378;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d9c34782ce6c9d2966147a0653ebd11763d00bbc', '127.0.0.1', '1550405263', '__ci_last_regenerate|i:1550405057;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('df717185782cba36ce0084a68f410b043028d220', '127.0.0.1', '1550404022', '__ci_last_regenerate|i:1550403732;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";flash_message|s:12:\"Data Updated\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f194196f058b9e653910bbd6475c1341b5ded306', '127.0.0.1', '1550397926', '__ci_last_regenerate|i:1550397670;admin_login|s:1:\"1\";admin_id|s:1:\"1\";login_user_id|s:1:\"1\";name|s:9:\"Mr. Admin\";login_type|s:5:\"admin\";');

CREATE TABLE `class` (
   `class_id` int(11) not null auto_increment,
   `name` longtext not null,
   `name_numeric` longtext,
   `teacher_id` longtext,
   PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=10;

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES ('5', 'Developmental Kinder', '', 'T-20190004');
INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES ('6', 'Kinder 1', '', 'T-20190003');
INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES ('7', 'Kinder 2', '', 'T-20190003');
INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES ('8', 'Grade 1', '', 'T-20190003');

CREATE TABLE `document` (
   `document_id` int(11) not null auto_increment,
   `title` longtext not null,
   `description` longtext not null,
   `file_name` longtext not null,
   `file_type` longtext not null,
   `class_id` longtext not null,
   `teacher_id` int(11) not null,
   `timestamp` longtext not null,
   PRIMARY KEY (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3;

INSERT INTO `document` (`document_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`) VALUES ('1', 'ASP .Net Course Content', 'All details about course content in ASP.net', 'ASPNet.pdf', 'pdf', '3', '0', '1451948400');
INSERT INTO `document` (`document_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`) VALUES ('2', 'C course content', 'Details about C language course content', 'CLanguage.pdf', 'pdf', '1', '0', '1451948400');

CREATE TABLE `frequency` (
   `frequency_id` int(11) not null auto_increment,
   `student_id` text,
   `book_id` text,
   `student_freq` text,
   `book_freq` text,
   PRIMARY KEY (`frequency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

-- [Table `frequency` is empty]

CREATE TABLE `language` (
   `phrase_id` int(11) not null auto_increment,
   `phrase` longtext not null,
   `english` longtext not null,
   `bengali` longtext not null,
   `spanish` longtext not null,
   `arabic` longtext not null,
   `dutch` longtext not null,
   `russian` longtext not null,
   `chinese` longtext not null,
   `turkish` longtext not null,
   `portuguese` longtext not null,
   `hungarian` longtext not null,
   `french` longtext not null,
   `greek` longtext not null,
   `german` longtext not null,
   `italian` longtext not null,
   `thai` longtext not null,
   `urdu` longtext not null,
   `hindi` longtext not null,
   `latin` longtext not null,
   `indonesian` longtext not null,
   `japanese` longtext not null,
   `korean` longtext not null,
   PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1679;

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1455', 'login', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1456', 'admin_dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1457', 'dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1458', 'student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1459', 'add_new_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1460', 'student_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1461', 'class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1462', 'student_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1463', 'teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1464', 'parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1465', 'manage_classes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1466', 'manage_sections', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1467', 'library', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1468', 'Manage Books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1469', 'Manage Borrowers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1470', 'noticeboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1471', 'account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1472', 'edit_profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1473', 'change_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1474', 'event_schedule', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1475', 'parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1476', 'delete', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1477', 'cancel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1478', 'name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1479', 'status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1480', 'options', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1481', 'edit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1482', 'all_students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1483', 'section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1484', 'roll', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1485', 'address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1486', 'email', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1487', 'profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1488', 'student_no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1489', 'admission_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1490', 'value_required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1491', 'select', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1492', 'Add_New_Parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1493', 'select_class_first', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1494', 'birthday', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1495', 'gender', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1496', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1497', 'female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1498', 'phone', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1499', 'add_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1500', 'data_added_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1501', 'edit_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1502', 'dormitory', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1503', 'data_deleted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1504', 'first name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1505', 'middle name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1506', 'first_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1507', 'middle_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1508', 'last_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1509', 'data_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1510', 'manage_library_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1511', 'Librarian: Ma. Theresa Butardo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1512', 'add_new_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1513', 'list_of_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1514', 'frequent borrowed books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1515', 'description', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1516', 'author', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1517', 'class_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1518', 'price', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1519', 'qty.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1520', 'book_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1521', 'books_frequency', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1522', 'Add New Borrower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1523', 'list_of_borrowers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1524', 'returned_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1525', 'frequent_borrowers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1526', 'book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1527', 'date_borrowed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1528', 'return_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1529', 'date_returned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1530', 'books borrowed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1531', 'return', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1532', 'Edit Borrower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1533', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1534', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1535', 'borrow_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1536', 'return_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1537', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1538', 'borrowed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1539', 'returned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1540', 'update', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1541', 'student_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1542', 'all_parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1543', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1544', 'profession', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1545', 'view children', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1546', 'add_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1547', 'add_pa1rent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1548', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1549', 'add_par1nt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1550', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1551', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1552', '11add_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1553', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1554', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1555', 'data_added_swwwwwccessfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1556', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1557', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1558', 'New Parent Data Added Successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1559', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1560', 'Addqwqweq_New_Parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1561', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1562', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1563', 'manage_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1564', 'add_new_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1565', 'edit_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1566', '_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1567', 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1568', 'waiting', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1569', 'dropped', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1570', 'transferred', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1571', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1572', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1573', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1574', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1575', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1576', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1577', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1578', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1579', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1580', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1581', 'Add Borrower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1582', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1583', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1584', 'date_of_borrow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1585', 'date_to_return', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1586', 'Submit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1587', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1588', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1589', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1590', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1591', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1592', 'View profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1593', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1594', 'id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1595', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1596', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1597', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1598', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1599', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1600', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1601', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1602', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1603', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1604', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1605', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1606', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1607', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1608', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1609', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1610', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1611', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1612', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1613', 'add_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1614', 'teacher_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1615', 'edit_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1616', 'sex', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1617', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1618', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1619', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1620', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1621', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1622', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1623', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1624', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1625', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1626', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1627', 'parent_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1628', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1629', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1630', '#', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1631', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1632', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1633', 'rol1l', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1634', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1635', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1636', 'manage_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1637', 'class_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1638', 'add_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1639', 'class_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1640', 'add_new_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1641', 'section_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1642', 'nick_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1643', 'edit_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1644', 'add_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1645', 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1646', 'manage_noticeboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1647', 'noticeboard_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1648', 'add_noticeboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1649', 'title', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1650', 'notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1651', 'date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1652', 'add_notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1653', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1654', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1655', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1656', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1657', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1658', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1659', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1660', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1661', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1662', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1663', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1664', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1665', 'Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1666', 'Book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1667', 'Status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1668', 'manage_profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1669', 'photo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1670', 'update_profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1671', 'current_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1672', 'new_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1673', 'confirm_new_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1674', 'Librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1675', 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1676', 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1677', 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES ('1678', 'Librarian: Nikole Ydnar G. Bautista', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

CREATE TABLE `librarian` (
   `librarian_id` int(11) not null auto_increment,
   `teacher_id` longtext,
   PRIMARY KEY (`librarian_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

INSERT INTO `librarian` (`librarian_id`, `teacher_id`) VALUES ('1', 'T-20190004');

CREATE TABLE `mark` (
   `mark_id` int(11) not null auto_increment,
   `student_id` int(11) not null,
   `subject_id` int(11) not null,
   `class_id` int(11) not null,
   `exam_id` int(11) not null,
   `mark_obtained` int(11) not null default '0',
   `mark_total` int(11) not null default '100',
   `comment` longtext not null,
   PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=79;

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('1', '1', '1', '1', '1', '92', '100', 'Very Good');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('2', '1', '2', '1', '1', '80', '100', 'Good');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('3', '1', '3', '1', '1', '45', '100', 'Study Hard');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('4', '2', '1', '1', '1', '45', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('5', '3', '1', '1', '1', '65', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('6', '4', '1', '1', '1', '78', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('7', '5', '1', '1', '1', '45', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('8', '6', '1', '1', '1', '98', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('9', '7', '1', '1', '1', '87', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('10', '8', '1', '1', '1', '66', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('11', '9', '1', '1', '1', '78', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('12', '10', '1', '1', '1', '54', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('13', '11', '1', '1', '1', '95', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('14', '12', '1', '1', '1', '54', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('15', '13', '1', '1', '1', '77', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('16', '14', '1', '1', '1', '48', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('17', '15', '1', '1', '1', '98', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('18', '16', '1', '1', '1', '55', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('19', '17', '1', '1', '1', '55', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('20', '18', '1', '1', '1', '78', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('21', '19', '1', '1', '1', '57', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('22', '20', '1', '1', '1', '78', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('23', '21', '1', '1', '1', '56', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('24', '22', '1', '1', '1', '57', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('25', '23', '1', '1', '1', '84', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('26', '24', '1', '1', '1', '86', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('27', '25', '1', '1', '1', '75', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('28', '26', '1', '1', '1', '85', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('29', '2', '2', '1', '1', '90', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('30', '3', '2', '1', '1', '45', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('31', '4', '2', '1', '1', '65', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('32', '5', '2', '1', '1', '67', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('33', '6', '2', '1', '1', '43', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('34', '7', '2', '1', '1', '94', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('35', '8', '2', '1', '1', '93', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('36', '9', '2', '1', '1', '57', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('37', '10', '2', '1', '1', '84', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('38', '11', '2', '1', '1', '83', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('39', '12', '2', '1', '1', '67', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('40', '13', '2', '1', '1', '43', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('41', '14', '2', '1', '1', '94', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('42', '15', '2', '1', '1', '73', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('43', '16', '2', '1', '1', '84', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('44', '17', '2', '1', '1', '46', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('45', '18', '2', '1', '1', '84', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('46', '19', '2', '1', '1', '46', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('47', '20', '2', '1', '1', '81', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('48', '21', '2', '1', '1', '74', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('49', '22', '2', '1', '1', '46', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('50', '23', '2', '1', '1', '74', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('51', '24', '2', '1', '1', '84', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('52', '25', '2', '1', '1', '47', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('53', '26', '2', '1', '1', '67', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('54', '2', '3', '1', '1', '64', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('55', '3', '3', '1', '1', '45', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('56', '4', '3', '1', '1', '78', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('57', '5', '3', '1', '1', '65', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('58', '6', '3', '1', '1', '22', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('59', '7', '3', '1', '1', '82', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('60', '8', '3', '1', '1', '48', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('61', '9', '3', '1', '1', '87', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('62', '10', '3', '1', '1', '81', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('63', '11', '3', '1', '1', '73', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('64', '12', '3', '1', '1', '66', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('65', '13', '3', '1', '1', '63', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('66', '14', '3', '1', '1', '43', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('67', '15', '3', '1', '1', '85', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('68', '16', '3', '1', '1', '46', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('69', '17', '3', '1', '1', '81', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('70', '18', '3', '1', '1', '83', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('71', '19', '3', '1', '1', '43', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('72', '20', '3', '1', '1', '41', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('73', '21', '3', '1', '1', '61', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('74', '22', '3', '1', '1', '53', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('75', '23', '3', '1', '1', '66', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('76', '24', '3', '1', '1', '77', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('77', '25', '3', '1', '1', '74', '100', 'comments here');
INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`) VALUES ('78', '26', '3', '1', '1', '46', '100', 'comments here');

CREATE TABLE `message` (
   `message_id` int(11) not null auto_increment,
   `message_thread_code` longtext not null,
   `message` longtext not null,
   `sender` longtext not null,
   `timestamp` longtext not null,
   `read_status` int(11) not null default '0',
   PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `message` is empty]

CREATE TABLE `message_thread` (
   `message_thread_id` int(11) not null auto_increment,
   `message_thread_code` longtext not null,
   `sender` longtext not null,
   `reciever` longtext not null,
   `last_message_timestamp` longtext not null,
   PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- [Table `message_thread` is empty]

CREATE TABLE `noticeboard` (
   `notice_id` int(11) not null auto_increment,
   `notice_title` longtext not null,
   `notice` longtext not null,
   `create_timestamp` int(11) not null,
   PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

-- [Table `noticeboard` is empty]

CREATE TABLE `parent` (
   `id` int(11) not null auto_increment,
   `parent_id` longtext,
   `fname` longtext,
   `mname` longtext,
   `lname` longtext,
   `name` longtext not null,
   `email` longtext,
   `password` longtext,
   `phone` longtext not null,
   `address` longtext,
   `profession` longtext,
   `authentication_key` longtext,
   PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=18;

INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('8', 'P-2019008', 'Caldit', 'X', 'Caldit', '', 'mawolenecaldit@yahoo.com', '', '09474527700', 'B6 L16 P-1 Narra Village Adelina Complex 3', 'Housewife', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('9', 'P-20190009', 'Weezar', '', 'Idris', 'Weezar idris', 'weezar@yahoo.com', '', '09177868887', 'Binan, Laguna', 'teacher', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('10', 'P-20190010', 'James', '', 'Martinez', 'james sige', 'sige@yahooc.on', '', '8887556', 'Binan, Laguna', 'None', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('14', 'P-20190014', 'qwe', 'qwe', '', '', 'nhelle@gmail.com', '', 'qweq', 'qwqew', 'qweeq', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('16', 'P-20190016', 'eqwe', 'jnjnj', 'njnjn', '', 'jnjn', '', 'jn', 'jn', 'jn', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('15', 'P-20190015', 'qwe', 'qweqwe', '', '', 'qwe', '', 'qweqqwe', 'qweqwe', 'qwe', '');
INSERT INTO `parent` (`id`, `parent_id`, `fname`, `mname`, `lname`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES ('17', 'P-20190017', 'xccx', 'xcxcx', 'xccxcx', '', 'xcxxcx', '', 'xcxcx', 'cxxcx', 'xcxc', '');

CREATE TABLE `sample` (
   `qwe` int(11) not null auto_increment,
   PRIMARY KEY (`qwe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- [Table `sample` is empty]

CREATE TABLE `section` (
   `section_id` int(11) not null auto_increment,
   `name` longtext not null,
   `nick_name` longtext,
   `class_id` int(11),
   `teacher_id` longtext,
   PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=11;

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES ('9', 'Section A', '', '5', 'T-20190004');
INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES ('10', 'Section A', '', '8', 'T-20190003');

CREATE TABLE `settings` (
   `settings_id` int(11) not null auto_increment,
   `type` longtext CHARSET utf8 not null,
   `description` longtext CHARSET utf8 not null,
   PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=21;

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('1', 'system_name', 'Kids Power Learning Center');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('2', 'system_title', 'Kids Power Learning Center');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('3', 'address', 'Binan, Laguna');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('4', 'phone', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('5', 'paypal_email', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('6', 'currency', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('7', 'system_email', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('20', 'active_sms_service', 'disabled');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('11', 'language', 'english');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('12', 'text_align', 'left-to-right');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('13', 'clickatell_user', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('14', 'clickatell_password', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('15', 'clickatell_api_id', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('16', 'skin_colour', 'default');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('17', 'twilio_account_sid', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('18', 'twilio_auth_token', '');
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES ('19', 'twilio_sender_phone_number', '');

CREATE TABLE `student` (
   `id` int(11) not null auto_increment,
   `student_id` int(11),
   `fname` longtext,
   `mname` longtext,
   `lname` longtext,
   `name` longtext,
   `birthday` longtext not null,
   `sex` longtext,
   `religion` longtext,
   `blood_group` longtext,
   `address` longtext,
   `phone` longtext,
   `email` longtext,
   `password` longtext,
   `father_name` longtext,
   `mother_name` longtext,
   `class_id` longtext,
   `section_id` int(11),
   `parent_id` longtext,
   `roll` longtext,
   `transport_id` int(11),
   `dormitory_id` int(11),
   `dormitory_room_number` longtext,
   `authentication_key` longtext,
   `status` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=323;

INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('310', '201900310', 'Noel Luigi', 'X', 'Caldit', 'Noel Luigi S. Caldit', '10/24/2012', 'male', '', '', 'B6 L16 P-1 Narra Village Adelina Complex 3', '', '', '', '', '', '7', '', 'P-20190009', '', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('314', '201900314', 'James', 'M', 'Martinez', '', '10/30/2018', 'female', '', '', '123', 'q', 'zion.martin0888@gmail.com', '', '', '', '5', '0', 'P-20190010', 'fgf', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('315', '201900315', 'qw', 'eqwe', 'qwe', '', '10/30/2018', 'male', '', '', '31313', '09774720937', 'enriquelhaiza@gmail.con', '', '', '', '5', '9', 'P-20190009', 'qwe', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('316', '201900316', 'zxczczxzxzxcxzc', 'zxczxczxcxz', 'xczxczxcxzc', '', '06/10/2014', 'male', '', '', 'zxczx', 'zxczxczx', 'zxzxczx', '', '', '', '5', '9', 'P-20190009', 'zxcz', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('317', '201900317', 'jkjkj', 'kjk', 'jkj', '', '11/20/2019', 'female', '', '', 'jkjkj', 'jkjkjkj', 'hjhjhj', '', '', '', '5', '9', 'P-20190010', 'jkjkj', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('318', '201900318', 'jkjkj', 'kjk', 'jkj', '', '11/20/2019', 'female', '', '', 'jkjkj', 'jkjkjkj', 'hjhjhj', '', '', '', '5', '9', 'P-20190010', 'jkjkj', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('319', '201900319', 'qweqweqwe', 'qweqwwq', 'qweqwe', '', '02/17/2019', 'female', '', '', 'qweqwe', '', '', '', '', '', '5', '9', 'P-20190009', 'qweqwe', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('320', '201900320', 'qweqwesdfssdfdsfsd', 'qweqsfdfsfdswewq', 'qweqewq', '', '02/17/2019', 'female', '', '', 'qweqwe', 'sdfsfds', 'sdfsdfsdfdf', '', '', '', '5', '9', 'P-20190009', 'qwewqe', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('321', '201900321', 'qweq', 'qweqwe', 'qweqwe', '', '02/17/2019', 'female', '', '', 'qwewqe', 'qweqwe', 'qweqwe', '', '', '', '5', '9', 'P-20190009', 'qweqwe', '', '', '', '', 'waiting');
INSERT INTO `student` (`id`, `student_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`, `status`) VALUES ('322', '201900322', 'hhhh', 'hhh', 'hhhh', '', '10/30/2018', 'female', '', '', 'hhh', 'hh', 'hh', '', '', '', '5', '9', 'P-20190009', 'hh', '', '', '', '', 'waiting');

CREATE TABLE `teacher` (
   `id` int(11) not null auto_increment,
   `teacher_id` longtext,
   `fname` longtext,
   `mname` text,
   `lname` longtext,
   `name` longtext not null,
   `birthday` longtext not null,
   `sex` longtext not null,
   `religion` longtext,
   `blood_group` longtext,
   `address` longtext not null,
   `phone` longtext not null,
   `email` longtext not null,
   `password` longtext,
   `authentication_key` longtext not null,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=8;

INSERT INTO `teacher` (`id`, `teacher_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES ('3', 'T-20190003', 'Butardo', 'q', 'Butardo', 'Ma. Theresa  Butardo', '06/22/1974', 'male', '', '', 'B6 L16 P-1 Narra Village Adelina Complex 3', '09474527700', 'thessbutardo@gmail.com', '', '');
INSERT INTO `teacher` (`id`, `teacher_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES ('4', 'T-20190004', 'Nikole Ydnar ', 'G.', 'Bautista', 'Nikole Ydnar G. Bautista', '07/17/1990', 'female', '', '', 'B5 L2 P-1 Lauan Village Adelina Complex III', '09565605021', 'nygbautista1017@yahoo.com', '', '');
INSERT INTO `teacher` (`id`, `teacher_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES ('5', 'T-20190005', 'Alejandria ', 'A.', 'Aquino', 'Alejandria A. Aquino', '11/26/1980', 'female', '', '', 'B6 L13 P-3 Adelina Complex III', '09474527700', 'alejandria20aquino@yahoo.com', '', '');
INSERT INTO `teacher` (`id`, `teacher_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES ('6', 'T-20190006', 'eqeq', 'qweqwe', '', '', '10/29/2018', 'male', '', '', 'qweqwe', 'qweqwe', 'qweqew', '', '');
INSERT INTO `teacher` (`id`, `teacher_id`, `fname`, `mname`, `lname`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES ('7', 'T-20190007', 'qweqwe', 'qqweqe', 'qqweqweqw', '', '12/07/2008', 'male', '', '', '123', 'km', 'nhelle@gmail.com', '', '');
<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define('DB_NAME', 'tienlixi');

/** Username của database */
define('DB_USER', 'root');

/** Mật khẩu của database */
define('DB_PASSWORD', '');

/** Hostname của database */
define('DB_HOST', 'localhost');

/** Database charset sử dụng để tạo bảng database. */
define('DB_CHARSET', 'utf8mb4');

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'rd,z|#Z#!A>]:2J/&F[LqI`?Tcd:+9r*)D0xK-N#q==x-pJ/-g.3/Y%X08&*&z(e');
define('SECURE_AUTH_KEY',  '^TAQzb/,d{7>*YOSF5nIbTh=OwbkZ9{E`5=T.~:-9S!p{GrNfINny9XAEHhFGNk!');
define('LOGGED_IN_KEY',    'l/]q`ark=A#i+hF1:^TR>4)BZwzMUacW$[RF}^BfF8uFD-.W_[l7Zz*v9m}^BpIl');
define('NONCE_KEY',        'e&6_ ~6EKmy$YJ*M^0r`V1Q`4$jMOMr+/D9LBqDkzl=f^_/JC3aW!?4OtfgR[D7:');
define('AUTH_SALT',        'P1~~L8s&/K|{)2p1~M|}~^,@sc}YHQV@8#v,*G5yO;fHb.4i7pw,$)*F6b:3qOIX');
define('SECURE_AUTH_SALT', '[2o^o|WPhb~vr/<?/5h!w@fh2$a|iaR2Ad=/k%(()l!Yjo-7F|=HIw[IRLiZKT&8');
define('LOGGED_IN_SALT',   'e=KNpn,H|F}=+Sfz+8+~NZVI64gsdY Q=UWN3^Kc3 ,3,Zw<[StBWHX)[AU3):O ');
define('NONCE_SALT',       's9LXmLKb 1n4%w/Lxk@U)*12iVlR:*`:2<h]_kKZXOg@kr~rJcK_+C?{nkH]lF]B');

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wpl_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');

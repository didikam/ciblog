/*
 Navicat Premium Data Transfer

 Source Server         : WamppServer
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : ciblog

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 30/08/2019 06:49:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (4, 5, 'Bussines', '2019-06-03 05:16:59');
INSERT INTO `categories` VALUES (5, 3, 'Food', '2019-06-04 10:29:07');
INSERT INTO `categories` VALUES (6, 3, 'Technology', '2019-06-04 10:30:50');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (2, 22, 'didik am', 'diidkam@gmai.com', 'this is body', '2019-06-03 06:06:57');
INSERT INTO `comments` VALUES (3, 22, 'didik am', 'jane@yahoo.com', 'Thank You for awesome post', '2019-06-03 06:25:28');
INSERT INTO `comments` VALUES (4, 22, 'mukmin', 'mukmin@gmail.com', 'you are welcome', '2019-06-03 10:51:47');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (21, 4, 3, 'Post Two', 'Post-Two', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis nibh a enim tempus, et varius urna pretium. Morbi imperdiet magna et volutpat tempus. Morbi sit amet condimentum risus, id dapibus ex. Etiam scelerisque tincidunt ex, sed elementum leo interdum a. Etiam suscipit pharetra dolor non elementum. Proin non rhoncus massa, at rutrum urna. Duis ornare metus non turpis tempor laoreet. Morbi id nisl arcu. In nisi orci, rhoncus et odio at, pretium cursus odio. Quisque sodales imperdiet diam id commodo. Aliquam sollicitudin interdum suscipit. Aliquam id est eu elit blandit dignissim. Donec venenatis in urna in ultrices. Vivamus non elit sed elit bibendum maximus eu eu eros. Sed vitae laoreet ipsum, non rhoncus urna. Suspendisse potenti.</p>\r\n\r\n<p>Suspendisse blandit, massa non vestibulum hendrerit, tortor mauris volutpat ipsum, id mollis nisl eros vel dui. Integer tellus erat, feugiat at luctus vitae, suscipit id velit. Proin dignissim, erat eu aliquet molestie, magna enim fermentum enim, eu fermentum sem purus at nibh. Sed massa quam, sollicitudin sit amet justo ac, gravida molestie lorem. Maecenas auctor enim in nunc viverra, non bibendum dolor volutpat. Aliquam placerat mattis leo eu tristique. Sed placerat mi in ante pharetra, ac consequat ligula ornare. Vivamus nec erat neque. Vivamus eleifend arcu ex, ac molestie neque posuere sed. Mauris sagittis fringilla massa in dictum. Quisque eu mi nec quam eleifend cursus id nec nisl. Sed tincidunt blandit velit, in congue libero aliquam ut. Nulla orci augue, auctor id suscipit vel, finibus sed elit.</p>\r\n', 'logo_TI.png', '2019-06-03 05:29:06');
INSERT INTO `posts` VALUES (22, 3, 3, 'Post Three', 'Post-Three', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis nibh a enim tempus, et varius urna pretium. Morbi imperdiet magna et volutpat tempus. Morbi sit amet condimentum risus, id dapibus ex. Etiam scelerisque tincidunt ex, sed elementum leo interdum a. Etiam suscipit pharetra dolor non elementum. Proin non rhoncus massa, at rutrum urna. Duis ornare metus non turpis tempor laoreet. Morbi id nisl arcu. In nisi orci, rhoncus et odio at, pretium cursus odio. Quisque sodales imperdiet diam id commodo. Aliquam sollicitudin interdum suscipit. Aliquam id est eu elit blandit dignissim. Donec venenatis in urna in ultrices. Vivamus non elit sed elit bibendum maximus eu eu eros. Sed vitae laoreet ipsum, non rhoncus urna. Suspendisse potenti.</p>\r\n\r\n<p>Suspendisse blandit, massa non vestibulum hendrerit, tortor mauris volutpat ipsum, id mollis nisl eros vel dui. Integer tellus erat, feugiat at luctus vitae, suscipit id velit. Proin dignissim, erat eu aliquet molestie, magna enim fermentum enim, eu fermentum sem purus at nibh. Sed massa quam, sollicitudin sit amet justo ac, gravida molestie lorem. Maecenas auctor enim in nunc viverra, non bibendum dolor volutpat. Aliquam placerat mattis leo eu tristique. Sed placerat mi in ante pharetra, ac consequat ligula ornare. Vivamus nec erat neque. Vivamus eleifend arcu ex, ac molestie neque posuere sed. Mauris sagittis fringilla massa in dictum. Quisque eu mi nec quam eleifend cursus id nec nisl. Sed tincidunt blandit velit, in congue libero aliquam ut. Nulla orci augue, auctor id suscipit vel, finibus sed elit.</p>\r\n', 'logo-k13-png-6.png', '2019-06-03 05:29:51');
INSERT INTO `posts` VALUES (23, 3, 3, 'Post Three', 'Post-Three', '<h2>Etiam nec ante</h2>\r\n\r\n<p>et nibh elementum feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam ac vehicula risus. Curabitur vel est magna. Proin mauris odio, congue at pulvinar quis, tristique in ex. Vivamus dictum felis vitae molestie posuere. Suspendisse gravida eros ac elit pharetra luctus. Ut in ipsum odio. Aenean interdum hendrerit lacinia. Quisque massa felis, dictum id enim nec, convallis scelerisque magna. Donec dignissim dui eros, ut porta mi commodo nec. Suspendisse potenti. Donec pretium, tortor a suscipit rutrum, tortor risus cursus sem, quis hendrerit quam odio at orci. Morbi placerat tempus commodo.</p>\r\n\r\n<p>Morbi nec nibh sit amet erat mattis dictum. Fusce ullamcorper nisi eget laoreet elementum. Etiam non arcu mollis magna pharetra aliquam. Donec accumsan pretium lectus. Nullam et gravida nunc. Integer sodales, mi eu finibus sagittis, sapien libero consequat massa, in laoreet elit tortor at justo. Sed non ex at tortor sodales auctor efficitur nec nulla. Nullam venenatis id odio at maximus. Duis vulputate pharetra eros, et lobortis justo maximus in.</p>\r\n', '123.png', '2019-06-03 08:00:34');
INSERT INTO `posts` VALUES (24, 3, 3, 'Post five', 'Post-five', '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'logo-kemenag.png', '2019-06-04 10:01:27');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `register_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'Didik Abdul Mukmin', '12345k', 'didik.abdul1997@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-08-30 06:48:05');

SET FOREIGN_KEY_CHECKS = 1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, '2023-03-19 14:47:15', NULL);
INSERT INTO `orders` VALUES (2, 2, '2023-03-19 14:47:37', NULL);
INSERT INTO `orders` VALUES (3, 2, '2023-03-19 14:54:16', NULL);
INSERT INTO `orders` VALUES (4, 2, '2023-03-19 14:54:17', NULL);
INSERT INTO `orders` VALUES (5, 2, '2023-03-19 14:55:58', NULL);
INSERT INTO `orders` VALUES (6, 2, '2023-03-19 14:56:11', NULL);
INSERT INTO `orders` VALUES (7, 2, '2023-03-19 14:57:44', NULL);
INSERT INTO `orders` VALUES (8, 3, '2023-03-19 14:58:04', NULL);
INSERT INTO `orders` VALUES (9, 4, '2023-03-19 15:06:22', '+7 (918) 200 34 34,kovaleva,12,3,35,7,');
INSERT INTO `orders` VALUES (10, 4, '2023-03-19 15:12:37', '+7 (918) 200 34 34,kovaleva,12,3,35,7,');
INSERT INTO `orders` VALUES (11, 4, '2023-03-19 15:12:42', '+7 (918) 200 34 34,kovaleva,12,3,35,7,');
INSERT INTO `orders` VALUES (12, 4, '2023-03-19 15:12:56', '+7 (918) 200 34 34,kovaleva,12,3,35,7,');
INSERT INTO `orders` VALUES (13, 4, '2023-03-19 15:13:03', '+7 (918) 200 34 34,kovaleva,12,3,35,7,');
INSERT INTO `orders` VALUES (14, 5, '2023-03-19 15:13:15', '+7 (918) 200 34 34,kovalevatwt,12qwe,3wtetwe,35twt,7tw,');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `orders_count` int(11) NULL DEFAULT 1,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'test@test.com', 1, NULL);
INSERT INTO `users` VALUES (2, 'test@test.comk', 6, NULL);
INSERT INTO `users` VALUES (3, 'test@test.comkgrd', 1, NULL);
INSERT INTO `users` VALUES (4, 'test@DIMAt.com', 5, 'dima');
INSERT INTO `users` VALUES (5, 'teswerqtt@DIMAt.com', 1, 'dimaqwetqwtw');

SET FOREIGN_KEY_CHECKS = 1;
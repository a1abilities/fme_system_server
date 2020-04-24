CREATE TABLE IF NOT EXISTS `document_for_payment` ( `id` int(11) NOT NULL AUTO_INCREMENT, `customer_id` int(11) DEFAULT NULL, `order_id` int(11) DEFAULT NULL, `installment_no` int(11) DEFAULT NULL, `sub_installment_no` int(11) DEFAULT NULL, `document` varchar(500) DEFAULT NULL, `status` tinyint(4) DEFAULT NULL, `is_active` tinyint(4) DEFAULT NULL, `created_by` int(11) DEFAULT NULL, `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,  PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `comment_on_payment` (`id` int(11) NOT NULL, `customer_id` int(11) DEFAULT NULL, `order_id` int(11) DEFAULT NULL, `installment_no` int(11) DEFAULT NULL, `sub_installment_no` int(11) DEFAULT NULL, `comment` text, `status` tinyint(4) DEFAULT NULL, `is_active` tinyint(4) DEFAULT NULL, `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP, `created_by` int(11) DEFAULT NULL, PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `transaction` (`id` int(11) NOT NULL, `customer_id` int(11) DEFAULT NULL, `order_id` int(11) DEFAULT NULL, `transaction_date` datetime DEFAULT NULL, `transaction_amt` double(10,2) DEFAULT NULL, `late_fee` double(10,2) DEFAULT NULL, `interest_amt` double(10,2) DEFAULT NULL, `status` int(11) DEFAULT NULL, `is_active` tinyint(1) DEFAULT NULL, `created_by` int(11) DEFAULT NULL, `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,  PRIMARY KEY (`id`));


ALTER TABLE `payment_status` ADD `is_active` INT NULL DEFAULT '1' AFTER `status`;

ALTER TABLE `payment_status` ADD `late_fee` DOUBLE(10,2) NULL DEFAULT '0' AFTER `payment_amt`, ADD `interest_amt` DOUBLE(10,2) NULL DEFAULT '0' AFTER `late_fee`;

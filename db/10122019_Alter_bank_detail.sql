ALTER TABLE `customer_bank_detail` CHANGE `bank_code` `bank_code` VARCHAR(11) NULL DEFAULT NULL, CHANGE `branch_number` `branch_number` VARCHAR(11) NULL DEFAULT NULL, CHANGE `acc_number` `acc_number` VARCHAR(20) NULL DEFAULT NULL, CHANGE `suffix` `suffix` VARCHAR(11) NULL DEFAULT NULL;
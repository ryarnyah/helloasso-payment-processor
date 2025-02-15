-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC. All rights reserved.                        |
-- |                                                                    |
-- | This work is published under the GNU AGPLv3 license with some      |
-- | permitted exceptions and without any warranty. For full license    |
-- | and copyright information, see https://civicrm.org/licensing       |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the existing tables - this section generated from drop.tpl
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_hello_asso_contribution_key`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_hello_asso_contribution_key
-- *
-- * FIXME
-- *
-- *******************************************************/
CREATE TABLE `civicrm_hello_asso_contribution_key` (
  `contribution_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'FK to Contribution',
  `signing_key` text NOT NULL COMMENT 'Key used to sign contribution',
  PRIMARY KEY (`contribution_id`),
  CONSTRAINT FK_civicrm_hello_asso_contribution_key_contribution_id FOREIGN KEY (`contribution_id`) REFERENCES `civicrm_contribution`(`id`) ON DELETE CASCADE
)
ENGINE=InnoDB;

-- Custom columns for AutoAI Level Balancer
-- auto_ai:  1 = AI character, -1 = real player
-- ai_mode: 99 = permanent Lv99 AI (exempt from balancer)

ALTER TABLE `char`
	ADD COLUMN `auto_ai` TINYINT(4) NOT NULL DEFAULT '-1' COMMENT '1=AI, -1=real player' AFTER `disable_partyinvite`,
	ADD COLUMN `ai_mode` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '99=permanent Lv99 AI' AFTER `auto_ai`;

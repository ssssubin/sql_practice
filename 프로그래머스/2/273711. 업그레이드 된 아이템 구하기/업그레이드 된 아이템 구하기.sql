-- 코드를 작성해주세요
-- 희귀도가 'RARE'인 아이템들의
-- 모든 다음 업그레이드 아이템의 아이템 ID, 아이템명, 아이템 희긔도
-- 아이템 ID 내림차순
WITH result AS
(SELECT ii.*, it.ITEM_ID AS IT_ITEM_ID, it.PARENT_ITEM_ID FROM ITEM_INFO AS ii
INNER JOIN ITEM_TREE AS it
ON ii.ITEM_ID = it.PARENT_ITEM_ID
WHERE ii.RARITY = "RARE")
SELECT ii.ITEM_ID, ii.ITEM_NAME, ii.RARITY FROM result AS r
INNER JOIN ITEM_INFO AS ii
ON r.IT_ITEM_ID = ii.ITEM_ID
ORDER BY ITEM_ID DESC;

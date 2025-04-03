-- 코드를 작성해주세요
-- 더 이상 업그레이드할 수 없는 아이템의 id, 아이템명, 아이템의 희귀도(RARITY)
-- ID 기준 내림차순
SELECT ii.ITEM_ID, ii.ITEM_NAME, ii.RARITY 
FROM ITEM_INFO AS ii
LEFT JOIN ITEM_TREE AS it
ON ii.ITEM_ID = it.PARENT_ITEM_ID
WHERE it.PARENT_ITEM_ID IS NULL
ORDER BY ii.ITEM_ID DESC;
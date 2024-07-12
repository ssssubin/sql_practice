# Write your MySQL query statement below
select distinct t.id, 
(case
    when t.p_id is null then "Root"
    when t.p_id is not null and tt.p_id is not null then "Inner"
    when t.p_id is not null and tt.p_id is null then "Leaf"
    end) as type
    from Tree as t left join Tree as tt on t.id = tt.p_id;
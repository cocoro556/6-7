-- 問７
SELECT
    players.name AS 名前,
    players.position AS ポジション,
    players.club AS 所属クラブ,
    COUNT(goals.id) AS ゴール数
FROM
    players
    LEFT JOIN goals ON goals.player_id = players.id
GROUP BY
    players.id
ORDER BY
    ゴール数 DESC;

-- 問８
SELECT
    players.position AS ポジション,
    COUNT(goals.id) AS ゴール数
FROM
    players
    LEFT JOIN goals ON goals.player_id = players.id
GROUP BY
    players.position
ORDER BY
    ゴール数 DESC;

-- 問９
SELECT
    birth AS 誕生日,
    TIMESTAMPDIFF (YEAR, birth, '2014-6-13') AS 年齢,
    name AS 名前,
    position AS ポジション
FROM
    players
ORDER BY
    年齢 DESC;

-- 問10
SELECT
    COUNT(g.goal_time)
FROM
    goals g
WHERE
    g.player_id IS NULL;

-- 問１２
SELECT
    g.goal_time
FROM
    goals g
    JOIN players p ON g.player_id = p.id
    JOIN countries c ON p.country_id = c.id
WHERE
    g.pairing_id = 103
    AND c.name = 'コロンビア';
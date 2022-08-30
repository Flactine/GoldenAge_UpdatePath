--v237 更多玩家
UPDATE MapSizes SET DefaultPlayers=3 WHERE MapSizeType = 'MAPSIZE_DUEL';
UPDATE MapSizes SET DefaultPlayers=5 WHERE MapSizeType = 'MAPSIZE_TINY';
UPDATE MapSizes SET DefaultPlayers=8 WHERE MapSizeType = 'MAPSIZE_SMALL';
UPDATE MapSizes SET DefaultPlayers=10 WHERE MapSizeType = 'MAPSIZE_STANDARD';
UPDATE MapSizes SET DefaultPlayers=12 WHERE MapSizeType = 'MAPSIZE_LARGE';
UPDATE MapSizes SET DefaultPlayers=15 WHERE MapSizeType = 'MAPSIZE_HUGE';

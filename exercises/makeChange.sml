fun allChange(coins, coinvals, 0) = [coins]
    | allChange(coins, [], amount) = []
    | allChange(coins, c::coinvals, amount) =
        if amount < 0 then []
        else allChange(c::coins, c::coinvals, amount-c) @
                allChange(coins, coinvals, amount);

allChange([], [5,2], 16);
allChange([], [25,10,2,1], 43);

fun allChangeTR(coins, coinvals, 0, allcoins) = coins::allcoins
  | allChangeTR(coins, [], amount, allcoins) = allcoins
  | allChangeTR(coins, c::coinvals, amount, allcoins) =
      if amount < 0 then allcoins
      else allChangeTR(coins, coinvals, amount,
        allChangeTR(c::coins, c::coinvals, amount-c, allcoins));

fun allChange(coins, coinvals, amount) = allChangeTR(coins, coinvals, amount, []);

allChange([], [5,2], 16);
allChange([], [25,10,2,1], 43);

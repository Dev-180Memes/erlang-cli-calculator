-module(cal).

-import(logics, [add/2, sub/2, mul/2, divide/2, mod/2, factorial/1, exponent/2, sqr_root/1]).

-export([calculate/2, calculate/3]).

calculate(Opp, X, Y) ->
    if
        Opp == "+" ->
            add(X, Y);
        Opp == "-" ->
            sub(X, Y);
        Opp == "*" ->
            mul(X, Y);
        Opp == "/" ->
            divide(X, Y);
        Opp == "%" ->
            mod(X, Y);
        Opp == "^" ->
            exponent(X, Y);
        true ->
            {error, "Invalid operator"}
    end.

calculate(Opp, X) ->
    if
        Opp == "!" ->
            factorial(X);
        Opp == "sqrt" ->
            sqr_root(X);
        true ->
            {error, "Invalid operator"}
    end.

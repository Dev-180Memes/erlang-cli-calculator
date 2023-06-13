-module(logics).
-export([add/2, sub/2, mul/2, divide/2, mod/2, factorial/1, exponent/2, sqr_root/1, log/2]).

add(X, Y) ->
    X + Y.

sub(X, Y) ->
    X - Y.

mul(X, Y) ->
    X * Y.

divide(X, Y) when Y =/= 0 ->
    X / Y;
divide(_, _) -> 
    {error, "Division by zero"}.

mod(X, Y) ->
    X rem Y.

factorial(0) -> 1;
factorial(N) when N > 0 -> 
    N * factorial(N - 1).

exponent(_X, 0) -> 1;
exponent(X, Y) when Y > 0 ->
    calculate_exp(X, Y).

calculate_exp(_, 0) -> 1;
calculate_exp(X, Y) when Y > 0 ->
    X * calculate_exp(X, Y - 1).

sqr_root(X) when X >= 0 ->
    calculate_sqr_root(X, X / 2).

calculate_sqr_root(X, Y) ->
    Guess = (Y + X / Y) / 2,
    if
        abs(Y - Guess) < 0.00001 ->
            Guess;
        true ->
            calculate_sqr_root(X, Guess)
    end.

log(X, Y) when X > 0, Y > 0 ->
    calculate_log(X, Y, 0).

calculate_log(X, Y, N) ->
    if
        X < Y ->
            N;
        true ->
            calculate_log(X / Y, Y, N + 1)
    end.
% Первое задание

print_odd_numbers :-
    write('Введите начало диапазона: '), read(Start),
    write('Введите конец диапазона: '), read(End),
    print_odds_descending(Start, End).

print_odds_descending(Start, End) :-
    (Start > End -> Lower is End, Upper is Start ; Lower is Start, Upper is End),
    print_odds_descending_helper(Upper, Lower).

print_odds_descending_helper(Current, Lower) :-
    Current >= Lower,
    (Current mod 2 =:= 1 -> write(Current), nl ; true),
    Next is Current - 1,
    print_odds_descending_helper(Next, Lower).
print_odds_descending_helper(_, _).

% Второе задание

find_fibonacci :-
    repeat,
    write('Введите номер числа Фибоначчи (отрицательное для выхода): '),
    read(Index),
    (Index < 0 -> ! ; fibonacci(Index, Result), write('Число Фибоначчи: '), write(Result), nl, fail).

fibonacci(0, 1).
fibonacci(1, 1).
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.

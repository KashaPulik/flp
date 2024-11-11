cyclic_shift(List, N, ShiftedList) :-
    length(List, Len),
    N1 is N mod Len,
    shift_left(List, N1, ShiftedList).

shift_left(List, 0, List).
shift_left([H|T], N, Shifted) :-
    N > 0,
    append(T, [H], Temp),
    N1 is N - 1,
    shift_left(Temp, N1, Shifted). 

start :-
    write('Введите список (например, [1,2,3,4]): '), nl,
    read(List),
    write('Введите n: '), nl,
    read(N),
    cyclic_shift(List, N, ShiftedList),
    write('Сдвинутый список: '), write(ShiftedList).

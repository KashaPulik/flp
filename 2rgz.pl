reverse_words_in_file(InputFile, OutputFile) :-
    open(InputFile, read, InStream),               
    open(OutputFile, write, OutStream),            
    process_lines(InStream, OutStream),            
    close(InStream),                               
    close(OutStream).                              

process_lines(InStream, OutStream) :-
    read_line_to_string(InStream, Line),           
    (   Line \= end_of_file                        
    ->  reverse_line_words(Line, ReversedLine),    
        writeln(OutStream, ReversedLine),          
        process_lines(InStream, OutStream)         
    ;   true                                       
    ).

reverse_line_words(Line, ReversedLine) :-
    split_string(Line, " ", "", Words),            
    reverse(Words, ReversedWords),                 
    atomic_list_concat(ReversedWords, " ", ReversedLine).
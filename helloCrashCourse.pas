program HelloCrashCourse;
{  Comments: 
   This is a Block Comment - More Common 
 }
 (*  Also A block Commet
 *)
// One Line Comment
{  NOTES ON PASCAL
  * Last line is 'end.' (end Period)
  * statements are terminated with semicolons
  * NOT Case Sensitive
  * case convention: pascalcase or camelCase - not SnakeCase
  * program keword order:
    * program
    * uses
    * const
    * var
    * statements
    * main begin / end.
  * Functions must be defined before they are called
}

uses
  crt,          // Access the console runtime (ClrScrn, GooXY, ReadKey, Writeln)
  sysutils;     // For FormatFloat

// Global Const
const
  indentStr = '    ';

// Global Variables
//var
// None

procedure writeHeader(text : String);
  begin
    writeln();
    writeln('------------- ', text, ' -------------------');
    writeln();
end;

procedure pause();
begin
     writeln();
     writeln('Press a Key to Continue...');
     readln;
end;


//procedure testExceptions();
//begin
// Requires object pascal
//     try
//        // sleep(5000); Delphi
//        except
//          on E: Exception do
//          Writln(E.ClassName, ": ", E.Message);
//        end;
//end

procedure testDataTypes();
type
  myStringAlias = String;                                 // Typedef
  weekdays = (Sun, Mon, Tues, Weds, Thurs, Fri, Sat);     // Enum

const
  VAT = 0.15;

var
  age: integer;                      //  41
  firstName, hobby: myStringAlias;   // 'String'
  letter: char;                      // use 'a'
  day:   weekdays;                   // Enum
  intSubrange: 1..100;               // Subrange of integer
  alphaSubrange: 'A'..'Z';           // Subrange of char
  truthExists: boolean;              // true or false;

begin

  age :=20;
  firstName := 'Steve';
  hobby := 'Playing Guitar';
  letter := 'Z';
  day := Mon;
  truthExists := false;

  // Subranges
  intSubrange := 90;
  //intSubrange := 200;         // Not valid out of subrange
  alphaSubrange := 'S';
  //alphaSubrange := 'a';         // Not valid out of subranges

  writeHeader('Basic Data Types');
  writeln(indentStr, 'CONST:         VAT is: ', VAT);                           //    1.50000000000000000005E-0001
  writeln(indentStr, 'INTEGER:       My name is ', firstName,' and I am ', age, ' years old.');
  writeln(indentStr, 'CHAR:          My favorite letter is: ', letter);
  writeln(indentStr, 'STRING:        hobbies:', hobby);
  writeln(indentStr, 'ENUM:          Today is ', day);
  writeln(indentStr, 'intSubrange:   is: ', intSubrange);
  writeln(indentStr, 'alphaSubrange: is: ', alphaSubrange);
  //TODO: Format reals
  writeln(indentStr, 'Does truth exist?: ', truthExists);        // Prints FALSE
end;

//
// See https://www.freepascal.org/docs-html/ref/refse13.html#refsu13.html for String Types
//
procedure stringNotes();
const
  ALL_ALPHA = 'The Quick Brown Fox jumped over the Lazy Dog';
  TAB = #9;
var
  strLen : integer;

begin
    strLen := length(ALL_ALPHA);

    writeHeader('String Notes');
    writeln();
    writeln(indentStr, 'Default Strings are shortStrings and are limited to 255 chars');
    writeln(indentStr, 'CRLF is pound13pound10',#13,#10,#9, ' And there ya go!');
    writeln(indentStr, 'Ansi, WideString, and PChar null terminated strings are available');
    writeln();
    writeln(indentStr, 'The Length of "', ALL_ALPHA, '" is: ', strLen);
    writeln();
end;

procedure testMath();
var
   a, b: integer;
   y: real;
   z: double;
   fs: String;   // Formatted Float string
   fmt: String;
begin
    writeHeader('Math');

     a := 9;
     b := 3;
     y := 3.3;
     z := 3.141519;
     fmt:= '#.####';

     writeln(indentStr, 'a and b are integers ', a, ' ', b);

     // FormatFloat: https://www.freepascal.org/docs-html/rtl/sysutils/formatfloat.html
     fs := FormatFloat(fmt, y);
     writeln(indentStr, 'y and z are real     ', fs, '  ', z);

     writeln();
     writeln(indentStr, 'Integer Division: a/b or a div b', a / b);
//   writeln(indentStr, '                  a div y       ', a div y);  // Claims int, actually "operator not overloaded'
     writeln(indentStr, '                  9 mod 3       ', 9 mod 3);
     writeln(indentStr, '                  10 mod 3      ', 10 mod 3);
     writeln(indentStr, 'promote to real   a/y          ', a / y);

     // TODO: Put some more real stuff here, maybe demonstrate exception div-0
     // Add ranges types of real/double
end;

procedure testFloatFormat();
Const
  NrFormat=9;
  FormatStrings : Array[1..NrFormat] of string = (
        '',
        '0',
        '0.00',
        '#.##',
        '#,##0.00',
        '#,##0.00;(#,##0.00)',
        '#,##0.00;;Zero',
        '0.000E+00',
        '#.###E-0');
  NrValue = 5;
  FormatValues : Array[1..NrValue] of Double =
    (1234,-1234,0.5,0,-0.5);

  Width  = 12;
  FWidth = 20;

Var
  I,J : Integer;
  S : String;

begin
  writeHeader('Float Formatting');

  Write('Format':FWidth);
  For I:=1 to NrValue do
    Write(FormatValues[i]:Width:2);
  Writeln;
  For I:=1 to NrFormat do
    begin
    Write(FormatStrings[i]:FWidth);
    For J:=1 to NrValue do
      begin
      S:=FormatFloat(FormatStrings[I],FormatValues[j]);
      Write(S:Width);
      end;
    Writeln;
    end;
End;


procedure testIfs();

var
   age: integer;
   open: boolean;
begin
     age := 19;
     open := false;

     writeHeader('If Statements');
     writeln(' Logical Operators: =, and, not, <>,');
     writeln(' one liner (no begin/end): no semicolon after if clause');
     writeln();

     // TOOD: Read age and open from console, press x to exit
     writeln(indentStr, 'My age is: ', age, ' The bar is open is: ', open);
     writeln(indentStr, 'May I go into the bar? ');
     if (open) and (age > 21) then
        writeln(indentStr, '  Yes!!')
     else
         begin
         writeln(indentStr, '  No :(');
         if not age > 21 then
            writeln(indentStr, '  You are not old enough');
         if NOT open then
            writeln(indentStr, '  The bar is closed');

         end;
     writeln();

end;

procedure testCase(num : integer);


var
   letter: char;       // 's'

begin
     num :=10;
     letter := 'z';
     writeHeader('Case Statement');

     case num of
          0:   writeln(indentStr, 'Zero');
          1..9: writeln('Single Digit');
          10,11..999: begin
              writeln(indentStr, 'Double Digits!');
              writeln(indentStr, 'letter is ', letter);
         end;
         1000: writeln(indentStr, 'One Thousand Baby!');
     else
          writeln(indentStr, 'Unhandled case!');
     end;


end;


procedure testArrayFor();
const
  SIZE = 4;
var
   i : integer;
   someInts : Array[0..size-1] of integer;
begin
     writeHeader('Basic Array and For');
     writeln(indentStr, 'Array of size: ', size, ': ');
     writeln();
     write(indentStr, 'For Loop: ');
     For i:= 0 to SIZE-1 do
     begin
         someInts[i] := i;
         write(someInts[i]);
         if i < SIZE then
           write(', ');
     end;
     writeln();
     writeln('See https://wiki.freepascal.org/Dynamic_array');
end;

//
// Reference: https://wiki.freepascal.org/Dynamic_array
//
procedure testDynamicArray();
var
     chars: array of char;        // Dynamic array (no size [0..Const]
     var i, l: integer;
begin
     setLength(chars, 222);       // Option 1: reserve Space

//     chars.create('C', 'R', 'E', 'A', 'T', 'E');   // Set Length and init

    l:= length(chars)-1;
    writeHeader('Dynamic Arrays');
    for i := 0 to l do
    begin
         write(chars[i]);
    end;
    writeln();

end;

procedure testRecords();

// TODO: move type definition somewhere else & add printPerson(u :User)

Type User = Record
     name: string;
     age: integer;
     height: real;
     hobbies: array[1..10] of String;
end;

const
    FMT = '0.0';
var
   person1, person2: User;
   heightString : String;              // float formatted string
begin
    person1.name := 'Joe';
    person1.age := 23;
    person1.height := 5.7;
//person1.Hobbies.array[0..1] of Type = ();  // Todo: Array Syntax.

    heightString := FormatFloat(FMT, person1.height);

    writeHeader('Records');
    writeln;
    writeln(' Person 1:');
    writeln(indentStr, 'Name:  ', person1.name);
    writeln(indentStr, 'Age:   ', person1.age);
    writeln(indentStr, 'Height:', heightString);
//    writeln(person1.hobbies[0]);


    person2.name := 'Bob';
    person2.age := 11;
    person2.height := 3.7;
    heightString := FormatFloat(FMT, person2.height);

    // Simplify access to record with "With" statement"
    writeln;
    writeln('  Person 2:');
    with person2 do
    begin
      writeln(indentStr, 'Name:  ', name);

      writeln(indentStr, 'Age:   ', age);
      writeln(indentStr, 'Height:', heightString);

    end;

end;

//------------------- MAIN -----------------------------------------------------
begin
      writeHeader('Pascal Crash Course');
      writeln();
      writeln(indentStr, indentStr, 'Demonstrates basics of the Pascal Language');
      writeln();

      testDataTypes();
      stringNotes();
      testmath();
      testFloatFormat();

      pause();

      testIfs();
      testCase(10);
      testArrayFor();
      testRecords();
      writeln();

      writeLn('Press a key to exit!');

      readkey;                   // Note this still calls function!!

end.    { NOTE DOT! - Also anything after this is ignored }

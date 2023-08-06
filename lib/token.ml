type t =
  | Illegal
  (* Items *)
  | Ident of string
  | Integer of string
  | String of string
  (* Operators *)
  | Assign
  | Plus
  | Minus
  | Bang
  | Asterisk
  | Slash
  | LessThan
  | GreaterThan
  | Equal
  | NotEqual
  (* Delimiters *)
  | Comma
  | Semicolon
  | Colon
  | LeftParen
  | RightParen
  | LeftBrace
  | RightBrace
  | LeftBracket
  | RightBracket
  (* Keyword*)
  | Function
  | Let
  | True
  | False
  | If 
  | Else
  | Return
[@@deriving show, eq, sexp]

let lookup_ident str = 
  match str with
  | "fn" -> Function
  | "let" -> Let
  | "true" -> True
  | "false" -> False
  | "if" -> If
  | "else" -> Else
  | "return" -> Return
  | _ -> Ident str
;;
  
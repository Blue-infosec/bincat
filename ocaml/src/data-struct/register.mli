(** Module for registers *)

(** type of a register *)
type t

(** creates a register from the given string and size *)
val make: string -> int -> t
(** may raise Invalid_argument if a register with that name already exists 
or is a reserved name f *)

(** returns a fresh register name *)
val fresh_name: unit -> string

(** remove the given register from the set of used registers *)
val remove: t -> unit

(** returns the name of the given register *)
val to_string: t -> string

(** register comparison *)
val compare: t -> t -> int

(** returns the size in bits of the register *)
val size: t -> int

module Set:
sig
  type t
  val empty: t
end

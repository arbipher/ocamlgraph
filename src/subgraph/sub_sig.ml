module type G = sig
  type t

  type vertex

  type edge

  type graph

  val is_directed : bool

  val iter_vertex : local:bool -> control:bool -> (vertex -> unit) -> t -> unit
  val fold_vertex : local:bool -> control:bool -> (vertex -> 'a -> 'a) -> t -> 'a -> 'a
  
  val iter_edges : local:bool -> control:bool -> (vertex -> unit) -> t -> unit
  val fold_edges : local:bool -> control:bool -> (vertex -> 'a -> 'a) -> t -> 'a -> 'a
end

module type P = sig
  include G
  val empty : t
  val add_vertex : t -> vertex -> t
  val remove_vertex : t -> vertex -> t
  val add_edge : t -> edge -> t
  val remove_edge : t -> edge -> t

  val add_graph : t -> graph -> t
  val remove_graph : t -> graph -> t
end

(* Method 1: embedding *)


(* Method 2: with_hashtable *)

(* Method 3: reimplementation *)

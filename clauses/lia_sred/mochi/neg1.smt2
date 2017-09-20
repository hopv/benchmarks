(set-info :origin "Verification conditions for the caml program
  let g (x:int) (y:unit) = x
  let twice f (x:unit->int) (y:unit) = f (f x) y
  let neg x (y:unit) = - x ()
  let main n =
    if n>=0 then
      let z = twice neg (g n) () in
      assert (z>=0)
")

(set-logic HORN)

(declare-fun |twice$unknown:9|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$knormal:1| Int) )
    (=>
      ( and (|twice$unknown:9| |$cond-alpha-rename:16| 1) (>= |$cond-alpha-rename:17| 0) (>= |$cond-alpha-rename:13| 0) )
      (|twice$unknown:9| (- |$cond-alpha-rename:16|) |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$cond-alpha-rename:31| Int) )
    (=>
      ( and (>= |$cond-alpha-rename:31| 0) )
      (|twice$unknown:9| |$cond-alpha-rename:31| |$alpha-4:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-8:n| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) )
    ( and (|twice$unknown:9| |$cond-alpha-rename:36| 1) (>= |$cond-alpha-rename:37| 0) (>= |$cond-alpha-rename:33| 0) (>= |$alpha-8:n| 0) (not (>= (- |$cond-alpha-rename:36|) 0)) )
    )
  )
)
(check-sat)

(get-model)


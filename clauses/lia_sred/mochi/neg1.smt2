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

(declare-fun |twice$unknown:10|
  ( Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:93| Bool) (|$alpha-5:y| Int) (|$cond-alpha-rename:92| Int) )
    (=>
      ( and (= |$cond-alpha-rename:93| (>= |$cond-alpha-rename:92| 0)) (= |$alpha-5:y| 1) |$cond-alpha-rename:93| )
      (|twice$unknown:10| |$alpha-5:y|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$alpha-5:y| Int) (|$V-reftype:22| Int) (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:136| Bool) (|$cond-alpha-rename:57| Int) (|$knormal:1| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:134| Bool) (|$cond-alpha-rename:52| Bool) (|$cond-alpha-rename:56| Bool) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:94| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$cond-alpha-rename:95| (>= |$cond-alpha-rename:94| 0)) (= |$cond-alpha-rename:59| (>= |$cond-alpha-rename:49| 0)) (= |$cond-alpha-rename:57| 1) (= |$cond-alpha-rename:56| (>= |$cond-alpha-rename:55| 0)) (= |$cond-alpha-rename:54| (>= |$cond-alpha-rename:53| 0)) (= |$cond-alpha-rename:52| (>= |$cond-alpha-rename:50| 0)) (= |$cond-alpha-rename:136| (>= |$cond-alpha-rename:132| 0)) (= |$cond-alpha-rename:134| (>= |$cond-alpha-rename:133| 0)) (= |$alpha-5:y| 1) (= |$V-reftype:22| (- |$cond-alpha-rename:58|)) |$cond-alpha-rename:95| |$cond-alpha-rename:59| |$cond-alpha-rename:56| |$cond-alpha-rename:54| |$cond-alpha-rename:52| |$cond-alpha-rename:136| |$cond-alpha-rename:134| (|twice$unknown:9| |$cond-alpha-rename:58| |$cond-alpha-rename:57|) (|twice$unknown:10| |$knormal:1|) (|twice$unknown:10| |$cond-alpha-rename:51|) (|twice$unknown:10| |$cond-alpha-rename:135|) )
      (|twice$unknown:9| |$V-reftype:22| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:100| Int) (|$alpha-5:y| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:99| Bool) (|$cond-alpha-rename:88| Bool) (|$cond-alpha-rename:139| Bool) (|$cond-alpha-rename:101| Bool) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:103| Bool) (|$cond-alpha-rename:141| Bool) (|$cond-alpha-rename:91| Bool) (|$V-reftype:26| Int) (|$alpha-4:x| Int) (|$cond-alpha-rename:89| Int) )
    (=>
      ( and (= |$cond-alpha-rename:99| (>= |$cond-alpha-rename:98| 0)) (= |$cond-alpha-rename:91| (>= |$cond-alpha-rename:87| 0)) (= |$cond-alpha-rename:90| 1) (= |$cond-alpha-rename:89| 1) (= |$cond-alpha-rename:88| (>= |$cond-alpha-rename:87| 0)) (= |$cond-alpha-rename:141| (>= |$cond-alpha-rename:137| 0)) (= |$cond-alpha-rename:139| (>= |$cond-alpha-rename:138| 0)) (= |$cond-alpha-rename:103| (>= |$cond-alpha-rename:102| 0)) (= |$cond-alpha-rename:101| (>= |$cond-alpha-rename:100| 0)) (= |$alpha-5:y| 1) (= |$alpha-4:x| 1) (= |$V-reftype:26| |$cond-alpha-rename:87|) |$cond-alpha-rename:99| |$cond-alpha-rename:91| |$cond-alpha-rename:88| |$cond-alpha-rename:141| |$cond-alpha-rename:139| |$cond-alpha-rename:103| |$cond-alpha-rename:101| (|twice$unknown:10| |$cond-alpha-rename:140|) )
      (|twice$unknown:9| |$V-reftype:26| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$cond-alpha-rename:144| Bool) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:105| Bool) (|$cond-alpha-rename:146| Bool) (|$alpha-5:y| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:142| Int) )
    (=>
      ( and (= |$cond-alpha-rename:146| (>= |$cond-alpha-rename:142| 0)) (= |$cond-alpha-rename:144| (>= |$cond-alpha-rename:143| 0)) (= |$cond-alpha-rename:105| (>= |$cond-alpha-rename:104| 0)) (= |$alpha-5:y| 1) (= |$V-reftype:16| 1) |$cond-alpha-rename:146| |$cond-alpha-rename:144| |$cond-alpha-rename:105| (|twice$unknown:10| |$cond-alpha-rename:145|) )
      (|twice$unknown:10| |$V-reftype:16|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-8:n| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:118| Int) (|$knormal:10| Bool) (|$cond-alpha-rename:130| Bool) (|$cond-alpha-rename:125| Bool) (|$cond-alpha-rename:119| Bool) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:122| Int) (|$knormal:16| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:123| Bool) (|$cond-alpha-rename:127| Bool) (|$knormal:9| Bool) (|$cond-alpha-rename:120| Int) (|$knormal:18| Int) )
    ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:18| |$cond-alpha-rename:131|) (= |$knormal:16| 1) (= |$knormal:10| (>= |$knormal:18| 0)) (= |$cond-alpha-rename:131| (- |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:130| (>= |$cond-alpha-rename:120| 0)) (= |$cond-alpha-rename:128| 1) (= |$cond-alpha-rename:127| (>= |$cond-alpha-rename:126| 0)) (= |$cond-alpha-rename:125| (>= |$cond-alpha-rename:124| 0)) (= |$cond-alpha-rename:123| (>= |$cond-alpha-rename:121| 0)) (= |$cond-alpha-rename:119| (>= |$cond-alpha-rename:118| 0)) (not |$knormal:10|) |$knormal:9| |$cond-alpha-rename:130| |$cond-alpha-rename:127| |$cond-alpha-rename:125| |$cond-alpha-rename:123| |$cond-alpha-rename:119| (|twice$unknown:9| |$cond-alpha-rename:129| |$cond-alpha-rename:128|) (|twice$unknown:10| |$knormal:16|) (|twice$unknown:10| |$cond-alpha-rename:122|) )
    )
  )
)
(check-sat)


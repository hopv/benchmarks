(set-info :origin "Verification conditions for the caml program
  let rec cps_sum n k : unit =
    if n <= 0 then
      k 0
    else
      let f x = k (x + n) in
      cps_sum (n-1) f
  let main n =
    let f x = assert (x >= n) in
    cps_sum n f
")

(set-logic HORN)

(declare-fun |cps_sum$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |cps_sum$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |cps_sum$unknown:10|
  ( Int Int ) Bool
)

(assert
  (not (exists ( (|$knormal:17| Bool) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:81| Bool) (|$alpha-5:x| Int) (|$alpha-4:n| Int) )
    ( and (= |$knormal:17| (>= |$alpha-5:x| |$alpha-4:n|)) (= |$cond-alpha-rename:81| (<= |$alpha-4:n| 0)) (= |$cond-alpha-rename:79| (- |$alpha-4:n| 1)) (= |$cond-alpha-rename:78| (<= |$alpha-4:n| 0)) (= |$alpha-5:x| (+ |$cond-alpha-rename:80| |$alpha-4:n|)) (not |$knormal:17|) (not |$cond-alpha-rename:81|) (not |$cond-alpha-rename:78|) (|cps_sum$unknown:10| |$cond-alpha-rename:80| |$cond-alpha-rename:79|) )
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:162| Int) (|$knormal:11| Int) (|$cond-alpha-rename:169| Bool) (|$cond-alpha-rename:163| Bool) (|$cond-alpha-rename:160| Bool) (|$cond-alpha-rename:156| Bool) (|$cond-alpha-rename:152| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Bool) (|$cond-alpha-rename:153| Bool) (|$cond-alpha-rename:157| Bool) (|$cond-alpha-rename:161| Bool) (|$cond-alpha-rename:166| Bool) (|$V-reftype:27| Int) (|$alpha-1:n| Int) (|$cond-alpha-rename:165| Int) )
    (=>
      ( and (= |$knormal:11| |$cond-alpha-rename:168|) (= |$knormal:10| (+ |$cond-alpha-rename:155| |$cond-alpha-rename:162|)) (= |$knormal:10| (+ |$cond-alpha-rename:151| |$alpha-1:n|)) (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:169| (<= |$cond-alpha-rename:148| 0)) (= |$cond-alpha-rename:167| (+ |$knormal:10| |$cond-alpha-rename:148|)) (= |$cond-alpha-rename:167| (+ |$cond-alpha-rename:165| |$cond-alpha-rename:148|)) (= |$cond-alpha-rename:166| (<= |$cond-alpha-rename:148| 0)) (= |$cond-alpha-rename:165| (+ |$cond-alpha-rename:159| |$cond-alpha-rename:164|)) (= |$cond-alpha-rename:164| (- |$cond-alpha-rename:148| 1)) (= |$cond-alpha-rename:163| (<= |$cond-alpha-rename:148| 0)) (= |$cond-alpha-rename:162| (- |$cond-alpha-rename:148| 1)) (= |$cond-alpha-rename:161| (<= |$cond-alpha-rename:148| 0)) (= |$cond-alpha-rename:160| (<= |$cond-alpha-rename:164| 0)) (= |$cond-alpha-rename:158| (- |$cond-alpha-rename:164| 1)) (= |$cond-alpha-rename:157| (<= |$cond-alpha-rename:164| 0)) (= |$cond-alpha-rename:156| (<= |$cond-alpha-rename:162| 0)) (= |$cond-alpha-rename:154| (- |$cond-alpha-rename:162| 1)) (= |$cond-alpha-rename:153| (<= |$cond-alpha-rename:162| 0)) (= |$cond-alpha-rename:152| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:150| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:149| (<= |$alpha-1:n| 0)) (= |$alpha-1:n| (- |$cond-alpha-rename:148| 1)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:169|) (not |$cond-alpha-rename:166|) (not |$cond-alpha-rename:163|) (not |$cond-alpha-rename:161|) (not |$cond-alpha-rename:160|) (not |$cond-alpha-rename:157|) (not |$cond-alpha-rename:156|) (not |$cond-alpha-rename:153|) (not |$cond-alpha-rename:152|) (not |$cond-alpha-rename:149|) |$knormal:1| (|cps_sum$unknown:11| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:148|) (|cps_sum$unknown:10| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|cps_sum$unknown:10| |$cond-alpha-rename:155| |$cond-alpha-rename:154|) (|cps_sum$unknown:10| |$cond-alpha-rename:151| |$cond-alpha-rename:150|) )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:175| Int) (|$knormal:11| Int) (|$cond-alpha-rename:182| Bool) (|$cond-alpha-rename:176| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:172| Bool) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:171| Bool) (|$cond-alpha-rename:173| Bool) (|$cond-alpha-rename:174| Bool) (|$cond-alpha-rename:179| Bool) (|$V-reftype:27| Int) (|$alpha-1:n| Int) (|$cond-alpha-rename:178| Int) )
    (=>
      ( and (= |$knormal:11| |$cond-alpha-rename:181|) (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:182| (<= |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:180| (+ |$knormal:10| |$cond-alpha-rename:170|)) (= |$cond-alpha-rename:180| (+ |$cond-alpha-rename:178| |$cond-alpha-rename:170|)) (= |$cond-alpha-rename:179| (<= |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:178| 0) (= |$cond-alpha-rename:177| (- |$cond-alpha-rename:170| 1)) (= |$cond-alpha-rename:176| (<= |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:175| (- |$cond-alpha-rename:170| 1)) (= |$cond-alpha-rename:174| (<= |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:173| (<= |$cond-alpha-rename:177| 0)) (= |$cond-alpha-rename:172| (<= |$cond-alpha-rename:175| 0)) (= |$cond-alpha-rename:171| (<= |$alpha-1:n| 0)) (= |$alpha-1:n| (- |$cond-alpha-rename:170| 1)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:182|) (not |$cond-alpha-rename:179|) (not |$cond-alpha-rename:176|) (not |$cond-alpha-rename:174|) |$knormal:1| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (|cps_sum$unknown:11| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:170|) )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$cond-alpha-rename:187| Bool) (|$cond-alpha-rename:183| Bool) (|$cond-alpha-rename:191| Bool) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:188| Int) (|$knormal:1| Bool) (|$cond-alpha-rename:186| Bool) (|$cond-alpha-rename:190| Bool) (|$knormal:11| Int) (|$alpha-1:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| (+ |$cond-alpha-rename:189| |$alpha-1:n|)) (= |$knormal:10| (+ |$cond-alpha-rename:185| |$alpha-1:n|)) (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:191| (>= |$knormal:10| |$alpha-1:n|)) (= |$cond-alpha-rename:190| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:188| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:187| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:186| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:184| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:183| (<= |$alpha-1:n| 0)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:190|) (not |$cond-alpha-rename:187|) (not |$cond-alpha-rename:186|) (not |$cond-alpha-rename:183|) |$knormal:1| |$cond-alpha-rename:191| (|cps_sum$unknown:10| |$cond-alpha-rename:189| |$cond-alpha-rename:188|) (|cps_sum$unknown:10| |$cond-alpha-rename:185| |$cond-alpha-rename:184|) )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$cond-alpha-rename:194| Bool) (|$cond-alpha-rename:192| Bool) (|$cond-alpha-rename:193| Bool) (|$knormal:1| Bool) (|$knormal:11| Int) (|$alpha-1:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:194| (>= |$knormal:10| |$alpha-1:n|)) (= |$cond-alpha-rename:193| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:192| (<= |$alpha-1:n| 0)) (= |$V-reftype:27| |$knormal:11|) |$knormal:1| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:192| )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:9| Int) (|$knormal:5| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:1|) true (|cps_sum$unknown:12| |$knormal:9| |$knormal:5|) )
      (|cps_sum$unknown:12| |$V-reftype:29| |$alpha-1:n|)
    )
  )
)
(check-sat)

(get-model)


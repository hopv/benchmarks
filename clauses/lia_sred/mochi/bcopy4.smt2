(set-info :origin "Verification conditions for the caml program
  
  let array1 i = 0
  let array2 i = 0
  let update a i x j = if j=i then x else a j
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        assert (0<=i && i<=m);
        let des = update des i (src i) in
          bcopy_aux m src des (i+1)
      end
  
  
  let main n =
    let bcopy src des = bcopy_aux n src des 0 in
    bcopy array1 array2
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:12|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:3| Int) (|$alpha-14:n| Int) (|$alpha-15:src| Int) (|$V-reftype:5| Int) )
    (=>
      ( and (= |$V-reftype:5| 0) (|bcopy_aux$unknown:12| |$alpha-15:src| |$cond-alpha-rename:3|) (|bcopy_aux$unknown:12| |$alpha-15:src| |$alpha-14:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:17| Bool) (|$cond-alpha-rename:16| Bool) (|$cond-alpha-rename:125| Bool) (|$cond-alpha-rename:124| Bool) (|$cond-alpha-rename:11| Bool) (|$cond-alpha-rename:10| Bool) (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:13| Bool) (|$cond-alpha-rename:123| Bool) (|$cond-alpha-rename:18| Bool) (|$cond-alpha-rename:122| Bool) (|$cond-alpha-rename:115| Int) (|$alpha-16:des| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:9| Int) (|$alpha-14:n| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:12| Bool) (|$cond-alpha-rename:126| Bool) (|$cond-alpha-rename:117| Bool) (|$cond-alpha-rename:127| Bool) (|$cond-alpha-rename:19| Bool) (|$V-reftype:9| Int) (|$cond-alpha-rename:120| Bool) (|$cond-alpha-rename:121| Bool) (|$cond-alpha-rename:128| Int) )
    (=>
      ( and (= |$cond-alpha-rename:70| (= |$alpha-16:des| |$cond-alpha-rename:68|)) (= |$cond-alpha-rename:19| (>= |$cond-alpha-rename:14| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:18| (and |$cond-alpha-rename:16| |$cond-alpha-rename:17|)) (= |$cond-alpha-rename:17| (<= |$cond-alpha-rename:14| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:16| (<= 0 |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:13| (>= |$cond-alpha-rename:8| |$alpha-14:n|)) (= |$cond-alpha-rename:128| (+ |$cond-alpha-rename:68| 1)) (= |$cond-alpha-rename:127| (>= |$cond-alpha-rename:68| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:126| (and |$cond-alpha-rename:124| |$cond-alpha-rename:125|)) (= |$cond-alpha-rename:125| (<= |$cond-alpha-rename:68| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:124| (<= 0 |$cond-alpha-rename:68|)) (= |$cond-alpha-rename:123| (>= |$cond-alpha-rename:118| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:122| (and |$cond-alpha-rename:120| |$cond-alpha-rename:121|)) (= |$cond-alpha-rename:121| (<= |$cond-alpha-rename:118| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:120| (<= 0 |$cond-alpha-rename:118|)) (= |$cond-alpha-rename:12| (and |$cond-alpha-rename:10| |$cond-alpha-rename:11|)) (= |$cond-alpha-rename:117| (= |$alpha-16:des| |$cond-alpha-rename:115|)) (= |$cond-alpha-rename:11| (<= |$cond-alpha-rename:8| |$alpha-14:n|)) (= |$cond-alpha-rename:10| (<= 0 |$cond-alpha-rename:8|)) (= |$V-reftype:9| 0) (not |$cond-alpha-rename:70|) (not |$cond-alpha-rename:19|) (not |$cond-alpha-rename:13|) (not |$cond-alpha-rename:127|) (not |$cond-alpha-rename:123|) (not |$cond-alpha-rename:117|) |$cond-alpha-rename:18| |$cond-alpha-rename:126| |$cond-alpha-rename:122| |$cond-alpha-rename:12| (|update$unknown:22| |$alpha-16:des| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:8| |$alpha-14:n|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:68| |$cond-alpha-rename:114|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:14| |$cond-alpha-rename:5|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:118| |$cond-alpha-rename:114|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:9| |$cond-alpha-rename:8| |$alpha-14:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:69| |$cond-alpha-rename:68| |$cond-alpha-rename:114|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:15| |$cond-alpha-rename:14| |$cond-alpha-rename:5|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:114|) )
      (|bcopy_aux$unknown:15| |$V-reftype:9| |$alpha-16:des| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true )
      (|bcopy_aux$unknown:16| |$knormal:32| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$V-reftype:20| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:3| Bool) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-8:src| Int) (|$V-reftype:22| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$alpha-8:src| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$cond-alpha-rename:140| Bool) (|$cond-alpha-rename:139| Bool) (|$cond-alpha-rename:76| Bool) (|$cond-alpha-rename:142| Bool) (|$cond-alpha-rename:132| Bool) (|$cond-alpha-rename:30| Bool) (|$cond-alpha-rename:137| Bool) (|$V-reftype:44| Int) (|$cond-alpha-rename:131| Int) (|$knormal:12| Int) (|$cond-alpha-rename:74| Int) (|$alpha-7:m| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:75| Int) (|$alpha-10:i| Int) (|$knormal:18| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:141| Bool) (|$knormal:21| Bool) (|$cond-alpha-rename:138| Bool) (|$cond-alpha-rename:31| Bool) (|$knormal:3| Bool) (|$cond-alpha-rename:135| Bool) (|$cond-alpha-rename:136| Bool) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:28| Bool) (|$cond-alpha-rename:29| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$cond-alpha-rename:76| (= |$knormal:18| |$cond-alpha-rename:74|)) (= |$cond-alpha-rename:31| (>= |$cond-alpha-rename:26| |$alpha-7:m|)) (= |$cond-alpha-rename:30| (and |$cond-alpha-rename:28| |$cond-alpha-rename:29|)) (= |$cond-alpha-rename:29| (<= |$cond-alpha-rename:26| |$alpha-7:m|)) (= |$cond-alpha-rename:28| (<= 0 |$cond-alpha-rename:26|)) (= |$cond-alpha-rename:143| (+ |$cond-alpha-rename:74| 1)) (= |$cond-alpha-rename:142| (>= |$cond-alpha-rename:74| |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:141| (and |$cond-alpha-rename:139| |$cond-alpha-rename:140|)) (= |$cond-alpha-rename:140| (<= |$cond-alpha-rename:74| |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:139| (<= 0 |$cond-alpha-rename:74|)) (= |$cond-alpha-rename:138| (>= |$cond-alpha-rename:133| |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:137| (and |$cond-alpha-rename:135| |$cond-alpha-rename:136|)) (= |$cond-alpha-rename:136| (<= |$cond-alpha-rename:133| |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:135| (<= 0 |$cond-alpha-rename:133|)) (= |$cond-alpha-rename:132| (= |$knormal:18| |$cond-alpha-rename:130|)) (not |$knormal:3|) (not |$cond-alpha-rename:76|) (not |$cond-alpha-rename:31|) (not |$cond-alpha-rename:142|) (not |$cond-alpha-rename:138|) (not |$cond-alpha-rename:132|) |$knormal:21| |$cond-alpha-rename:30| |$cond-alpha-rename:141| |$cond-alpha-rename:137| (|update$unknown:23| |$V-reftype:44| |$knormal:18| |$knormal:12| |$alpha-10:i|) (|update$unknown:22| |$knormal:18| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:74| |$cond-alpha-rename:129|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:26| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:133| |$cond-alpha-rename:129|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:129|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$cond-alpha-rename:129|) )
      (|bcopy_aux$unknown:15| |$V-reftype:44| |$knormal:18| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:11| Int) (|$alpha-10:i| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$knormal:9| Int) (|$knormal:21| Bool) (|$V-reftype:57| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$V-reftype:57| |$knormal:11|) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:17| |$knormal:11| |$knormal:9| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:57| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:16| |$knormal:9| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:12| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$V-reftype:51| 1) |$knormal:3| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:51| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) )
    ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) (not |$knormal:21|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:166| Bool) (|$cond-alpha-rename:165| Bool) (|$cond-alpha-rename:155| Bool) (|$cond-alpha-rename:154| Bool) (|$V-reftype:49| Int) (|$cond-alpha-rename:172| Bool) (|$cond-alpha-rename:162| Bool) (|$cond-alpha-rename:153| Bool) (|$cond-alpha-rename:113| Bool) (|$cond-alpha-rename:171| Bool) (|$cond-alpha-rename:156| Bool) (|$cond-alpha-rename:112| Bool) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:145| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:144| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:163| Int) (|$knormal:2| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:152| Bool) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:106| Bool) (|$cond-alpha-rename:147| Bool) (|$cond-alpha-rename:157| Bool) (|$cond-alpha-rename:168| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:110| Bool) (|$cond-alpha-rename:111| Bool) (|$cond-alpha-rename:150| Bool) (|$cond-alpha-rename:151| Bool) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:169| Bool) (|$cond-alpha-rename:170| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-6:j| |$alpha-4:i|)) (= |$cond-alpha-rename:173| (+ |$cond-alpha-rename:107| 1)) (= |$cond-alpha-rename:172| (>= |$cond-alpha-rename:107| |$cond-alpha-rename:159|)) (= |$cond-alpha-rename:171| (and |$cond-alpha-rename:169| |$cond-alpha-rename:170|)) (= |$cond-alpha-rename:170| (<= |$cond-alpha-rename:107| |$cond-alpha-rename:159|)) (= |$cond-alpha-rename:169| (<= 0 |$cond-alpha-rename:107|)) (= |$cond-alpha-rename:168| (>= |$cond-alpha-rename:163| |$cond-alpha-rename:159|)) (= |$cond-alpha-rename:167| (and |$cond-alpha-rename:165| |$cond-alpha-rename:166|)) (= |$cond-alpha-rename:166| (<= |$cond-alpha-rename:163| |$cond-alpha-rename:159|)) (= |$cond-alpha-rename:165| (<= 0 |$cond-alpha-rename:163|)) (= |$cond-alpha-rename:162| (= |$alpha-6:j| |$cond-alpha-rename:160|)) (= |$cond-alpha-rename:158| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:157| (>= |$alpha-4:i| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:156| (and |$cond-alpha-rename:154| |$cond-alpha-rename:155|)) (= |$cond-alpha-rename:155| (<= |$alpha-4:i| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:154| (<= 0 |$alpha-4:i|)) (= |$cond-alpha-rename:153| (>= |$cond-alpha-rename:148| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:152| (and |$cond-alpha-rename:150| |$cond-alpha-rename:151|)) (= |$cond-alpha-rename:151| (<= |$cond-alpha-rename:148| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:150| (<= 0 |$cond-alpha-rename:148|)) (= |$cond-alpha-rename:147| (= |$alpha-6:j| |$cond-alpha-rename:145|)) (= |$cond-alpha-rename:113| (>= |$cond-alpha-rename:104| |$cond-alpha-rename:105|)) (= |$cond-alpha-rename:112| (and |$cond-alpha-rename:110| |$cond-alpha-rename:111|)) (= |$cond-alpha-rename:111| (<= |$cond-alpha-rename:104| |$cond-alpha-rename:105|)) (= |$cond-alpha-rename:110| (<= 0 |$cond-alpha-rename:104|)) (= |$cond-alpha-rename:106| (= |$alpha-6:j| |$cond-alpha-rename:107|)) (= |$V-reftype:49| |$knormal:2|) (not |$knormal:1|) (not |$cond-alpha-rename:172|) (not |$cond-alpha-rename:168|) (not |$cond-alpha-rename:162|) (not |$cond-alpha-rename:157|) (not |$cond-alpha-rename:153|) (not |$cond-alpha-rename:147|) (not |$cond-alpha-rename:113|) (not |$cond-alpha-rename:106|) |$cond-alpha-rename:171| |$cond-alpha-rename:167| |$cond-alpha-rename:156| |$cond-alpha-rename:152| |$cond-alpha-rename:112| (|update$unknown:22| |$alpha-6:j| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (|update$unknown:22| |$alpha-6:j| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:163| |$cond-alpha-rename:159|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:148| |$cond-alpha-rename:144|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:107| |$cond-alpha-rename:159|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:104| |$cond-alpha-rename:105|) (|bcopy_aux$unknown:16| |$alpha-4:i| |$cond-alpha-rename:144|) (|bcopy_aux$unknown:15| |$knormal:2| |$alpha-6:j| |$cond-alpha-rename:105|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:159|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:144|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:109| |$cond-alpha-rename:104| |$cond-alpha-rename:105|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$cond-alpha-rename:159|) (|bcopy_aux$unknown:13| |$alpha-5:x| |$alpha-4:i| |$cond-alpha-rename:144|) )
      (|update$unknown:23| |$V-reftype:49| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:181| Bool) (|$cond-alpha-rename:180| Bool) (|$cond-alpha-rename:187| Bool) (|$cond-alpha-rename:177| Bool) (|$cond-alpha-rename:186| Bool) (|$cond-alpha-rename:175| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:174| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:182| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:183| Bool) (|$V-reftype:48| Int) (|$cond-alpha-rename:184| Bool) (|$cond-alpha-rename:185| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-6:j| |$alpha-4:i|)) (= |$cond-alpha-rename:188| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:187| (>= |$alpha-4:i| |$cond-alpha-rename:174|)) (= |$cond-alpha-rename:186| (and |$cond-alpha-rename:184| |$cond-alpha-rename:185|)) (= |$cond-alpha-rename:185| (<= |$alpha-4:i| |$cond-alpha-rename:174|)) (= |$cond-alpha-rename:184| (<= 0 |$alpha-4:i|)) (= |$cond-alpha-rename:183| (>= |$cond-alpha-rename:178| |$cond-alpha-rename:174|)) (= |$cond-alpha-rename:182| (and |$cond-alpha-rename:180| |$cond-alpha-rename:181|)) (= |$cond-alpha-rename:181| (<= |$cond-alpha-rename:178| |$cond-alpha-rename:174|)) (= |$cond-alpha-rename:180| (<= 0 |$cond-alpha-rename:178|)) (= |$cond-alpha-rename:177| (= |$alpha-6:j| |$cond-alpha-rename:175|)) (= |$V-reftype:48| |$alpha-5:x|) (not |$cond-alpha-rename:187|) (not |$cond-alpha-rename:183|) (not |$cond-alpha-rename:177|) |$knormal:1| |$cond-alpha-rename:186| |$cond-alpha-rename:182| (|update$unknown:22| |$alpha-6:j| |$cond-alpha-rename:176| |$cond-alpha-rename:175|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:178| |$cond-alpha-rename:174|) (|bcopy_aux$unknown:16| |$alpha-4:i| |$cond-alpha-rename:174|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:179| |$cond-alpha-rename:178| |$cond-alpha-rename:174|) (|bcopy_aux$unknown:13| |$alpha-5:x| |$alpha-4:i| |$cond-alpha-rename:174|) )
      (|update$unknown:23| |$V-reftype:48| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(check-sat)

(get-model)


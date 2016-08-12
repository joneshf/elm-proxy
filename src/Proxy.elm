module Proxy exposing (..)

{-|
A module that allow you to pass around type level information for compile-time verification.

@docs Proxy, reproxy
-}

{-|
Roughly equivalent to `()` with type level information.

Can be used to disambiguate between values at the type level.
Can also be used to pass "dummy" values to functions.
-}
type Proxy a
  = Proxy

{-|
Useful for easily changing the type of a proxy value.

For example, if you needed to enforce a different invariant in an algorithm,
you could `reproxy` the current invariant without headache.
-}
reproxy : Proxy a -> Proxy b
reproxy _ =
  Proxy

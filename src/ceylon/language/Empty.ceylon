import ceylon.language { e=empty }

"A sequence with no elements. The type `Empty` may be
 abbreviated `[]`, and an instance is produced by the 
 expression `[]`. That is, in the following expression,
 `e` has type `[]` and refers to the value `[]`:
 
     [] none = [];
 
 (Whether the syntax `[]` refers to the type or the 
 value depends upon how it occurs grammatically.)"
see (`Sequence`)
shared interface Empty of e
           satisfies Nothing[] &
                     Ranged<Integer,[]> &
                     Cloneable<[]> {
    
    "Returns an iterator that is already exhausted."
    shared actual Iterator<Nothing> iterator() => emptyIterator;
    
    "Returns `null` for any given index."
    shared actual Null get(Integer index) => null;
    
    "Returns an `Empty` for any given segment."
    shared actual [] segment(Integer from, Integer length) => this;
    
    "Returns an `Empty` for any given span."
    shared actual [] span(Integer from, Integer to) => this;
    
    "Returns an `Empty` for any given span."
    shared actual [] spanTo(Integer to) => this;
    
    "Returns an `Empty` for any given span."
    shared actual [] spanFrom(Integer from) => this;
    
    "Returns `true`."
    shared actual Boolean empty => true;
    
    "Returns 0."
    shared actual Integer size => 0; 
    
    "Returns an `Empty`."
    shared actual [] reversed => this;
    
    "Returns an `Empty`."
    shared actual [] sequence => this;
    
    "Returns a string description of the empty sequence: 
     `{}`."
    shared actual String string => "{}";
    
    "Returns `null`."
    shared actual Null lastIndex => null; 
    
    "Returns `null`."
    shared actual Null first => null;
    
    "Returns `null`."
    shared actual Null last => null; 
    
    "Returns an `Empty`."
    shared actual [] rest => this;
    
    "Returns an `Empty`."
    shared actual [] clone => this;
    
    "Returns an `Empty`."
    shared actual [] coalesced => this; 
    
    "Returns an `Empty`."
    shared actual [] indexed => this;
    
    "Returns `other`."
    shared actual Iterable<Other,OtherAbsent> 
    chain<Other,OtherAbsent>(Iterable<Other,OtherAbsent> other) 
            given OtherAbsent satisfies Null => other;
    
    "Returns `false` for any given element."
    shared actual Boolean contains(Object element) => false;
    
    "Returns 0 for any given predicate."
    shared actual Integer count(
            Boolean selecting(Nothing element)) => 0;
    
    shared actual Boolean defines(Integer index) => false;
    
    shared actual [] map<Result>(
            Result collecting(Nothing element)) => this;
    
    shared actual [] filter
            (Boolean selecting(Nothing element)) => this;
    
    shared actual Result fold<Result>(Result initial,
            Result accumulating(Result partial, Nothing element)) => 
                    initial;
    
    shared actual Null find
            (Boolean selecting(Nothing element)) => null;
    
    shared actual [] sort
            (Comparison comparing(Nothing a, Nothing b)) => this;
    
    shared actual [] collect<Result>
            (Result collecting(Nothing element)) => this;
    
    shared actual [] select
            (Boolean selecting(Nothing element)) => this;
    
    shared actual Boolean any
            (Boolean selecting(Nothing element)) => false;
    
    shared actual Boolean every
            (Boolean selecting(Nothing element)) => false;
    
    shared actual [] skipping(Integer skip) => this;
    
    shared actual [] taking(Integer take) => this;
    
    shared actual [] by(Integer step) => this;
    
    shared actual [Element] withLeading<Element>
            (Element element) => [element];
    
    shared actual [Element] withTrailing<Element>
            (Element element) => [element];
    
    shared actual {Other+} following<Other>(Other head) => 
            Singleton(head);
}

"A sequence with no elements, abbreviated `[]`. The 
 unique instance of the type `[]`."
//by ("Tako Schotanus")
shared object empty extends Object() satisfies [] {}

"An iterator that returns no elements."
shared object emptyIterator satisfies Iterator<Nothing> {
    next() => finished;
}

GENERAL ANSWER 

- merci pour les retours et commentaires

- we intend this paper to be the first step of a longer research program, to
  ... more choice principles.
  In particular, "on est d'accord avec l'important de regarder WKL, et de
  formaliser", mais for future work blabla
  
  Below detailed answer to your specific questions (and minor comments).



===================
Review #302A
===================

## Main Comments & Questions


> Assessment of the paper (significance, strengths, weakenesses)

> For the first part of the paper, some of the differences with the earlier
> model I consider a nice contribution. Namely, that the oracles can be all the
> functions, not just the fewest ones necessary; and that the oracles don't need
> to be ordered in a regimented fashion, but rather any sequence of oracles can
> be extended arbitrarily, so that the ones that are necessary are not a bar but
> are merely dense. 

> Others I consider unimportant: namely, that the model is
> said to be of higher-order logic instead of IZF, and that the computability
> used in the realizability part is a lambda-calculus instead of integer codes
> for Turing machines. 

We ourserlves agree with this analysis, and consider indeed that the specifics
of higher-order logic or the λ-calculus are not crucial to the construction
(Section 5 is precisely emphasizing this). Nonetheless, it seemed to us
interesting that using the λ-calculus as a language for the realizers had the
advantages of first, providing an easier to write explicit realizers (as if it
were a programing exercise), and second, be closer to what the type theory
community is used to, thus enlarging maybe the potential audience of this line
of research.

[?] pas juste les reverse maths (le dire de façon non négative), aussi la
communauté réalisabilité potentiellement moins familière des arguments de calculabilité.


> This all leads to my sense that the paper lacks a focus. Is it about the
> distinction between FT and WKL? Or is it about a general setting in which FT
> holds? I would be more enthusiastic about the work if it were about a general
> setting in which FT and WKL are distinguished. 

We may not be clear on enough on our focus, the question we want to adress is:
"how to capture the computational content of FT?". To that end, we are
interested in :
- a) making sure that we understand a computational content providing realizers for
FT, i.e. a robust statement (Thm 38) giving abstract conditions for a
realizability model (stated also as an algebraic structure via EF) to satisfy
FT,
- b) ensuring that this computational content is not too strong, in the sense that
  we can have *a* concret model that satisfies it but does not realize WKL (or
  stronger choice principles). 
Therefore, we only present the separation result between WKL and FT  for the
  concrete model (in Section 4) as a witness that b) holds. 


> How easily could you extend sec. 5 to include realizing the failure of WKL?

Nonetheless, this is actually a very interesting question by itself. We can
comment that:
- one easier answer would be to provide additional conditions over Thm 38 to
  ensure that WKL is not realized, for instance using the same trick with the
  Kleene tree (by stating that at each world, there is a tree for which no
  infinite path has a code, or some finer statement allowing to define the
  Kleene tree);
- providing a result similar to Thm 38 to describe sufficient condition for
  *any* realizability model to validate or unvalidate WKL is much more
  difficult, and is actually one of the next problem we plan to study, but it
  is out of the scope of the present. 
Moreover, studying conditions to not validate a statement feels harder than
  conditions to validate a statement, because it might be the case that a
  principle is not valid in a model because of a given computation feature
  (e.g., non-determinism to unvalidate DC [9]) but an extension of the system does
  validate the same principle (e.g., adding state [9]).



### Comments for authors

> In many spots, the word "monotonous" is used when "monotone" is meant.

Fixed.

> sec. 4.1, p. 7, def of FT: $x \in B$ was never defined. Presumably $B(x)$ is
> what is meant.

Indeed, we will make our notations coherent.

> sec. 4.2.1: By "relativized quantification," do you mean "bounded
> quantification"?

We followed the terminology used in the realm of Krivine realizability, by
calling the quantifications

     ∀xᴬ.B ≜ ∀ x. A(x) ⇒ B           ∃xᴬ.B ≜ ∃x. A(x) ∧ B

which may be called bounded as well in other contexts (we are only aware of
contexts where "bounded" correspond to predicate A(x) of the shape "x ≤ n", but
this is indeed a particular case of what we want). 


> p. 8, 4.2.4, par. 2, line 1: $\alpha \vdash$ is ungrammatical; I believe what
>is meant is $\alpha :$ (although I'm still concerned about the lack of a
>context). Also, $\alpha$ goes from Nat to Bool, not to Nat.

We fixed the typo "Bool" instead of "Nat". Regarding the notation, as explained
p8 in Notation 25, we introduce the notations 
   𝑡 ⊩ 𝑆 (𝑠)  (resp.  𝑡 ⊩ 𝑆 )
to denote that 𝑡 is a code for 𝑠 (resp. some 𝑠) in 𝕊. 
You are right about the lack of context, we will indeed define this for a fixed
context σ and write ⊩_σ instead.



> 4.3: What is Weak FT, as opposed to FT?

We are sorry about that, we switched the terminology while we were writing the
paper. In the literature, most of the times the principle we consider is called
FT, but in a few places, as it is the contrapositive of WKL it is also called
WFT (with FT being then the contrapositive of KL). We have not been cautious
enough when reverting the notations, it is our mistake.


> lemma 26: $t \vdash_\sigma (Nat \rightarrow Nat) \rightarrow Nat$ is not
> defined, as what's right of the turnstile is not a proposition. Perhaps what
> is meant is $t \vdash_\sigma \alpha : (...)$. 

Same remark as before about the notation 𝑡 ⊩ 𝑆, which we do introduce but should
have explicitly annotated with the context σ.


> p. 8, line -12: define m

The m line -12 is defined in the beginning of the proof as the length of the
context σ.

> p. 8, line -4: The notation $\alpha_M$ is new. Perhaps what is meant is
>$\alpha \upharpoonright M \frown 0^\infty$.

It should have been α↾M indeed.


> p. 9, before thm 28: The explanation of the Kleene tree is unusable. Either
>improve it or omit it, retaining only its essential properties (and not how
>it's built). Also, it is later referred to as K, without K being defined as
>such.

Thanks for the feedback, we will follow your suggestion and probably only give
its essential properties while providing a reference for its definition.


> thm 28: Since you stated FT, state WKL. 

It is an oversight indeed, we will definitely add it.

> Also, in the middle of the proof, you mean that an infinite, not a finite,
> path in $K_\sigma$ is not $\sigma$-computable. Also, the theorem is stated too
> weakly. It's not just that no t realizes WKL everywhere; rather, no t realizes
> WKL anywhere: for all $\sigma$ there is no $t$ with $t \vdash_\sigma$ WKL.

Indeed, we can give the theorem in its stronger version (correcting of course
the typo, we meant infinite).


> p. 9, col. 1, end: The meaning behind $\rightarrow$ in an EF is described, but
> $\rightarrow$ is not part of the signature of an EF.

Sorry about that, it should have been · ⊩ · ≤ ·  (which is written with a → in
the original paper about EFs, hence the mistake). 


> sec. 5.2, beginning, (2): I don't know what it means to say $f$ "can be called
> on a function $g$". Perhaps "$f$ can call on $g$"? "New functions are
> introduced at later stages"?

We meant that f is called with g as an argument. And what we are trying to
express is that, as in the concrete model where constant for oracles are present
from the beginning but only compute in a defined enough context σ, some
functions of the model are only computationally witnessed in future worlds τ≥σ. 


> After the list (1)-(4), the next sentence is awkward to the point of
> unclarity. What fact and what property are you talking about?

The sentence is missing a "that" and was unclear anyway indeed, we will
rephrase. We only wanted to stress out that the structure of the concrete model,
and the definition of the · ⊩_σ · relation in terms of future worlds push us
towards an abstract setting generalizing Kripke semantics.


> def. 34: What does it mean to say that a morphism is "the data of two
> functions"? I do not know what that phrase could mean. Is a morphism a pair of
> functions?

Yes, indeed, a pair of functions, one acting on propositions, the other on evidences. 


> sec. 5.2.3, line 2: When it states that some principle need not be realized in
> "any" EF, it sounds like it's talking about such a principle never being
> realized. I believe what is intended is that it is not realized in some
> particular, or some given, EF. 

Absolutely, fixed.


> p. 11, line 1255: The notation $\complement C$ was never defined.

Fixed.



===================
 Review #302B
===================

## Main Comments & Questions

> Summing up, the most important PROS of the paper are its timeliness, the
> novelty of the approach, its impact both in constructive mathematics and
> realizability for the analysis of computational interpretations of Fan Theorem
> and more generally of choice principles.

Thanks for these comments, we are glad to see that you share our enthusiasm
regarding this approach to investigate the computational content of choice
principles using realizability techniques.


### Comments for authors
> - Line 12 (abstract) "unable to..." instead of "unable do..." , same typo on
>   line 76

Fixed.

> - line 69-71, ''several principles compatible with constructive mathematics
>   lead to logical inconsistencies when added together (e.g. Church's thesis
>   and the law of excluded middle)". I guess here 'constructive mathematics'
>   means Heyting arithmetics, but the law of excluded middle is not really
>   compatible with constructive mathematics in the usual sense of
>   'constructive', so maybe this sentence should be rephrased. 

Thanks for this observation, we will rephrase.

> - line 105, the author(s) say(s) they rely on realizability interpretations in
>   line with Krivine's approach, but Krivine's realizability is classical while
>   the results presented in this paper are not, it would be interesting to
>   compare this approach with Krivine's classical realizability

Here, we refer to Krivine's approach in the sense that he proposed (indeed with
the case of classical logic and control operators) to interpret more reasoning
principles with extra computational features. It is indeed the case that all of
his work is done in a classical setting, but he also paid attention to other
principles/computational features: quote for dependent choice, bar-recursion à
la Berardi-Bezem-Coquand for dependent choice also, monotone memory for forcing,
etc.

In our case, it is indeed an interesting question to wonder whether
(sub?)classical systems could be compatible with the hypothesis of Thm 38. The
main obstacle should be the requirement for an explicit existential. 
Still, in the classical case, FT and WKL are equivalent, so the question could
be reframed in understanding what is the computational content of WKL, which is
precisely the question we intend to tackle next (following a similar approach
but in a framework that encompass classical realizability models such as Krivine
realizability).

> - line 319 "while we interpret ..." instead of  "while we interpretation ..." 
Fixed.

> -line 379 "...constructed based on a Turing machine ...." instead of
> "...constructed based on Turing machine ...."
Fixed.

> - line 610 - 612 "This means that the theory is consistent as there are
>   predicates with no realizers". Maybe it should be explained why the fact
>   that there are predicates with no realizers implies that the theory is
>   consistent. 
This is what Corollary 24 expresses, but we may put a forward reference to it.

> - line 827 "...(in some reduction context...)" instead of "(in somme reduction
>   context...)"
Fixed.

> - line 901 "we already know that n_{C_b} 0 either reduces to an integer or it
>   diverges ", it would help the reader to remind that this was explained at
>   the end of subsection 4.2.4; actually I think it would be nicer to state
>   this as a remark or lemma at the end of subsection 4.2.4
Thanks for the suggestions.

> - line 947 "diagonally" instead of "diagonaly"
Fixed.

> - line 958 "a finite path" instead of "an finite path"
Fixed.

> - line 1168 "continuity ...is a well studied notion", instead of  "continuity
> ...is well studied notion"  
Fixed.

> - line 1169-1170 since, as the author(s) say(s), there is a wide literature on
>   continuity, maybe it would be interesting to have more than just one
>   reference 
This is a good suggestion indeed, we will do so.

> - line 1254-1255 "Using Weak König's Lemma on ? (which is a tree)", is this
>   notation for the complement of C? Please, clarify the notation

This is the only use of the notation, we will remove it and explicitly write
'the complement of C'.


> - line 1307 "The additional data..." instead of "The addionnal data..."
Fixed.

> - line 1309 Please explain of indicate some reference for "the UFam
> construction"   
This is the construction used to define a tripos out of an evidenced frame [13],
but the name UFam is also used in the literature, for instance in "Categorical
Logic and Type Theory" of Jacobs, we will add these references.

> - line 1330 "In practice, any realizability model of interest possesses such
>   an object" (referring to a NNO), I find this claim too vague and too strong,
>   I suggest you rephrase this sentence 

You are right, we will make it more precise and refer to concrete examples (for
instance the realizability topos arising from PCAs or λ-calculus where Church
encodings of natural numbers are available).


> - line 1350 "...it does not rely on other peculiarities..." instead of "...it
>   does not really on other peculiarities..."
Fixed.

> - line 1352 "... it provides us with a result..." instead of "... it provides
>   us with in a result..."
Fixed.

> - line 1389 "...by only considering bars on Pi_0^1 trees ..." Please explain why Pi_0^1-trees?

This question was already present in [32] as one possible way of weakening the
premise of Ft, it comes from the fact that these trees correspond to the
intersection of a family of computable trees.


===================
Review #302C
===================

## Main Comments & Questions
> This paper has some rough edges, it would definitely have benefited from more
> proof reading and some spell checking.  Some definitions (e.g. Notation 19)
> were incomprehensible.

We apologize for the typos, and will make sure that all notations are introduced
with enough intuitions.

> The proofs are very rigorous up to including Section 3 but then become more
> informal; I could not check the latter ones for correctness. 

We tried to stay in the page limit while not skipping over too much important
details of the proofs, but we would be happy to include more details on specific
proofs where you think they are missing.


> In my opinion, the paper would benefit from a formalization in a proof
> assistant, as it employs proofs about reduction sequences of terms and there
> could be subtle issues. 

We agree on the fact that a formalization would be an valuable addition to this
work. This is actually part of a more long term plan of this research program:
as explained in the paper, we intend to study more choice principles and their
computational content, and we hope to be develop a general enough framework to
formalize these results. Since the present work is only a first step in that
direction, we feel like we still lack of perspective on the appropriate setting
to formalize it efficiently.


> Questions for authors’ response
> 1. Evidence frames look very similar to cartesian closed categories (CCCs).
>   Could you work with a certain class of CCCs instead?
>  (Which would be a more standard notion.)

Evidenced frames were introduced as a framework more suitable to the
algebrization of realizability than CCC in that:
- it allows to separate the treatment of propositions and evidences, as is the
case in many realizability models,
- unlike CCC, EF does not impose any kind of equations on the different object
  at plays, and thus no restriction on the operational semantics of the
  evidences.
  
  


### Comments for authors
> There are many misspellings in this paper.  Using a spell-checker would have
> paid off!

Sorry about that.

> l150ff  I misunderstood this description of the Fan Theorem on the first
> reading. Try explain a bit more carefully the concept of the "complement of a
> tree". In particular, this complement is closed under prefix dropping and
> under list extension. 

At this stage, we intended to provide intuitions without being too technical,
but we can make this point clearer if it felt too informal.

> "A set C whose complement is a tree".  A complement can only be taken with
> respect to a totality or universe, so you should say what C is a subset of.

We meant that C is a subset of the set of lists of booleans.

> l259 Spurious ":" in "Γ ⊢[:] t : S"
Fixed.

> l322 "need an environment ρ which covers Γ"
> You need that already to define ⟦Γ ⊢ t : S⟧, so you should discuss
> environments before the semantics. 

We will restructure this subsection to improve that point.


> l317 "(x ∈ ⟦S⟧) ↦ [(]xs ∈ ⟦Γ⟧)..." is in the wrong order, should be

>   (ρ ∈ ⟦Γ⟧) ↦ (s ∈ ⟦S⟧) ↦ ⟦Γ,x:S ⊢ t : T⟧(ρ,x↦s)

Indeed, fixed.

> l329 "ρ(t)" this is easy to confuse with a similar notation introduced later
> (l422), why not just ⟦t⟧ρ ?

This is a good suggestion indeed.

> l377ff This paragraph is too high level, cannot be understood based on the
> context introduced so far.

Thanks for the feedback, we will make our best to improve it.

> l403 "mention[n]ed"

Fixed.


> l405 What is meant by "degree"?  And does it matter for this paper?

We should have written Turing degrees. This is not important for our
construction, but this is useful to connect our work to Lubarsky and Rathjen's
paper [32]. In particular, the other results that they get could be retrieved in
our settings by enforcing these extra assumptions.

> l460 "Following the Brouwer-Heyting-Kolmogorov [interpretation]"

Fixed.

> l493 Is the "∀σ ∈ O" intended?  σ is already bound (in l492).

The 'Let σ∈O' should be removed from the statement, the A_σ/B_σ are families
indexed by σ.

> l510 "equip[p]ed"
Fixed.


> l539 Is anything won by introducing notation ⌜s⌝_σ for ⌜s⌝^σ ?
We felt that this notation ease the reading, but this is subjective.


> l545 "The realizability relation then defines, for a syntactic proposition ⊢
> φ : Prop, an object ⟦φ⟧ ∈ ⟦Prop⟧." That does not sound right.  Realizability
> rather produces t ∈ ⟦φ⟧. 

We should have phrased this differently. The realizability relation
produces a realizer t ⊩ φ, and this is equivalent here to the statement t∈〚φ〛.
By this point of view, defining the relation · ⊩ φ amounts to defining 〚φ〛.


> l574f It is unclear what is being defined here, since ⊪ is undefined yet, so
> it cannot be used to define ⟦φ⟧.

The notation ⊪ without ρ should have been defined indeed (this is for empty ρ,
i.e. for pure propositions), while ⊪^ρ is defined before in Definition 17. 
⟦φ⟧ is then only defined as a notation based on this.


> l582 "obje[c]t"
Fixed.


> l712 "[] : S(List(S))[]"  looks wrong..
Indeed, that's a typo, it should be [] : (List(𝑆))([]).


> l739 "canonical[l]y"
Fixed.

> l785 "proposition[n]al"
Fixed.

> l823 What is "WFT"?
We are sorry about that, we switched the terminology while we were writing the
paper. In the literature, most of the times the principle we consider is called
FT, but in a few places, as it is the contrapositive of WKL it is also called
WFT (with FT being then the contrapositive of KL). We have not been cautious
enough when reverting the notations, it is our mistake.


> l827 "som[m]e"
Fixed.

> l871 "Weak Fan Theorem"
> Why are we  suddenly talking about "weak" Fan Theorem? This has never been
> mentioned, and it is not clear what distinguishes it from the "strong" Fan
> Theorem. 
This is a mistake indeed, see above.

> l880ff I checked the proof in the appendix but it still feels very
> non-rigorous. Is reasoning about reduction sequences the best way to establish
> continuity? 

We do not claim that this is the "best" way of proving it, we wanted to avoid
appealing to techniques relying on domains semantics or other involved
techniques just for the purpose of this lemma. We could precise the details if
needed, and another approach would be to introduce an operational semantics via
an abstract machine to restrict the possible reductions (and impose a weak-head
reduction strategy) and make this proof easier, but it would impose unnecessary
constraints to the rest of our model. 


> l1408 "Begr[u]ündung"
Fixed.

> l1451 Why is this paper title in UPPERCASE?
This is a typo.

> l1734 "cho[o]se", twice
Fixed.


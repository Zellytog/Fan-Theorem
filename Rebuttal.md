First and foremost, we would like to thank the reviewers for their feedback and valuable comments. We intend this paper to be a first step in a long-term research program using similar methods to study the precise computational content of various choice principles. Therefore, we share your interest in studying WKL and aim to develop a framework in which such results can be formalized; we definitely had these on our to-do list for future work.

Concerning the difference between WFT and FT (Weak Fan Theorem and Fan Theorem), it is an oversight on our side. In the literature, most of the time the principle we consider is called FT, but in a few places, as it is the contrapositive of WKL, it is also called WFT (with FT being then the contrapositive of KL). We have not been cautious enough when reverting the notations, this was our mistake.

The notation \complement C lacked clarity, so we will remove it and write explicitly "the complement of C".

You will find below detailed answers to your specific questions and comments. The comments about typos are taken into account, but not mentionned due to the lack of space.

===================
Review #302A
===================

## Main Comments & Questions

> Others I consider unimportant: namely, that the model is
> said to be of higher-order logic instead of IZF, and that the computability
> used in the realizability part is a lambda-calculus instead of integer codes
> for Turing machines. 

We ourselves agree with this analysis. Indeed the specifics of higher-order logic or the λ-calculus are not crucial (Section 5 emphasizes this). Nonetheless, it seemed to us that using the λ-calculus as a language for the realizers has interesting benefits: 
- first, it provides an easier framework (in our opinion) for writing explicit realizers,
- second, it is closer to what the type theory and realizability communities are used to (as it requires fewer subtle computability arguments), thus hopefully reaching a broader audience for this line of  research. 


> [...] is it about a general setting in which FT holds?

Regarding our focus, the main question we want to address is: "How can we capture the computational content of FT?". This perspective guides the structure of the paper: our goal is not to fully characterize WKL, but rather to isolate and understand the computational content of FT. To that end, we are interested in:
- a) making sure that we understand a computational content providing realizers for FT, i.e. a robust statement (Thm. 38) giving abstract conditions for a realizability model (stated as an algebraic structure via EF) to satisfy FT, 
- b) ensuring that this computational content is not too strong, in the sense that we can have *a* concrete model that satisfies it but does not realize WKL (or stronger choice principles). 

Therefore, we only present the separation result between WKL and FT for the concrete model (in Section 4) as evidence that (b) holds.


> How easily could you extend sec. 5 to include realizing the failure of WKL?

This is actually a very interesting question in its own right. We can comment that:
- the easier approach would be to provide additional conditions over Thm. 38 to ensure that WKL is not realized, for instance using the same trick with the Kleene tree (by stating that at each world, there is a tree for which no infinite path has a code, or some finer statement allowing to define the Kleene tree); 
- providing a result similar to Thm. 38 to describe sufficient condition for *any* realizability model to validate or refute  WKL is much more difficult, and it is actually one of the next problems we plan to study, but it is beyond the scope of the present paper.
  
Moreover, studying conditions under which a statement is not validated seems harder than conditions to validate a statement, because it might be the case that a principle is not valid in a model because of some computational feature (e.g., non-determinism can invalidate countable choice [9]) but an extension of the same system may validate the same principle (e.g., adding state to non-determinism yields a model validating countable choice [9]). 



### Comments for authors

> sec. 4.2.1: By "relativized quantification," do you mean "bounded
> quantification"?

We followed the terminology used in the realm of Krivine realizability, by calling the quantifications

     ∀xᴬ.B ≜ ∀ x. A(x) ⇒ B           ∃xᴬ.B ≜ ∃x. A(x) ∧ B

which may be called bounded as well in other contexts (we are only aware of contexts where "bounded" corresponds to predicate A(x) of the shapeform "x ≤ n", but this is indeed a particular case of what we want). 


> p. 8, 4.2.4, par. 2, line 1: $\alpha \vdash$ is ungrammatical [...]
> (although I'm still concerned about the lack of a context).

As explained p8 in Notation 25, we introduce the notations 
   𝑡 ⊩ 𝑆 (𝑠)  (resp.  𝑡 ⊩ 𝑆 )
to denote that 𝑡 is a code for 𝑠 (resp. some 𝑠) in 𝕊. 
You are right about the lack of context, we will define this for a fixed context σ and write ⊩_σ.

> p. 8, line -12: define m

It is defined in the beginning of the proof as the length of the context σ.

> p. 9, before thm 28: The explanation of the Kleene tree is unusable. [...]

Thanks for the feedback, we will follow your suggestion.


> thm 28: Since you stated FT, state WKL. 

It is an oversight indeed, we will definitely add it.

> p. 9, col. 1, end: [...] $\rightarrow$ is not part of the signature of an EF.

Sorry about that, it should have been · ⊩ · ≤ ·.

> sec. 5.2, beginning, (2): I don't know what it means to say $f$ "can be called
> on a function $g$".

We meant that f is called with g as an argument. And what we are trying to express is that, as in the concrete model where constants for oracles are present from the beginning but only compute only in sufficiently defined contexts σ, some functions of the model are only computationally witnessed in future worlds τ≥σ. 


> After the list (1)-(4), the next sentence is awkward to the point of
> unclarity.

The sentence is missing a "that" and was unclear anyway indeed, we will rephrase. We wanted to stress that the structure of the concrete model, and the definition of the · ⊩_σ · relation in terms of future worlds naturally leads us to an abstract setting generalizing Kripke semantics.


> def. 34: What does it mean to say that a morphism is "the data of two
> functions"?

It is a pair of functions: one acting on propositions, the other on evidences.


===================
 Review #302B
===================

## Main Comments & Questions

> Summing up, the most important PROS of the paper are [...]

Thank you for these comments, we are pleased to see that you share our enthusiasm regarding this approach to investigating the computational content of choice principles using realizability techniques.


### Comments for authors

> - line 105, the author(s) say(s) they rely on realizability interpretations in
>   line with Krivine's approach, but Krivine's realizability is classical [...]

Here, we refer to Krivine's approach in the sense that he proposed (indeed with the case of classical logic and control operators) to interpret more reasoning principles with extra computational features. It is indeed the case that all of his work is done in a classical setting, but he also paid attention to other principles/computational features: quote for dependent choice, monotone memory for forcing, etc.

In our case, it is indeed interesting to ask whether (sub?)classical systems could be compatible with the hypothesis of Thm 38. The main obstacle is likely to be the requirement of an explicit existential. Still, in the classical case, FT and WKL are equivalent, so the question could be reframed as understanding the computational content of WKL, which is the question we intend to tackle next (following a similar approach, in a framework that encompasses classical realizability models such as Krivine realizability). 


> - line 901 "we already know that n_{C_b} 0 either reduces to an integer or it
>   diverges " [...] actually I think it would be nicer to state
>   this as a remark or lemma at the end of subsection 4.2.4

Thanks for the suggestion; clarifying this point will improve the readability of the paper. 

> - line 1169-1170 [...] maybe it would be interesting to have more than just one
>   reference 

This is a good suggestion indeed, we will do so.

> - line 1309 Please explain of indicate some reference for "the UFam
> construction"   

This is the construction used to define a tripos from an evidenced frame [13], but the name UFam is also used in the literature, for instance, in "Categorical Logic and Type Theory" of Jacobs, we will add these references.

> - line 1330 [...] (referring to a NNO), I find this claim too vague and too
>   strong, I suggest you rephrase this sentence 

You are right, we will make it more precise and refer to concrete examples (for instance the realizability topos arising from λ-calculus with Church encoding of integers).


> - line 1389 [...] Please explain why Pi_0^1-trees?

We refer to a question already present in [32], as one possible ways of weakening the premise of Ft.


===================
Review #302C
===================

## Main Comments & Questions

> [...] I could not check the latter ones for correctness. 

We tried to stay in the page limit while not skipping over too much important details of the proofs, but we would be happy to include more details where you think they are missing.


> Questions for authors’ response
> 1. [...] Could you work with a certain class of CCCs instead?

Evidenced frames were introduced as a framework more suitable for the algebrization of realizability than CCC in that:
- it allows to separate the treatment of propositions and evidences, as is the case in many realizability models, 
- unlike CCC, EF does not impose any kind of equations on the different object at play, and thus no restriction on the operational semantics of the evidences.
  
  
### Comments for authors

> l150ff  [...] Try explain a bit more carefully the concept of the
> "complement of a tree".

At this stage, we intended to provide intuitions without being too technical, but we can make this point clearer if it felt too informal.

> l322 [...] you should discuss environments before the semantics. 

We will restructure this subsection to improve that point.

> l329 [...] why not just ⟦t⟧ρ ?

This is a good suggestion indeed.

> l405 What is meant by "degree"?  And does it matter for this paper?

We should have written Turing degrees. This is not important for our construction, but this is useful to connect our work to Lubarsky and Rathjen's paper [32]. In particular, the other results that they get could be retrieved in our settings by enforcing these extra assumptions.

> l545 [...] That does not sound right.  Realizability rather produces t ∈ ⟦φ⟧. 

The realizability relation produces a realizer t ⊩ φ, and this is equivalent here to the statement t∈〚φ〛. By this point of view, defining the relation · ⊩ φ amounts to defining 〚φ〛.


> l574f [...] since ⊪ is undefined yet, so it cannot be used to define ⟦φ⟧.

The notation ⊪ without ρ should have been defined indeed (this is for empty ρ, i.e. for pure propositions), while ⊪^ρ is defined before in Definition 17. ⟦φ⟧ is then only defined as a notation based on this.

> l880ff [...] Is reasoning about reduction sequences the best way to establish
> continuity? 

We do not claim that this is the "best" way of proving it, we wanted to avoid appealing to techniques relying on domains semantics or other involved techniques just for the purpose of this lemma. We could precise the details if needed. 


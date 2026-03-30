First and foremost, we would like to thank the reviewers for their feedback and valuable comments . We intend this paper to be a first step in a long-term research program using similar methods to study the precise computational content of various choice principles. Therefore, we share your interest in studying WKL and aim to develop a framework in which such results can be formalized; we definitely had these on our to-do list for future work.

Concerning the difference between WFT and FT (Weak Fan Theorem and Fan Theorem), it is an oversight on our side. In the literature, most of the time the principle we consider is called FT, but in a few places, as it is the contrapositive of WKL, it is also called WFT (with FT being then the contrapositive of KL). We have not been cautious enough when reverting the notations, this was our mistake.

You will find below detailed answers to your main questions and comments; typos/mispellings and other suggestions to improve readability are taken in to account but not mentioned here due to the lack of space.



*****************
     ReviewA
*****************


*  We ourselves agree with your analysis that the specifics of higher-order logic or the λ-calculus are not crucial (Section 5 emphasizes this). Nonetheless, it seemed to us that using the λ-calculus as a language for the realizers has interesting benefits: 
- first, it provides an easier framework (in our opinion) for writing explicit realizers,
- second, it is closer to what the type theory and realizability communities are used to (as it requires fewer subtle computability arguments), thus hopefully reaching a broader audience for this line of  research. 


*  Regarding our focus, the main question we want to address is: "How can we capture the computational content of FT?". This perspective guides the structure of the paper: our goal is not to fully characterize WKL, but rather to isolate and understand the computational content of FT. To that end, we are interested in:
- a) making sure that we understand a computational content providing realizers for FT, i.e. a robust statement (Thm. 38) giving abstract conditions for a realizability model (stated as an algebraic structure via EF) to satisfy FT, 
- b) ensuring that this computational content is not too strong, in the sense that we can have *a* concrete model that satisfies it but does not realize WKL (or stronger choice principles). 

Therefore, we only present the separation result between WKL and FT for the concrete model (in Section 4) as evidence that (b) holds.

Yet, extending sec.5 to include realizing the failure of WKL is actually an interesting question in its own right. We can comment that:
- the easier approach would be to provide additional conditions over Thm. 38 to ensure that WKL is not realized, for instance using the same trick with the Kleene tree (by stating that at each world, there is a tree for which no infinite path has a code, or some finer statement allowing to define the Kleene tree); 
- providing a result similar to Thm. 38 to describe sufficient condition for *any* realizability model to validate or refute  WKL is much more difficult, and it is actually one of the next problems we plan to study, but it is beyond the scope of the present paper.
  


 * We followed the terminology used in the realm of Krivine realizability, by calling the quantification 
   
 ∀xᴬ.B ≜ ∀x. A(x) ⇒ B   

relativized, which may be called bounded as well in other contexts indeed.


>$\alpha \vdash$ is ungrammatical

In Notation 25, we introduce the notation
   𝑡 ⊩ 𝑆(𝑠)  
to denote that 𝑡 is a code for 𝑠 in 𝕊. 
About the lack of context, we shall define  ⊩_σ for a fixed context σ indeed.


> "New functions are introduced at later stages"

We are trying to express is that, as in the concrete model where constants for oracles are present from the beginning but only compute only in sufficiently defined contexts σ, some functions of the model are only computationally witnessed in future worlds τ≥σ. 



*****************
     ReviewB
*****************


> important PROS ...

Thank you for these comments, we are pleased to see that you share our enthusiasm regarding this approach to investigating the computational content of choice principles using realizability techniques.


> ... but Krivine's realizability is classical [...]

Here, we refer to Krivine's approach in the sense that he proposed (indeed with the case of classical logic and control operators) to interpret more reasoning principles with extra computational features. It is indeed the case that all of his work is done in a classical setting, but he also paid attention to other principles/computational features: quote for dependent choice, monotone memory for forcing, etc.

In our case, it is indeed interesting to ask whether (sub?)classical systems could be compatible with the hypothesis of Thm 38. The main obstacle is likely to be the requirement of an explicit existential. Still, in the classical case, FT and WKL are equivalent, so the question could be reframed as understanding the computational content of WKL, which is the question we intend to tackle next (in a framework that encompasses classical realizability models). 


> (referring to a NNO), I find this claim too vague ...

You are right, we will make it more precise and refer to concrete examples (for instance the realizability topos arising from λ-calculus with Church encoding of integers).


> ... why Pi_0^1-trees?

These trees correspond to the intersection of a family of computable trees, the question is already present in [32].


*****************
     ReviewC
*****************

> ... Could you work with a certain class of CCCs instead?

Evidenced frames were introduced as a framework more suitable for the algebrization of realizability than CCC in that:
- it allows to separate the treatment of propositions and evidences, as is the case in many realizability models, 
- unlike CCC, EF does not impose any kind of equations on the different object at play, and thus no restriction on the operational semantics of the evidences.
  

>  What is meant by "degree"?

We should have written Turing degrees. This is not important for our construction, but this is useful to encompass Lubarsky and Rathjen's model [32] and recover their other results.

> ... That does not sound right.  Realizability rather produces t ∈ ⟦φ⟧. 

The realizability relation produces a realizer t ⊩ φ, and this is equivalent here to the statement t∈〚φ〛. By this point of view, defining the relation · ⊩ φ amounts to defining 〚φ〛.


> Is ... the best way to establish continuity? 

We do not claim that this is the "best" way of proving it, we wanted to avoid appealing to techniques relying on domains semantics or other involved techniques just for the purpose of this lemma. We could precise the details if needed.

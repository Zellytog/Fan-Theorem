===================
Review #302A
===================

>> Paper summary
>> A model is presented of the Fan Theorem in which Weak König's Lemma, classically the contrapositive of FT, is false. This model is a variant of an earlier one given by Lubarsky-Rathjen. Then the essential features which make it satisfy FT are presented in an abstract or more general form, so that they can prove that any model with those properties will make FT hold true.

>> Assessment of the paper (significance, strengths, weakenesses)
>> For the first part of the paper, some of the differences with the earlier model I consider a nice contribution. Namely, that the oracles can be all the functions, not just the fewest ones necessary; and that the oracles don't need to be ordered in a regimented fashion, but rather any sequence of oracles can be extended arbitrarily, so that the ones that are necessary are not a bar but are merely dense. Others I consider unimportant: namely, that the model is said to be of higher-order logic instead of IZF, and that the computability used in the realizability part is a lambda-calculus instead of integer codes for Turing machines.

>> For the second part, I like that the conditions that make FT hold were abstracted away from the particulars of the construction, and presented almost axiomatically. This might be useful some day. What I was disappointed about is that the same was not done for WKL.

>> This all leads to my sense that the paper lacks a focus. Is it about the distinction between FT and WKL? Or is it about a general setting in which FT holds? I would be more enthusiastic about the work if it were about a general setting in which FT and WKL are distinguished.

>> Comments for authors
>> Wherever this gets published, there are many things that need to be corrected.

>> In many spots, the word "monotonous" is used when "monotone" is meant.

>> sec. 4.1, p. 7, def of FT: $x \in B$ was never defined. Presumably $B(x)$ is what is meant.

>> sec. 4.2.1: By "relativized quantification," do you mean "bounded quantification"?

>> p. 8, 4.2.4, par. 2, line 1: $\alpha \vdash$ is ungrammatical; I believe what is meant is $\alpha :$ (although I'm still concerned about the lack of a context). Also, $\alpha$ goes from Nat to Bool, not to Nat.

>> 4.3: What is Weak FT, as opposed to FT?

>> lemma 26: $t \vdash_\sigma (Nat \rightarrow Nat) \rightarrow Nat$ is not defined, as what's right of the turnstile is not a proposition. Perhaps what is meant is $t \vdash_\sigma \alpha : (...)$.

>> p. 8, line -12: define m

>> p. 8, line -4: The notation $\alpha_M$ is new. Perhaps what is meant is $\alpha \upharpoonright M \frown 0^\infty$.

>> p. 9, before thm 28: The explanation of the Kleene tree is unusable. Either improve it or omit it, retaining only its essential properties (and not how it's built). Also, it is later referred to as K, without K being defined as such.

>> thm 28: Since you stated FT, state WKL. Also, in the middle of the proof, you mean that an infinite, not a finite, path in $K_\sigma$ is not $\sigma$-computable. Also, the theorem is stated too weakly. It's not just that no t realizes WKL everywhere; rather, no t realizes WKL anywhere: for all $\sigma$ there is no $t$ with $t \vdash_\sigma$ WKL.

 p. 9, col. 1, end: The meaning behind $\rightarrow$ in an EF is described, but $\rightarrow$ is not part of the signature of an EF.

>> sec. 5.2, beginning, (2): I don't know what it means to say $f$ "can be called on a function $g$". Perhaps "$f$ can call on $g$"? "New functions are introduced at later stages"?

>> After the list (1)-(4), the next sentence is awkward to the point of unclarity. What fact and what property are you talking about?

>> def. 34: What does it mean to say that a morphism is "the data of two functions"? I do not know what that phrase could mean. Is a morphism a pair of functions?

>> sec. 5.2.3, line 2: When it states that some principle need not be realized in "any" EF, it sounds like it's talking about such a principle never being realized. I believe what is intended is that it is not realized in some particular, or some given, EF.

 p. 11, line 1255: The notation $\complement C$ was never defined.

>> Questions for authors’ response
>> How easily could you extend sec. 5 to include realizing the failure of WKL?

===================
 Review #302B
===================

>> Paper summary
>> The paper investigates the computational content of the Fan Theorem and explores its connections with Weak König's lemma in the context of constructive reverse mathematics. While Weak König's Lemma is known to imply the Fan Theorem, the converse separation has received less attention from a constructive standpoint. The authors develop a realizability model that validates Fan Theorem while refuting Weak König’s Lemma, thus providing a computational separation between the two principles. The paper then abstracts this construction using the framework of evidenced frames, identifying general computational conditions that guarantee the validity of the Fan Theorem.

>> Assessment of the paper (significance, strengths, weakenesses)
>> These results are timely in constructive mathematics and realizability, where there has been a growing interest in analyzing variants of the axiom of choice. For instance, recent work by Herbelin and Brede studies a hierarchy of choice principles, further illustrating the importance of a finer-grained analysis of such logical principles from a constructive and computational perspective. 

>> I find the paper especially interesting for its use of realizability methods for investigating questions in constructive reverse mathematics. This approach seems especially well suited for analyzing and separating principles in constructive mathematics, contrary to classical reverse mathematics which is unable to distinguish between a principle and its contrapositive.  

>> The realizability model proposed by the author(s) for realizing Fan Theorem uses a variant of lambda-calculus extended with oracles. Using the formalism of evidence frames, the author(s) is/are able to abstract from this specific construction and identify general computational conditions for validating the Fan Theorem, one of those being a condition of continuity. This analysis is important for a more general understanding of the computational meaning of Fan Theorem, and possibly of other choice principles.

>> The paper is well written, all the constructions and the motivations are well explained.

>> Summing up, the most important PROS of the paper are its timeliness, the novelty of the approach, its impact both in constructive mathematics and realizability for the analysis of computational interpretations of Fan Theorem and more generally of choice principles.

>> Comments for authors
>> Hereafter are some typos and suggestions (none of the following affect my evaluation of the paper): 

>> - Line 12 (abstract) "unable to..." instead of "unable do..." , same typo on line 76
>> - line 69-71, ''several principles compatible with constructive mathematics lead to logical inconsistencies when added together (e.g. Church's thesis and the law of excluded middle)". I guess here 'constructive mathematics' means Heyting arithmetics, but the law of excluded middle is not really compatible with constructive mathematics in the usual sense of 'constructive', so maybe this sentence should be rephrased.   
>> - line 105, the author(s) say(s) they rely on realizability interpretations in line with Krivine's approach, but Krivine's realizability is classical while the results presented in this paper are not, it would be interesting to compare this approach with Krivine's classical realizability
>> - line 319 "while we interpret ..." instead of  "while we interpretation ..." -line 379 "...constructed based on a Turing machine ...." instead of  "...constructed based on Turing machine ...."
>> - line 610 - 612 "This means that the theory is consistent as there are predicates with no realizers". Maybe it should be explained why the fact that there are predicates with no realizers implies that the theory is consistent. 
>> - line 827 "...(in some reduction context...)" instead of "(in somme reduction context...)"
>> - line 901 "we already know that n_{C_b} 0 either reduces to an integer or it diverges ", it would help the reader to remind that this was explained at the end of subsection 4.2.4; actually I think it would be nicer to state this as a remark or lemma at the end of subsection 4.2.4
>> - line 947 "diagonally" instead of "diagonaly"
>> - line 958 "a finite path" instead of "an finite path"
>> - line 1168 "continuity ...is a well studied notion", instead of  "continuity ...is well studied notion"  
>> - line 1169-1170 since, as the author(s) say(s), there is a wide literature on continuity, maybe it would be interesting to have more than just one reference 
>> - line 1254-1255 "Using Weak König's Lemma on ? (which is a tree)", is this notation for the complement of C? Please, clarify the notation
>> - line 1307 "The additional data..." instead of "The addionnal data..."
>> - line 1309 Please explain of indicate some reference for "the UFam construction"   
>> - line 1330 "In practice, any realizability model of interest possesses such an object" (referring to a NNO), I find this claim too vague and too strong, I suggest you rephrase this sentence 
>> - line 1350 "...it does not rely on other peculiarities..." instead of "...it does not really on other peculiarities..."
>> - line 1352 "... it provides us with a result..." instead of "... it provides us with in a result..." 
>> - line 1389 "...by only considering bars on Pi_0^1 trees ..." Please explain why Pi_0^1-trees?


===================
Review #302C
===================

>> Paper summary
>> This paper defines realizers for the Fan Theorem in Higher Order Logic equipped with the basic data types of natural numbers, booleans, and lists.  At the same time it is shown that Weak König's Lemma, its contraposition, is not realized, thus asserting constructivity.

>> Assessment of the paper (significance, strengths, weakenesses)
>> This paper has some rough edges, it would definitely have benefited from more proof reading and some spell checking.  Some definitions (e.g. Notation 19) were incomprehensible.

>> The proofs are very rigorous up to including Section 3 but then become more informal; I could not check the latter ones for correctness.

>> I am not much of an expert on the topic of the paper, so I cannot judge the novelty of its results.

>> In my opinion, the paper would benefit from a formalization in a proof assistant, as it employs proofs about reduction sequences of terms and there could be subtle issues.

>> Comments for authors
>> There are many misspellings in this paper.  Using a spell-checker would have paid off!

>> l150ff  I misunderstood this description of the Fan Theorem on the first reading. Try explain a bit more carefully the concept of the "complement of a tree". In particular, this complement is closed under prefix dropping and under list extension.

>> "A set C whose complement is a tree".  A complement can only be taken with respect to a totality or universe, so you should say what C is a subset of.

>> l259 Spurious ":" in "Γ ⊢[:] t : S"

>> l322 "need an environment ρ which covers Γ"
>> You need that already to define ⟦Γ ⊢ t : S⟧, so you should discuss environments before the semantics.

>> l317 "(x ∈ ⟦S⟧) ↦ [(]xs ∈ ⟦Γ⟧)..." is in the wrong order, should be

>>   (ρ ∈ ⟦Γ⟧) ↦ (s ∈ ⟦S⟧) ↦ ⟦Γ,x:S ⊢ t : T⟧(ρ,x↦s)

>> l329 "ρ(t)" this is easy to confuse with a similar notation introduced later (l422), why not just ⟦t⟧ρ ?

>> l377ff This paragraph is too high level, cannot be understood based on the context introduced so far.

>> l403 "mention[n]ed"

>> l405 What is meant by "degree"?  And does it matter for this paper?

>> l460 "Following the Brouwer-Heyting-Kolmogorov [interpretation]"

>> l493 Is the "∀σ ∈ O" intended?  σ is already bound (in l492).

>> l510 "equip[p]ed"

>> l539 Is anything won by introducing notation ⌜s⌝_σ for ⌜s⌝^σ ?

>> l545 "The realizability relation then defines, for a syntactic proposition ⊢ φ : Prop, an object ⟦φ⟧ ∈ ⟦Prop⟧." That does not sound right.  Realizability rather produces t ∈ ⟦φ⟧.

>> l574f It is unclear what is being defined here, since ⊪ is undefined yet, so it cannot be used to define ⟦φ⟧.

>> l582 "obje[c]t"

>> l712 "[] : S(List(S))[]"  looks wrong..

>> l739 "canonical[l]y"

>> l785 "proposition[n]al"

>> l823 What is "WFT"?

>> l827 "som[m]e"

>> l871 "Weak Fan Theorem"
>> Why are we suddenly talking about "weak" Fan Theorem? This has never been mentioned, and it is not clear what distinguishes it from the "strong" Fan Theorem.

>> l880ff I checked the proof in the appendix but it still feels very non-rigorous. Is reasoning about reduction sequences the best way to establish continuity?

>> References

>> l1408 "Begr[u]ündung"

>> l1451 Why is this paper title in UPPERCASE?

>> Appendix

>> l1734 "cho[o]se", twice

>> Questions for authors’ response
>> 1. Evidence frames look very similar to cartesian closed categories (CCCs).
>>   Could you work with a certain class of CCCs instead?
>>  (Which would be a more standard notion.)

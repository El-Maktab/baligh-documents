---
type: paper
citekey: alhafniEnhancingTextEditing2025a
title: "Enhancing Text Editing for Grammatical Error Correction: Arabic as a Case Study"
authors: Bashar Alhafni, Nizar Habash
year: 2025
publication: ""
url: https://aclanthology.org/2025.acl-long.875/
doi: 10.18653/v1/2025.acl-long.875
aliases: ["Enhancing Text Editing for Grammatical Error Correction: Arabic as a Case Study", "@alhafniEnhancingTextEditing2025a"]
tags:
  - ArabicNLP
  - GRAD-RESEARCH
  
status: Unread
pdf_link: 
---

# Enhancing Text Editing for Grammatical Error Correction: Arabic as a Case Study

> [!info] Metadata
> **Authors:** Bashar Alhafni, Nizar Habash
> **Venue:**  (2025)
> **Online:** [URL](https://aclanthology.org/2025.acl-long.875/) | [DOI](https://doi.org/10.18653/v1/2025.acl-long.875)

## 🚀 Abstract
> [!abstract] Abstract
> Text editing frames grammatical error correction (GEC) as a sequence tagging problem, where edit tags are assigned to input tokens, and applying these edits results in the corrected text. This approach has gained attention for its efficiency and interpretability. However, while extensively explored for English, text editing remains largely underexplored for morphologically rich languages like Arabic. In this paper, we introduce a text editing approach that derives edit tags directly from data, eliminating the need for language-specific edits. We demonstrate its effectiveness on Arabic, a diglossic and morphologically rich language, and investigate the impact of different edit representations on model performance. Our approach achieves SOTA results on two Arabic GEC benchmarks and performs on par with SOTA on two others. Additionally, our models are over six times faster than existing Arabic GEC systems, making our approach more practical for real-world applications. Finally, we explore ensemble models, demonstrating how combining different models leads to further performance improvements. We make our code, data, and pretrained models publicly available.


## 🖍️ Annotations



> Enhancing Text Editing for Grammatical Error Correction:  Arabic as a Case Study [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=6NZVZ5TA)





> Text editing frames grammatical error correction (GEC) as a sequence tagging problem,  where edit tags are assigned to input tokens,  and applying these edits results in the corrected  text. [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=7T2954EX)





> This approach has gained attention for  its efficiency and interpretability [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=YA7XCCGA)





> text  editing remains largely underexplored for morphologically rich languages like Arabic. [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=HP3PQAAZ)





> Our approach achieves SOTA results on two Arabic  GEC benchmarks and performs on par with  SOTA on two others. [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=2L8Y4HNV)





> GEC has applications in both writing assistance for native speakers (L1) and language learning for second-language (L2) [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=23KUWUFM)





> https://github.com/CAMeL-Lab/text-editing [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=24U33NXH)





> However, most popular text editing approaches require effort to design language-specific edit tag sets [(p. )](zotero://open-pdf/library/items/VLAF8Z6C?page=&annotation=TXDPB4GC)




![[attachments/image-3-x57-y509.png]]






> We adopt a text editing approach to GEC and frame the task as a sequence tagging problem. Formally, given an input erroneous sequence x =  x  1  ,x  2  , ..., x  n  , the goal is to assign a sequence of edit operations e = e  1  ,e  2  , ..., e  n  ;e  i  ∈ E, where E is the edit vocabulary, such that applying edit e  i  on the input token x  i  at each position i would result in the corrected sequence y = y  1  ,y  2  , ..., y  m  . In the next two sections, we describe how we extract the edits and the edit representations we use to build our edit-based taggers. [(p. 3)](zotero://open-pdf/library/items/VLAF8Z6C?page=3&annotation=S8IACZZB)





> The edit representation directly influences the size of the edit vocabulary (|E|), creating an impor2  Arabic HSB transliteration (Habash et al., 2007).  17894 tant trade-off: a larger vocabulary offers more precise corrections but increases model complexity, whereas a smaller vocabulary enhances learning efficiency at the cost of expressiveness. Controlling |E| is crucial to avoid the explosion of possible edits, which is particularly important when working with morphologically rich languages like Arabic. We explore four methods for controlling |E| while maintaining sufficient coverage. [(p. 3)](zotero://open-pdf/library/items/VLAF8Z6C?page=3&annotation=CTY69VZR)





> Edit Segregation Both the MSA GEC datasets  we report on, QALB-2014 and ZAEBUC, exhibit high frequencies of punctuation errors, with punctuation accounting for 40% of the errors in QALB2014 and 15% in ZAEBUC training sets (Alhafni et al., 2023). To reduce the number of edits that the MSA GEC models must learn, we segregate punctuation edits from non-punctuation edits. This results in two versions of the data: one where only non-punctuation errors are tagged, and another where all non-punctuation errors are corrected, leaving only punctuation errors for the model to focus on. Note that this separation is applied only to the MSA GEC datasets we report on, and not to the DA GEC dataset. Additionally, this approach requires training two systems to be applied sequentially during inference: the first system fixes nonpunctuation errors, while the second system addresses only punctuation errors. [(p. 4)](zotero://open-pdf/library/items/VLAF8Z6C?page=4&annotation=37P82ZYU)




## 📝 Personal Notes
* ## 🔗 Related
* [Zotero Link]()
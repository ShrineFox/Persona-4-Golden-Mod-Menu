[sel YESNO_SEL]
[f 0 5 -258][f 2 1]Yes[e]
[f 0 5 -258][f 2 1]No[e]

[sel PAY_SEL]
[f 0 5 -258][f 2 1]Pay[e]
[f 0 5 -258][f 2 1]Don't pay[e]

[msg NEED_GOHOM]
[f 0 5 -258][f 2 1]> You don't have a [f 2 5 3 -1 0] or [f 2 5 3 -1 1]...[n][f 1 1][e]
[f 0 5 -258][f 2 1]> It's too dangerous to call the fox without[n]
an item that can return it to safety.[n][f 1 1][e]

[msg NEED_BRANCH]
[f 0 5 -258][f 2 1]> You don't have a [f 2 5 3 -1 0]...[n][f 1 1][e]
[f 0 5 -258][f 2 1]> It's too dangerous to call the fox without[n]
an item that can return it to safety.[n][f 1 1][e]

[msg ITEM_USED]
[f 0 5 -258][f 2 1]> Used 1 [f 2 5 3 -1 0].[n][f 1 1][e]

[msg FOX_FIRST_BAD]
[f 0 5 -258][f 2 1]> It followed you all the way here[n]after all...[n][f 1 1][e]
[f 0 5 -258][f 2 1]> The strange atmosphere seems to be[n]making him uncomfortable...[n][f 1 1][e]

[msg FOX_FIRST_NORMAL]
[f 0 5 -258][f 2 1]> It followed you all the way here[n]after all...[n][f 1 1][e]
[f 0 5 -258][f 2 1]> However, he seems not to mind the[n]strange atmosphere...[n][f 1 1][e]

[msg FOX_FIRST_GOOD]
[f 0 5 -258][f 2 1]> It followed you all the way here[n]after all...[n][f 1 1][e]
[f 0 5 -258][f 2 1]> It seems to be happy to come along,[n]even in this strange atmosphere...[n][f 1 1][e]

[msg FOX_FIRST_KUMA [Teddie]]
[f 0 5 -258][f 2 1][f 4 6 8 3 0 1]Hmm!? What's that weird thing with[n]the red apron?[n][f 1 1][e]
[f 0 5 -258][f 2 1][f 4 6 8 5 0 1]Huh? Sensei's helper?[n][f 1 1][e]
[f 0 5 -258][f 2 1]Amazing! Sensei sure knows some[n]neat people![n][f 1 1][e]
[f 0 5 -258][f 2 1][f 4 6 8 2 0 1]Nice to meet you, Mr. Fox![n]Let's both do our best![n][f 1 1][e]

[msg FOX_TALK_BAD [Fox]]
[f 0 5 -258][f 2 1][f 4 6 9 1 0 1]Grrrr...[n][f 1 1][e]

[msg FOX_TALK_NORMAL [Fox]]
[f 0 5 -258][f 2 1][f 4 6 9 1 0 1]......[n][f 1 1][e]

[msg FOX_TALK_GOOD [Fox]]
[f 0 5 -258][f 2 1][f 4 6 9 1 0 1]*yip*[n][f 1 1][e]

[sel FOX_SEL]
[f 0 5 -258][f 2 1]Ask for healing[e]
[f 0 5 -258][f 2 1]Pat its head[e]
[f 0 5 -258][f 2 1]Don't do anything[e]

[msg FOX_FEEL_BAD]
[f 0 5 -258][f 2 1]> He doesn't seem too pleased...[n][f 1 1][e]

[msg FOX_FEEL_NORMAL]
[f 0 5 -258][f 2 1]> He doesn't seem too upset...[n][f 1 1][e]

[msg FOX_FEEL_GOOD]
[f 0 5 -258][f 2 1]> He seems to be enjoying it...[n][f 1 1][e]

[msg RECOVER_OK]
[f 0 5 -258][f 2 1]> It seems you need [f 0 1 1][f 2 4 0] yen[f 0 1 0][n]for healing...[n]   (You currently have: [f 0 1 1][f 2 4 1] yen[f 0 1 0])[n][f 1 1][e]

[msg RECOVER_OK_GOHOM]
[f 0 5 -258][f 2 1]> It seems you need [f 0 1 1][f 2 4 0] yen[f 0 1 0] and [f 0 1 3]1 [f 2 5 3 -1 2][f 0 1 0]
[n]for healing...[n]   (You currently have: [f 0 1 1][f 2 4 1] yen[f 0 1 0] and [f 0 1 3][f 2 4 3] [f 2 5 3 -1 2][f 0 1 0])[n][f 1 1][e]

[msg RECOVER_NOT_NEED]
[f 0 5 -258][f 2 1]> You don't need healing right now...[n][f 1 1][e]

[msg RECOVER_NO_MONEY]
[f 0 5 -258][f 2 1]> You don't have enough money...[n][f 1 1][e]

[msg RECOVER_START]
[f 0 5 -258][f 2 1]> The fox took out a mysterious leaf![n][f 1 1][e]

[msg RECOVER_DONE]
[f 0 5 -258][f 2 1]> Everyone's SP has been recovered![n][f 1 1][e]
[f 0 5 -258][f 2 1]> The fox retreated.[n][f 1 1][e]

[msg FOX_GIFT [Fox]]
[f 0 5 -258][f 2 1][f 4 6 9 1 0 1]*yip*[n][f 1 1][e]

[msg GET_ITEM_FOX]
[f 0 5 -258][f 2 1]> The fox gave you[n][f 2 5 3 -1 0] x [f 2 4 1].[n][f 1 1][e]

[msg FOX_BAN]
[f 0 5 -258][f 2 1]> Something is preventing you from[n]calling the fox...[n][f 1 1][e]

[msg FOX_CALL]
[f 0 5 -258][f 2 1]> You called for the fox.[n][f 1 1][e]
[f 0 5 -258][f 2 1]> ...[n][f 1 1][e]

[msg FOX_CALL_2]
[f 0 5 -258][f 2 1]> ...![n][f 1 1][e]
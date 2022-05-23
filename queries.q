/*
(P1 concrete) 
*/
A[](b_recv<=ep_sent)

/*
(P1 abstract) 
*/
A[]ballots_diff>=0

/*
(P2-under concrete/abstract) / (P2-under honest concrete/abstract) 
*/
A[] (Time.end and (VoterL(1).sent_renv or VoterL(1).passed_renv) imply recorded_link[1]==VoterL(1).pref_cand)

/*
(P2-over concrete/abstract) 
*/
E[] (Time.end and (VoterL(1).sent_renv or VoterL(1).passed_renv) imply recorded_link[1]==VoterL(1).pref_cand)

/*
(P3-under concrete/abstract) / (P3-under strategy concrete/abstract) 
*/
A[] forall(i:v_t)(Time.end and vlist[i].mo_addr==-1 and vpref[i]==1 imply recorded_link[i]!=1)

/*
(P3-over concrete/abstract) 
*/
E[] forall(i:v_t)(Time.end and vlist[i].mo_addr==-1 and vpref[i]==1 imply recorded_link[i]!=1)
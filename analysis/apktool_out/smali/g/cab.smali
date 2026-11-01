.class public final Lg/cab;
.super Lg/eiy;
.source "SourceFile"


# instance fields
.field public final g:Z

.field public final h:Lg/gcv;

.field public i:Lg/fza;

.field public j:Lg/buj;

.field public y:Lg/eys;

.field public final z:Lg/fza;


# direct methods
.method public constructor <init>(Lg/eys;Lg/gcv;Lg/fza;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lg/eiy;-><init>(Lg/eys;)V

    iput-object p2, p0, Lg/cab;->h:Lg/gcv;

    iput-object p3, p0, Lg/cab;->z:Lg/fza;

    iput-boolean p4, p0, Lg/cab;->g:Z

    if-eqz p3, :cond_1

    invoke-static {p3}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Lg/bgw;

    new-instance p2, Lg/eii;

    new-instance p4, Lg/evf;

    invoke-direct {p4, p1}, Lg/evf;-><init>(Lg/bgw;)V

    invoke-direct {p2, p4}, Lg/eii;-><init>(Lg/evf;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lg/eiy;->aa:Lg/eii;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/eiy;->ab:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    if-nez v0, :cond_0

    const-string v0, "-"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lg/eys;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 11

    iget-object v0, p1, Lg/grb;->l:Lg/ejh;

    iget-object v1, p1, Lg/grb;->m:Lg/hed;

    iget-object v2, p0, Lg/cab;->z:Lg/fza;

    invoke-static {v2}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, v3, Lg/ccm;->bp:I

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lg/eiy;->ac()I

    move-result v3

    :goto_1
    check-cast p2, Lg/grs;

    invoke-virtual {p2, v3}, Lg/grs;->ac(I)Lg/grs;

    iget-object v3, p0, Lg/cab;->h:Lg/gcv;

    iget-object v3, v3, Lg/gcv;->c:Lg/fza;

    sget-object v5, Lg/acq;->x:Lg/acq;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v5}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/dhu;

    if-eqz v3, :cond_2

    iget-object v5, v0, Lg/ejh;->b:Lg/gez;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loop"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lg/dhu;->a:Lg/gcv;

    iget v3, v3, Lg/gcv;->a:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v5, Lg/gez;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v3

    const-string v5, ": "

    invoke-interface {v3, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_2
    iget-object v3, p0, Lg/eiy;->aa:Lg/eii;

    const/16 v5, 0x7d

    if-nez v3, :cond_3

    const-string v0, "while (true) {"

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    invoke-virtual {p2, v5}, Lg/grs;->ad(C)Lg/grs;

    return-void

    :cond_3
    invoke-virtual {v3}, Lg/eii;->j()Lg/eek;

    move-result-object v6

    invoke-static {p2, v6}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    new-instance v7, Lg/fto;

    iget-boolean v8, p1, Lg/grb;->k:Z

    invoke-direct {v7, v0, v8}, Lg/grb;-><init>(Lg/ejh;Z)V

    iget-object v0, p0, Lg/cab;->j:Lg/buj;

    const-string v8, ") {"

    if-eqz v0, :cond_7

    instance-of v2, v0, Lg/k;

    const-string v9, "for ("

    if-eqz v2, :cond_4

    check-cast v0, Lg/k;

    invoke-interface {p2, v9}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v2, v0, Lg/k;->_l:Lg/eek;

    sget-object v4, Lg/zw;->INLINE:Lg/zw;

    invoke-virtual {p1, v2, p2, v4}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    const-string v2, "; "

    invoke-interface {p2, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    new-instance v9, Lg/dfa;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lg/dfa;-><init>(I)V

    invoke-virtual {v7, p2, v9, v3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    invoke-interface {p2, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v0, v0, Lg/k;->_m:Lg/eek;

    invoke-virtual {p1, v0, p2, v4}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    invoke-interface {p2, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v1, v6}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    invoke-virtual {p2, v5}, Lg/grs;->ad(C)Lg/grs;

    return-void

    :cond_4
    instance-of v2, v0, Lg/cdd;

    if-eqz v2, :cond_6

    check-cast v0, Lg/cdd;

    invoke-interface {p2, v9}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v2, v0, Lg/cdd;->bf:Lg/eek;

    iget-object v2, v2, Lg/eek;->ai:Lg/gks;

    iget-object v2, v2, Lg/gks;->a:Lg/vm;

    invoke-virtual {v2}, Lg/vm;->u()Lg/ejb;

    move-result-object v2

    iget-boolean v3, v2, Lg/ejb;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "final "

    invoke-interface {p2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_5
    iget-object v3, v2, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p1, p2, v3}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    const/16 v3, 0x20

    invoke-interface {p2, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p1, p2, v2}, Lg/grb;->t(Lg/eos;Lg/ejb;)V

    const-string v2, " : "

    invoke-interface {p2, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v0, v0, Lg/cdd;->bg:Lg/eek;

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {p2, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v1, v6}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    invoke-virtual {p2, v5}, Lg/grs;->ad(C)Lg/grs;

    return-void

    :cond_6
    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unknown loop type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-boolean v0, p0, Lg/cab;->g:Z

    if-eqz v0, :cond_a

    const-string v0, "do {"

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v1, v6}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    invoke-static {v2}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget v4, p1, Lg/ccm;->bp:I

    :goto_2
    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lg/eiy;->ac()I

    move-result v4

    :goto_3
    invoke-virtual {p2, v4}, Lg/grs;->ac(I)Lg/grs;

    const-string p1, "} while ("

    invoke-interface {p2, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    new-instance p1, Lg/dfa;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/dfa;-><init>(I)V

    invoke-virtual {v7, p2, p1, v3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    const-string p1, ");"

    invoke-interface {p2, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_a
    const-string v0, "while ("

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    new-instance v0, Lg/dfa;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lg/dfa;-><init>(I)V

    invoke-virtual {v7, p2, v0, v3}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    invoke-interface {p2, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v1, v6}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v0, p0, Lg/cab;->y:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    invoke-virtual {p2, v5}, Lg/grs;->ad(C)Lg/grs;

    return-void
.end method

.method public final f(Lg/amj;Lg/amj;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOOP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/cab;->h:Lg/gcv;

    iget v1, v1, Lg/gcv;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/cab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/eiy;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/cab;->i:Lg/fza;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lg/eiy;->ab:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lg/cab;->y:Lg/eys;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

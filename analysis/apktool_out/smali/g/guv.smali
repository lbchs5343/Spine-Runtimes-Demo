.class public final Lg/guv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eue;


# instance fields
.field public a:Lg/fza;

.field public b:Ljava/util/List;

.field public f:Lg/guv;

.field public g:Ljava/util/List;

.field public final h:I

.field public final i:Ljava/util/List;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/guv;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/guv;->j:Z

    iput p3, p0, Lg/guv;->h:I

    iput-object p1, p0, Lg/guv;->i:Ljava/util/List;

    iput-object p2, p0, Lg/guv;->b:Ljava/util/List;

    new-instance p2, Lg/agx;

    const/16 p3, 0x17

    invoke-direct {p2, p3, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/guv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->aa:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lg/guv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/guv;

    iget v2, p0, Lg/guv;->h:I

    iget v3, p1, Lg/guv;->h:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg/guv;->i:Ljava/util/List;

    iget-object v3, p1, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/guv;->b:Ljava/util/List;

    iget-object p1, p1, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-object v1, p0, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final k(Ljava/util/LinkedList;Lg/fza;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/LinkedList;)V
    .locals 9

    iget-object v0, p2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lg/fza;

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v2, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v2, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lg/acq;->at:Lg/acq;

    iget-object v2, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/frs;

    iget-object v1, v1, Lg/frs;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gcv;

    iget-object v5, v3, Lg/gcv;->c:Lg/fza;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/exw;

    iget-object v6, v5, Lg/exw;->b:Lg/fza;

    if-ne v6, v4, :cond_3

    iget-object v5, v5, Lg/exw;->a:Lg/fza;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v1, Lg/egl;

    const/16 v3, 0xb

    invoke-direct {v1, v3, p4}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v1}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lg/elt;

    sget-object v2, Lg/dun;->LOOP_EXIT:Lg/dun;

    invoke-direct {v1, p2, v4, v2}, Lg/elt;-><init>(Lg/fza;Lg/fza;Lg/dun;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-static {v4, v2}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lg/guv;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v8}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lg/guv;->k(Ljava/util/LinkedList;Lg/fza;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    goto/16 :goto_0

    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, p1, v8}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object p1

    sget-object p3, Lg/csv;->EXC_TOP_SPLITTER:Lg/csv;

    iget-object p4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p4, p3}, Lg/sm;->g(Lg/csv;)Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    new-instance p4, Lg/brj;

    const/16 p5, 0x17

    invoke-direct {p4, p5}, Lg/brj;-><init>(I)V

    invoke-static {p1, p4}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/fza;

    sget-object p5, Lg/acq;->aa:Lg/acq;

    iget-object p4, p4, Lg/lh;->l:Lg/sm;

    invoke-virtual {p4, p5}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p4

    check-cast p4, Lg/guv;

    if-nez p4, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v7, p4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    goto :goto_3

    :cond_a
    iget-object p5, p4, Lg/guv;->a:Lg/fza;

    iget-object v8, v2, Lg/guv;->a:Lg/fza;

    if-eq p5, v8, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p3, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/guv;

    invoke-virtual {p3, v3, v6, v7}, Lg/guv;->n(Ljava/util/LinkedList;Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    goto :goto_4

    :cond_d
    :goto_5
    move-object p1, v3

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    goto/16 :goto_0

    :cond_e
    if-nez v1, :cond_f

    new-instance p1, Lg/elt;

    sget-object p3, Lg/dun;->PREMATURE_EXIT:Lg/dun;

    invoke-direct {p1, p2, v4, p3}, Lg/elt;-><init>(Lg/fza;Lg/fza;Lg/dun;)V

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    if-ne v1, v4, :cond_10

    new-instance p1, Lg/elt;

    sget-object p3, Lg/dun;->TRUE_FALLTHROUGH:Lg/dun;

    invoke-direct {p1, p2, v4, p3}, Lg/elt;-><init>(Lg/fza;Lg/fza;Lg/dun;)V

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    new-instance p1, Lg/gck;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected code execution branch taken during try edge resolution: blk="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",successor="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lg/guv;->k(Ljava/util/LinkedList;Lg/fza;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    goto :goto_5

    :cond_12
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lg/guv;->i:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/guv;

    iget-object v2, v2, Lg/guv;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/HashMap;
    .locals 11

    invoke-virtual {p0}, Lg/guv;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aea;

    iget-object v3, v2, Lg/aea;->i:Lg/fza;

    iget-object v4, v2, Lg/aea;->j:Lg/guv;

    iget-object v5, v4, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v5, v6, :cond_0

    sget-object v4, Lg/aea;->a:Lg/dba;

    const-string v5, "No support yet for finding bottom block of try body with multipe inner trys"

    invoke-interface {v4, v5}, Lg/dba;->k(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v5, v4, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v4, Lg/guv;->g:Ljava/util/List;

    invoke-static {v4}, Lg/evh;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/guv;

    :goto_1
    iget-object v5, v2, Lg/aea;->i:Lg/fza;

    iget-object v5, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    sget-object v8, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v9, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    sget-object v10, Lg/acq;->aa:Lg/acq;

    iget-object v9, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v10}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v9

    check-cast v9, Lg/guv;

    if-ne v9, v4, :cond_4

    move-object v7, v6

    :cond_5
    if-eqz v7, :cond_2

    :cond_6
    :goto_3
    if-nez v7, :cond_7

    iget-object v4, v3, Lg/fza;->e:Ljava/util/List;

    new-instance v5, Lg/eio;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lg/eio;-><init>(Lg/guv;I)V

    invoke-static {v4, v5}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lg/guv;->a:Lg/fza;

    :cond_7
    new-instance v4, Lg/elt;

    sget-object v5, Lg/dun;->HANDLER:Lg/dun;

    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    invoke-direct {v4, v7, v3, v5, v2}, Lg/elt;-><init>(Lg/fza;Lg/fza;Lg/dun;Lj$/util/Optional;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0, v2, v3}, Lg/guv;->n(Ljava/util/LinkedList;Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/elt;

    iget-object v3, v2, Lg/elt;->c:Lg/fza;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    return-object v1
.end method

.method public final n(Ljava/util/LinkedList;Ljava/util/ArrayList;Ljava/util/LinkedList;)V
    .locals 7

    invoke-virtual {p0}, Lg/guv;->l()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aea;

    iget-object v1, v1, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-interface {v4, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lg/ffb;->y(Ljava/util/List;)Lg/fza;

    move-result-object v3

    invoke-virtual {p3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lg/guv;->k(Ljava/util/LinkedList;Lg/fza;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lg/guv;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Merged into "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/guv;->f:Lg/guv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TryCatch #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/guv;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->i:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blocks: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->b:Ljava/util/List;

    invoke-static {v2, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->a:Lg/fza;

    if-eqz v1, :cond_1

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->a:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lg/guv;->f:Lg/guv;

    if-eqz v1, :cond_2

    const-string v1, ", outer: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->f:Lg/guv;

    iget v1, v1, Lg/guv;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ", inners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/guv;->g:Ljava/util/List;

    new-instance v3, Lg/coq;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lg/coq;-><init>(I)V

    invoke-static {v1, v2, v3}, Lg/evh;->d(Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

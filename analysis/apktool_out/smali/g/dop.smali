.class public final Lg/dop;
.super Lg/bnf;
.source "SourceFile"


# virtual methods
.method public final b()V
    .locals 14

    iget-object v0, p0, Lg/bnf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkb;

    invoke-virtual {v1}, Lg/fkb;->e()Lg/gvg;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkb;

    iget-object v1, v1, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fkb;

    iget-object v3, v1, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, v1, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_f

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fkb;

    invoke-virtual {v0}, Lg/fkb;->e()Lg/gvg;

    move-result-object v1

    invoke-virtual {v1}, Lg/gvg;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/eek;

    iget-object v7, v7, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/fmi;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v9, v7

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v2, v1, Lg/gvg;->e:I

    add-int/2addr v2, v6

    iput v2, v1, Lg/gvg;->e:I

    iget v2, v1, Lg/gvg;->b:I

    add-int/2addr v2, v6

    iput v2, v1, Lg/gvg;->b:I

    iget-object v1, v0, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v0}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    iget-object v6, v2, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v0}, Lg/fkb;->e()Lg/gvg;

    move-result-object v0

    iget-boolean v7, v2, Lg/cxc;->d:Z

    if-nez v7, :cond_4

    new-instance v4, Lg/aqf;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v0, v5}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v0}, Lg/gvg;->i()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    iget-object v12, v10, Lg/eek;->aj:Ljava/util/List;

    sget-object v13, Lg/cai;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v13, v11

    if-eq v11, v8, :cond_b

    const/4 v13, 0x2

    if-eq v11, v13, :cond_b

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_6

    :cond_5
    iget-object v10, v10, Lg/eek;->ai:Lg/gks;

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    move-object v10, v5

    :goto_4
    if-nez v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gks;

    invoke-virtual {v13, v10}, Lg/gks;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/lit8 v9, v9, 0x1

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gsh;

    instance-of v13, v12, Lg/gks;

    if-nez v13, :cond_9

    goto :goto_5

    :cond_9
    check-cast v12, Lg/gks;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v11, Lg/agx;

    const/4 v12, 0x7

    invoke-direct {v11, v12, v2}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v10, v11}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v10, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    instance-of v11, v10, Lg/gks;

    if-eqz v11, :cond_c

    check-cast v10, Lg/gks;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_6
    iget v4, v0, Lg/gvg;->e:I

    add-int/2addr v4, v9

    iput v4, v0, Lg/gvg;->e:I

    iget-object v5, v0, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_e

    new-instance v4, Lg/aqf;

    const/4 v0, 0x2

    invoke-direct {v4, v1, v2, v5, v0}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    goto :goto_7

    :cond_e
    new-instance v4, Lg/aqf;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v0, v5}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    :goto_7
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_f
    new-instance v0, Lg/gck;

    const-string v1, "Orphaned traverser state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lg/gck;

    const-class v1, Lg/dop;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected to find block info within "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

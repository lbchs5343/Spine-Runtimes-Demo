.class public final Lg/fvq;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fvq;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fvq;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/guv;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lg/guv;->g:Ljava/util/List;

    iget-object v1, p0, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lg/guv;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/guv;

    invoke-static {v1}, Lg/fvq;->b(Lg/guv;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public static c(Ljava/util/ArrayList;Lg/fza;)V
    .locals 3

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v2, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lg/fvq;->c(Ljava/util/ArrayList;Lg/fza;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Lg/hed;Lg/guv;)Lg/bqz;
    .locals 21

    move-object/from16 v1, p1

    iget-boolean v0, v1, Lg/guv;->j:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aea;

    invoke-virtual {v3}, Lg/aea;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lg/guv;->m()Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v2

    new-instance v2, Lg/gnq;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v2, v1, v5}, Lg/gnq;-><init>(Lg/guv;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    add-int/lit8 v9, v8, 0x1

    move v10, v9

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    new-instance v11, Lg/fmm;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/elt;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    invoke-direct {v11, v12, v13}, Lg/fmm;-><init>(Lg/elt;Lg/fza;)V

    new-instance v12, Lg/fmm;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/elt;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    invoke-direct {v12, v13, v14}, Lg/fmm;-><init>(Lg/elt;Lg/fza;)V

    new-instance v13, Lg/bne;

    invoke-direct {v13, v11, v12}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move v8, v9

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, v2, Lg/gnq;->b:Ljava/util/ArrayList;

    if-ge v8, v9, :cond_b

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/bne;

    iget-object v12, v9, Lg/bne;->a:Ljava/lang/Object;

    check-cast v12, Lg/fmm;

    iget-object v9, v9, Lg/bne;->b:Ljava/lang/Object;

    check-cast v9, Lg/fmm;

    iget-object v13, v12, Lg/fmm;->b:Lg/fza;

    iget-object v12, v12, Lg/fmm;->a:Lg/elt;

    iget-object v14, v9, Lg/fmm;->b:Lg/fza;

    iget-object v9, v9, Lg/fmm;->a:Lg/elt;

    invoke-static {v13, v14}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v14, v13}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_7
    :goto_5
    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v13, v4, v7

    aput-object v14, v4, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v15, :cond_8

    aget-object v15, v4, v14

    invoke-static {v15}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x2

    goto :goto_6

    :cond_8
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v4

    if-eq v13, v4, :cond_9

    move-object v10, v12

    goto :goto_7

    :cond_9
    move-object v10, v9

    :goto_7
    if-ne v13, v4, :cond_a

    goto :goto_8

    :cond_a
    move-object v12, v9

    :goto_8
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    new-instance v4, Lg/bne;

    invoke-direct {v4, v12, v10}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, v2, Lg/gnq;->a:Ljava/util/HashMap;

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/elt;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    new-instance v9, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/elt;

    if-ne v5, v13, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    invoke-virtual {v5}, Lg/elt;->f()Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v13}, Lg/elt;->f()Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_c

    :cond_d
    const/4 v15, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v15, 0x1

    :goto_d
    if-ne v14, v8, :cond_f

    if-eqz v15, :cond_f

    goto :goto_b

    :cond_f
    sget-object v15, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    iget-object v7, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v15}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_10
    :goto_e
    const/4 v7, 0x0

    goto :goto_b

    :cond_11
    iget-object v7, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v15}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v9, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_e

    :cond_12
    iget-object v7, v8, Lg/fza;->j:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    iget-object v15, v14, Lg/fza;->j:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual {v15}, Ljava/util/BitSet;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v7, v15}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object v15, v8

    :goto_f
    if-eqz v15, :cond_14

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v15, v15, Lg/fza;->aa:Lg/fza;

    goto :goto_f

    :cond_14
    :goto_10
    if-eqz v14, :cond_16

    invoke-virtual {v7, v14}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_11

    :cond_15
    iget-object v14, v14, Lg/fza;->aa:Lg/fza;

    goto :goto_10

    :cond_16
    const/4 v14, 0x0

    :goto_11
    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_18
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/elt;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/bne;

    iget-object v12, v9, Lg/bne;->b:Ljava/lang/Object;

    if-ne v12, v7, :cond_19

    goto :goto_13

    :cond_1a
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/elt;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/bne;

    iget-object v10, v15, Lg/bne;->b:Ljava/lang/Object;

    if-ne v10, v13, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v10, 0x1

    goto :goto_15

    :cond_1d
    const/4 v15, 0x0

    :goto_16
    if-eqz v15, :cond_1e

    iget-object v10, v15, Lg/bne;->a:Ljava/lang/Object;

    if-ne v10, v7, :cond_1e

    :goto_17
    const/4 v10, 0x1

    goto :goto_14

    :cond_1e
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    if-nez v10, :cond_1f

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_20
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    :goto_18
    const/4 v10, 0x1

    goto :goto_12

    :cond_21
    invoke-static {v9}, Lg/ffb;->y(Ljava/util/List;)Lg/fza;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_22
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/elt;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_1b

    :cond_25
    iget-object v7, v5, Lg/elt;->c:Lg/fza;

    const/4 v9, 0x1

    move-object/from16 v8, p0

    invoke-static {v8, v7, v9}, Lg/ffb;->bg(Lg/hed;Lg/fza;Z)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v7

    if-eqz v7, :cond_27

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_1a

    :cond_26
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v9

    :goto_1a
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    new-instance v0, Lg/gck;

    const-string v1, "Could not find bottom clean successor for isolated try edge"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_1b
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2f

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bne;

    iget-object v7, v5, Lg/bne;->a:Ljava/lang/Object;

    check-cast v7, Lg/elt;

    iget-object v5, v5, Lg/bne;->b:Ljava/lang/Object;

    check-cast v5, Lg/elt;

    invoke-virtual {v7}, Lg/elt;->f()Z

    move-result v8

    iget-object v9, v2, Lg/gnq;->c:Lg/guv;

    if-eqz v8, :cond_29

    iget-object v8, v9, Lg/guv;->i:Ljava/util/List;

    invoke-virtual {v7}, Lg/elt;->e()Lg/aea;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto :goto_1c

    :cond_29
    invoke-virtual {v5}, Lg/elt;->f()Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, v9, Lg/guv;->i:Ljava/util/List;

    invoke-virtual {v5}, Lg/elt;->e()Lg/aea;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto :goto_1c

    :cond_2a
    invoke-virtual {v7}, Lg/elt;->g()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-virtual {v5}, Lg/elt;->g()Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_1c

    :cond_2b
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2c
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2d
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_2e
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/util/List;

    :goto_1e
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_2f
    invoke-virtual {v1}, Lg/guv;->m()Ljava/util/HashMap;

    move-result-object v0

    new-instance v5, Lg/dda;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Lg/dda;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v5, Lg/dda;->b:Ljava/util/HashMap;

    if-eqz v7, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/elt;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    invoke-virtual {v12}, Lg/elt;->g()Z

    move-result v14

    if-eqz v14, :cond_31

    new-instance v14, Lg/brj;

    const/16 v15, 0x18

    invoke-direct {v14, v15}, Lg/brj;-><init>(I)V

    invoke-static {v11, v14}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v14

    if-nez v14, :cond_30

    goto :goto_21

    :cond_30
    const/4 v14, 0x0

    goto :goto_22

    :cond_31
    :goto_21
    const/4 v14, 0x1

    :goto_22
    new-instance v15, Lg/dxx;

    const/4 v9, 0x5

    invoke-direct {v15, v7, v9}, Lg/dxx;-><init>(Lg/fza;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v13, v14, v15}, Lg/ffb;->bm(Ljava/util/ArrayList;Lg/fza;ZLjava/util/function/Predicate;)V

    new-instance v15, Lg/brj;

    move-object/from16 p0, v0

    const/16 v0, 0x19

    invoke-direct {v15, v0}, Lg/brj;-><init>(I)V

    invoke-static {v9, v15}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_34

    :cond_32
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fza;

    iget-object v15, v15, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_24
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_36

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lg/fza;

    move-object/from16 v18, v4

    sget-object v4, Lg/acq;->aa:Lg/acq;

    move-object/from16 v20, v6

    iget-object v6, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v4}, Lg/sm;->j(Lg/fky;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v0, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/guv;

    :cond_35
    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    goto :goto_24

    :cond_36
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    if-nez v0, :cond_37

    :goto_25
    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    goto :goto_23

    :cond_37
    iget-boolean v2, v0, Lg/guv;->j:Z

    if-nez v2, :cond_38

    iget-object v0, v0, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    const/4 v2, 0x0

    goto :goto_25

    :cond_39
    if-eqz v14, :cond_33

    new-instance v0, Lg/dxx;

    const/4 v2, 0x6

    invoke-direct {v0, v7, v2}, Lg/dxx;-><init>(Lg/fza;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v9, v13, v2, v0}, Lg/ffb;->bm(Ljava/util/ArrayList;Lg/fza;ZLjava/util/function/Predicate;)V

    :goto_26
    invoke-virtual {v12}, Lg/elt;->g()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v1, Lg/guv;->b:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v9, v0

    :cond_3a
    invoke-virtual {v8, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    const/4 v9, 0x1

    goto/16 :goto_20

    :cond_3b
    move-object/from16 v19, v2

    goto/16 :goto_1f

    :cond_3c
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    invoke-virtual {v5, v3}, Lg/dda;->e(Lg/aea;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/elt;

    invoke-virtual {v4}, Lg/elt;->f()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v4}, Lg/elt;->e()Lg/aea;

    move-result-object v6

    if-ne v6, v3, :cond_3d

    goto :goto_27

    :cond_3d
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_27

    :cond_3e
    new-instance v0, Lg/bqz;

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lg/bqz;-><init>(Lg/guv;Lg/gnq;Lg/aea;Ljava/util/HashMap;Lg/dda;)V

    return-object v0
.end method

.method public static e(Lg/hed;Lg/bqz;)Z
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lg/bqz;->i:Ljava/util/HashSet;

    iget-object v2, v0, Lg/bqz;->d:Lg/guv;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_0
    iget-object v3, v0, Lg/bqz;->h:Lg/aea;

    iget-object v5, v0, Lg/bqz;->c:Lg/dda;

    iget-object v6, v5, Lg/dda;->b:Ljava/util/HashMap;

    iget-object v7, v2, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    invoke-static {v2}, Lg/fvq;->b(Lg/guv;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v3}, Lg/dda;->e(Lg/aea;)Ljava/util/List;

    move-result-object v14

    iget-object v5, v0, Lg/bqz;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/elt;

    invoke-virtual {v12}, Lg/elt;->g()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Lg/elt;->e()Lg/aea;

    move-result-object v12

    invoke-virtual {v12, v3}, Lg/aea;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v9

    goto :goto_2

    :cond_5
    move-object v12, v10

    :goto_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/elt;

    invoke-virtual {v9}, Lg/elt;->f()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Lg/elt;->e()Lg/aea;

    move-result-object v11

    if-ne v11, v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v4, v17

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_8
    const/16 v18, 0x0

    move-object v13, v10

    :goto_4
    if-eqz v13, :cond_e

    new-instance v9, Lg/cgy;

    new-instance v11, Lg/gpu;

    const/16 v4, 0xa

    invoke-direct {v11, v4}, Lg/gpu;-><init>(I)V

    move-object v4, v10

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lg/cgy;-><init>(Lg/hed;Lg/gpu;Lg/fza;Lg/fza;Ljava/util/List;Ljava/util/List;)V

    new-instance v10, Lg/evf;

    const/16 v11, 0x12

    invoke-direct {v10, v11, v4}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v9}, Lg/evf;->q(Lg/cgy;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cgy;

    iget-object v15, v13, Lg/cgy;->e:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lg/bne;

    move-object/from16 v17, v1

    iget-object v1, v4, Lg/bne;->a:Ljava/lang/Object;

    check-cast v1, Lg/eek;

    iget-object v4, v4, Lg/bne;->b:Ljava/lang/Object;

    check-cast v4, Lg/eek;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v19, v5

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    move-object/from16 v19, v5

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    :goto_7
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v5, v19

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v19, v5

    iget-object v1, v13, Lg/cgy;->h:Lg/dda;

    invoke-static {v1}, Lg/cgy;->i(Lg/dda;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v13, Lg/cgy;->a:Lg/dda;

    invoke-static {v1}, Lg/cgy;->i(Lg/dda;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v1, v17

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v19, v5

    iget-object v1, v0, Lg/bqz;->a:Ljava/util/HashSet;

    if-nez v1, :cond_c

    iput-object v10, v0, Lg/bqz;->a:Ljava/util/HashSet;

    goto :goto_8

    :cond_c
    invoke-interface {v1, v10}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :goto_8
    iget-object v1, v0, Lg/bqz;->f:Ljava/util/HashSet;

    if-nez v1, :cond_d

    iput-object v11, v0, Lg/bqz;->f:Ljava/util/HashSet;

    goto :goto_9

    :cond_d
    invoke-interface {v1, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_9
    move-object/from16 v1, v17

    move-object/from16 v5, v19

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_e
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected to find fallthrough terminus for handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v17, v1

    const/16 v18, 0x0

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_a
    return v18

    :cond_10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v14

    sub-int/2addr v14, v11

    if-eq v13, v14, :cond_11

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return v18

    :cond_11
    invoke-virtual {v5, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    sget-object v9, Lg/csv;->FINALLY_INSNS:Lg/csv;

    invoke-virtual {v8, v9}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v12, v8, Lg/eek;->ai:Lg/gks;

    iget-object v13, v10, Lg/eek;->ai:Lg/gks;

    invoke-static {v12, v13}, Lg/fvq;->g(Lg/gsh;Lg/gsh;)V

    iget-object v12, v8, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_14

    invoke-virtual {v8, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v14

    invoke-virtual {v10, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v15

    invoke-static {v14, v15}, Lg/fvq;->g(Lg/gsh;Lg/gsh;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_14
    sget-object v12, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v10, v12}, Lg/lh;->w(Lg/csv;)V

    goto :goto_c

    :cond_15
    iget-object v5, v0, Lg/bqz;->a:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    iget-object v8, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v9, Lg/dcg;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lg/dcg;-><init>(Ljava/util/HashSet;I)V

    invoke-static {v8, v9}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_e

    :cond_16
    sget-object v8, Lg/csv;->FINALLY_INSNS:Lg/csv;

    invoke-virtual {v6, v8}, Lg/lh;->w(Lg/csv;)V

    goto :goto_e

    :cond_17
    iget-object v1, v0, Lg/bqz;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v8, Lg/dcg;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9}, Lg/dcg;-><init>(Ljava/util/HashSet;I)V

    invoke-static {v6, v8}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_f

    :cond_18
    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v5, v6}, Lg/lh;->w(Lg/csv;)V

    goto :goto_f

    :cond_19
    iget-object v0, v0, Lg/bqz;->g:Lg/gnq;

    iget-object v0, v0, Lg/gnq;->b:Ljava/util/ArrayList;

    new-instance v1, Lg/brj;

    const/4 v4, 0x4

    invoke-direct {v1, v4}, Lg/brj;-><init>(I)V

    invoke-static {v0, v1}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v7, :cond_1a

    if-nez v0, :cond_1a

    const/4 v4, 0x1

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    iput-boolean v11, v3, Lg/aea;->b:Z

    if-eqz v4, :cond_1c

    iget-object v0, v2, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/guv;

    iget-object v4, v2, Lg/guv;->i:Ljava/util/List;

    iget-object v5, v3, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lg/guv;->b:Ljava/util/List;

    iget-object v5, v3, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v11, v3, Lg/guv;->j:Z

    goto :goto_11

    :cond_1b
    iget-object v1, v2, Lg/guv;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1c
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-static {v1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_12

    :cond_1d
    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v1, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_12

    :cond_1e
    return v11
.end method

.method public static g(Lg/gsh;Lg/gsh;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lg/gks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lg/gks;

    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    check-cast p1, Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0}, Lg/vm;->u()Lg/ejb;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/vm;->n(Lg/ejb;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Lg/bqz;Lg/aea;)Ljava/util/List;
    .locals 7

    iget-object v0, p1, Lg/aea;->i:Lg/fza;

    iget-object v1, p0, Lg/bqz;->c:Lg/dda;

    invoke-virtual {v1, p1}, Lg/dda;->e(Lg/aea;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lg/ffb;->bq(Lg/cih;)Lg/eek;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    if-ne v2, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3, v2, p1, v4}, Lg/ffb;->bp(Ljava/util/LinkedList;Lg/fza;Ljava/util/List;Ljava/util/HashSet;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-static {v4}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, v4, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->THROW:Lg/hay;

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    iget-object v5, v1, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Lg/fvq;->c(Ljava/util/ArrayList;Lg/fza;)V

    iget-object v2, p0, Lg/bqz;->i:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 10

    sget-object v0, Lg/acq;->m:Lg/acq;

    iget-boolean v1, p1, Lg/hed;->ar:Z

    if-nez v1, :cond_a

    iget-object v1, p1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/guv;

    invoke-static {p1, v6}, Lg/fvq;->d(Lg/hed;Lg/guv;)Lg/bqz;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v7, Lg/bqz;->h:Lg/aea;

    invoke-static {v7, v8}, Lg/fvq;->i(Lg/bqz;Lg/aea;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7}, Lg/ffb;->ad(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    iget-object v5, v8, Lg/aea;->j:Lg/guv;

    iget-object v5, v5, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    iput-boolean v5, v8, Lg/aea;->g:Z

    iget-object v6, v8, Lg/aea;->c:Ljava/util/ArrayList;

    new-instance v7, Lg/esk;

    const/16 v8, 0xe

    invoke-direct {v7, v8}, Lg/esk;-><init>(I)V

    invoke-static {v6, v7}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    iget-object v3, p1, Lg/hed;->ap:Ljava/util/List;

    new-instance v5, Lg/brj;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lg/brj;-><init>(I)V

    invoke-static {v3, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lg/brj;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lg/brj;-><init>(I)V

    invoke-static {v3, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v0}, Lg/lh;->u(Lg/fky;)V

    invoke-virtual {p1}, Lg/lh;->r()Lg/sm;

    move-result-object v5

    new-instance v6, Lg/ean;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lg/ean;-><init>(Lg/sm;I)V

    invoke-static {v3, v6}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/guv;

    invoke-static {p1, v3}, Lg/fvq;->d(Lg/hed;Lg/guv;)Lg/bqz;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, v3, Lg/bqz;->h:Lg/aea;

    invoke-static {v3, v5}, Lg/fvq;->i(Lg/bqz;Lg/aea;)Ljava/util/List;

    invoke-static {p1, v3}, Lg/fvq;->e(Lg/hed;Lg/bqz;)Z

    move-result v3

    or-int/2addr v4, v3

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_a

    iget-object v2, p1, Lg/hed;->ap:Ljava/util/List;

    new-instance v3, Lg/brj;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lg/brj;-><init>(I)V

    invoke-static {v2, v3}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lg/brj;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lg/brj;-><init>(I)V

    invoke-static {v2, v1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Lg/lh;->u(Lg/fky;)V

    invoke-virtual {p1}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    new-instance v1, Lg/ean;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lg/ean;-><init>(Lg/sm;I)V

    invoke-static {v2, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    sget-object v1, Lg/fvq;->a:Lg/dba;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/dba;->f(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p1}, Lg/hed;->be()V

    invoke-virtual {p1}, Lg/hed;->bf()V

    iget-object v1, p1, Lg/hed;->am:Lg/cci;

    iget-object v1, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->v:Lg/at;

    iget-object v1, v1, Lg/at;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/pj;

    instance-of v3, v2, Lg/fvq;

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v2, p1}, Lg/cmb;->h(Lg/pj;Lg/hed;)V
    :try_end_1
    .catch Lg/heq; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "Undo finally extract failed"

    invoke-static {p1, v2, v1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    const-string v1, "Undo finally extract visitor"

    invoke-virtual {p1, v1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    return-void
.end method

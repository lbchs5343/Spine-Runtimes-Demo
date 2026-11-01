.class public final Lg/vr;
.super Lg/pj;
.source "SourceFile"

# interfaces
.implements Lg/avy;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/vr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lg/gsh;)Lg/gks;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p0, Lg/gks;

    invoke-virtual {p0}, Lg/gks;->aa()Lg/eek;

    move-result-object p0

    invoke-static {p0}, Lg/vr;->g(Lg/eek;)Lg/gks;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lg/cly;

    if-eqz v0, :cond_1

    check-cast p0, Lg/cly;

    iget-object p0, p0, Lg/cly;->a:Lg/eek;

    invoke-static {p0}, Lg/vr;->g(Lg/eek;)Lg/gks;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lg/gxv;)V
    .locals 5

    iget-object v0, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    :try_start_0
    iget-object v1, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Lg/abs;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lg/abs;-><init>(I)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v1, Lg/eln;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lg/eln;

    iget-object v2, v2, Lg/bjk;->d:Lg/cfm;

    invoke-interface {v2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/eln;->h:Lg/fza;

    sget-object v2, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v1, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object p0, p0, Lg/gxv;->f:Ljava/lang/Object;

    check-cast p0, Lg/gks;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0}, Lg/vm;->u()Lg/ejb;

    move-result-object p0

    iget-object p0, p0, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/vm;

    iget-object v2, v1, Lg/vm;->c:Lg/gks;

    iget-object v2, v2, Lg/gsh;->ae:Lg/eek;

    if-eqz v2, :cond_1

    sget-object v3, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_1
    iget-object v2, v1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gsh;->ae:Lg/eek;

    if-eqz v3, :cond_2

    sget-object v4, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lg/fpd;->g(Lg/hed;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string v1, "Failed to clean up code after switch over string restore"

    invoke-virtual {v0, v1, p0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Lg/gxv;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    iget-object v2, v0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lg/eln;

    iget-object v3, v2, Lg/bjk;->d:Lg/cfm;

    invoke-interface {v3}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    const/4 v6, 0x1

    if-eq v2, v4, :cond_1

    add-int/2addr v2, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/amj;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    instance-of v3, v2, Lg/eln;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto/16 :goto_d

    :cond_2
    check-cast v2, Lg/eln;

    iget-object v3, v2, Lg/eln;->h:Lg/fza;

    sget-object v7, Lg/hay;->SWITCH:Lg/hay;

    invoke-static {v3}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v8, v3, Lg/eek;->ah:Lg/hay;

    if-ne v8, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_19

    invoke-virtual {v3, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v7, Lg/gks;

    if-nez v7, :cond_4

    goto/16 :goto_d

    :cond_4
    invoke-virtual {v3, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v7

    check-cast v7, Lg/gks;

    iget-object v8, v0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/arn;

    iget-object v12, v11, Lg/arn;->c:Lg/amj;

    if-eqz v12, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lg/efe;

    const/4 v15, 0x2

    invoke-direct {v14, v15, v13}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    new-instance v15, Lg/fdl;

    const/4 v5, 0x1

    invoke-direct {v15, v5, v14}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v15, v12}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    new-instance v5, Lg/brj;

    const/16 v12, 0x16

    invoke-direct {v5, v12}, Lg/brj;-><init>(I)V

    invoke-static {v13, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_7

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    goto :goto_4

    :cond_6
    iget-object v5, v11, Lg/arn;->d:Lg/fza;

    if-eqz v5, :cond_7

    invoke-virtual {v3, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v12, Lg/gks;

    if-eqz v13, :cond_7

    check-cast v12, Lg/gks;

    iget-object v12, v12, Lg/gks;->a:Lg/vm;

    iget-object v12, v12, Lg/vm;->c:Lg/gks;

    iget-object v12, v12, Lg/gsh;->ae:Lg/eek;

    if-eqz v12, :cond_7

    iget-object v13, v12, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->PHI:Lg/hay;

    if-ne v13, v14, :cond_7

    check-cast v12, Lg/abi;

    invoke-virtual {v12, v5}, Lg/abi;->y(Lg/fza;)Lg/gks;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lg/gks;->aa()Lg/eek;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_9

    iget-object v12, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v12, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v12, v1, Lg/hed;->am:Lg/cci;

    iget-object v12, v12, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v5, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    invoke-static {v12, v13}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lg/ekh;

    if-eqz v13, :cond_9

    iget-object v5, v5, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v7, v5}, Lg/gks;->y(Lg/gks;)Z

    move-result v5

    if-eqz v5, :cond_9

    check-cast v12, Lg/ekh;

    iget-wide v12, v12, Lg/ekh;->a:J

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v11, Lg/arn;->a:I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_a
    if-nez v10, :cond_b

    return v6

    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v10, v3, :cond_c

    goto/16 :goto_d

    :cond_c
    new-instance v3, Lg/dbm;

    const/16 v5, 0xf

    invoke-direct {v3, v5}, Lg/dbm;-><init>(I)V

    invoke-static {v3}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v8, v3}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/arn;

    iget v9, v8, Lg/arn;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/arn;

    if-eqz v9, :cond_d

    goto/16 :goto_d

    :cond_d
    iget-object v8, v8, Lg/arn;->c:Lg/amj;

    new-instance v9, Lg/agx;

    const/16 v10, 0x15

    invoke-direct {v9, v10, v0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lg/fdl;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v9}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v10, v8}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/adk;

    iget-object v9, v8, Lg/adk;->a:Ljava/util/List;

    iget-object v8, v8, Lg/adk;->b:Lg/amj;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_f

    move-object v12, v11

    check-cast v12, Ljava/lang/Integer;

    goto :goto_a

    :cond_f
    instance-of v12, v11, Lg/hcd;

    if-eqz v12, :cond_10

    move-object v12, v11

    check-cast v12, Lg/hcd;

    sget-object v13, Lg/ao;->x:Lg/ao;

    iget-object v12, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v13}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v12

    check-cast v12, Lg/ghr;

    if-eqz v12, :cond_10

    iget-object v13, v12, Lg/ghr;->b:Lg/dnd;

    sget-object v14, Lg/dnd;->ENCODED_INT:Lg/dnd;

    if-ne v13, v14, :cond_10

    iget-object v12, v12, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_13

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/arn;

    if-nez v11, :cond_11

    goto/16 :goto_d

    :cond_11
    iget-object v11, v11, Lg/arn;->b:Ljava/util/ArrayList;

    if-nez v10, :cond_12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Lg/adk;

    invoke-direct {v11, v10, v8}, Lg/adk;-><init>(Ljava/util/List;Lg/amj;)V

    move-object v10, v11

    goto :goto_9

    :cond_12
    iget-object v12, v10, Lg/adk;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_13
    sget-object v12, Lg/eln;->g:Lg/cuf;

    if-ne v11, v12, :cond_19

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/arn;

    if-nez v10, :cond_14

    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, v12, Lg/arn;->b:Ljava/util/ArrayList;

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lg/adk;

    invoke-direct {v12, v10, v8}, Lg/adk;-><init>(Ljava/util/List;Lg/amj;)V

    move-object v10, v12

    goto :goto_c

    :cond_14
    iget-object v13, v10, Lg/adk;->a:Ljava/util/List;

    iget-object v12, v12, Lg/arn;->b:Ljava/util/ArrayList;

    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_15
    if-nez v10, :cond_16

    new-instance v10, Lg/adk;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v10, v11, v8}, Lg/adk;-><init>(Ljava/util/List;Lg/amj;)V

    :cond_16
    iget-object v11, v10, Lg/adk;->a:Ljava/util/List;

    sget-object v12, Lg/eln;->g:Lg/cuf;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_17
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_18
    iput-object v2, v0, Lg/gxv;->a:Ljava/lang/Object;

    iput-object v7, v0, Lg/gxv;->f:Ljava/lang/Object;

    iput-object v1, v0, Lg/gxv;->i:Ljava/lang/Object;

    return v6

    :cond_19
    :goto_d
    return v4
.end method

.method public static e(Lg/hed;Lg/vm;)Ljava/util/IdentityHashMap;
    .locals 6

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object p1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v1, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->INVOKE:Lg/hay;

    if-ne v3, v4, :cond_0

    move-object v3, v1

    check-cast v3, Lg/hdc;

    iget-object v4, v3, Lg/hdc;->ad:Lg/ayu;

    iget-object v4, v4, Lg/ayu;->h:Ljava/lang/String;

    const-string v5, "java.lang.String.equals(Ljava/lang/Object;)Z"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    iget-object v4, p0, Lg/hed;->am:Lg/cci;

    iget-object v4, v4, Lg/cci;->ab:Lg/dwg;

    invoke-static {v4, v3}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static g(Lg/eek;)Lg/gks;
    .locals 2

    if-eqz p0, :cond_3

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->INVOKE:Lg/hay;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lg/hdc;

    iget-object v0, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object v0, v0, Lg/ayu;->h:Ljava/lang/String;

    const-string v1, "java.lang.String.hashCode()I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/hdc;->aa()Lg/gsh;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Lg/gks;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Lg/gks;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public _bq(Lg/hed;Lg/cfm;)Z
    .locals 13

    instance-of v0, p2, Lg/eln;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    check-cast p2, Lg/eln;

    const-string v0, "Failed to restore switch over string. Please report as a decompilation issue"

    :try_start_0
    iget-object v2, p2, Lg/eln;->h:Lg/fza;

    iget-object v3, p2, Lg/eln;->i:Ljava/util/ArrayList;

    sget-object v4, Lg/hay;->SWITCH:Lg/hay;

    invoke-static {v2}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, v2, Lg/eek;->ah:Lg/hay;

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v2, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-static {v4}, Lg/vr;->b(Lg/gsh;)Lg/gks;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lg/brj;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, Lg/brj;-><init>(I)V

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, -0x1

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    iget-object v7, v4, Lg/gks;->a:Lg/vm;

    iget-object v8, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v8, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-static {p1, v7}, Lg/vr;->e(Lg/hed;Lg/vm;)Ljava/util/IdentityHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->size()I

    move-result v8

    if-ge v8, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v6, Lg/gxv;

    invoke-direct {v6, p1, p2}, Lg/gxv;-><init>(Lg/hed;Lg/eln;)V

    iput-object v7, v6, Lg/gxv;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lg/gxv;->e:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/adk;

    invoke-virtual {p0, v6, v5}, Lg/vr;->i(Lg/gxv;Lg/adk;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_7
    invoke-static {v6}, Lg/vr;->d(Lg/gxv;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v1

    :cond_8
    iget-object v3, p2, Lg/bjk;->d:Lg/cfm;

    new-instance v5, Lg/eln;

    iget-object v7, p2, Lg/eln;->h:Lg/fza;

    invoke-direct {v5, v3, v7}, Lg/eln;-><init>(Lg/cfm;Lg/fza;)V

    iget-object v7, v6, Lg/gxv;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/adk;

    iget-object v10, v8, Lg/adk;->a:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iget-object v8, v8, Lg/adk;->b:Lg/amj;

    iget-object v11, v5, Lg/eln;->i:Ljava/util/ArrayList;

    new-instance v12, Lg/adk;

    invoke-direct {v12, v10, v8}, Lg/adk;-><init>(Ljava/util/List;Lg/amj;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-interface {v3, p2, v5}, Lg/cfm;->f(Lg/amj;Lg/amj;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v1

    :cond_a
    invoke-static {v6}, Lg/vr;->c(Lg/gxv;)V

    invoke-virtual {v2, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p2

    invoke-virtual {v4}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :goto_3
    invoke-virtual {p1, v0, p2}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/vr;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SwitchBreakVisitor"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lg/gxv;Lg/adk;)Z
    .locals 5

    iget-object v0, p2, Lg/adk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/eln;->g:Lg/cuf;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p2, Lg/adk;->b:Lg/amj;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return v2

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p1, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    new-instance v3, Lg/ry;

    invoke-direct {v3, p0, v0, p1}, Lg/ry;-><init>(Lg/vr;Ljava/util/concurrent/atomic/AtomicBoolean;Lg/gxv;)V

    new-instance p1, Lg/fdl;

    const/4 v4, 0x3

    invoke-direct {p1, v4, v3}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, p1, p2}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public final j(Lg/hed;)V
    .locals 3

    iget v0, p0, Lg/vr;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg/fuu;->SWITCH:Lg/fuu;

    invoke-static {p1, v0}, Lg/ddx;->b(Lg/hed;Lg/fuu;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/cqk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/cqk;-><init>(I)V

    new-instance v1, Lg/fdl;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    iget-object v0, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v1, v0}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    new-instance v0, Lg/cqk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cqk;-><init>(I)V

    new-instance v1, Lg/fdl;

    invoke-direct {v1, v2, v0}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    iget-object v0, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v1, v0}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    sget-object v0, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lg/eak;->af(Lg/hed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lg/lh;->v(Lg/csv;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->v(Lg/csv;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lg/fuu;->SWITCH:Lg/fuu;

    invoke-static {p1, v0}, Lg/ddx;->b(Lg/hed;Lg/fuu;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p0}, Lg/buj;->ax(Lg/hed;Lg/avy;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/dwu;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final synthetic b:I

.field public c:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dwu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dwu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dwu;->c:Ljava/lang/Comparable;

    iput-object p2, p0, Lg/dwu;->a:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lg/fzn;Lg/eek;)Ljava/util/List;
    .locals 13

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v1, Lg/cci;

    sget-object v2, Lg/jx;->a:[I

    iget-object v3, p1, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 p0, 0x3

    if-eq v2, p0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p0

    invoke-virtual {p0}, Lg/gsh;->g()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    check-cast p1, Lg/hdc;

    iget-object p1, p1, Lg/hdc;->ad:Lg/ayu;

    iget-object v0, v1, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p1}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lg/hed;->bg()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v0, p1, Lg/hed;->ad:Lg/fza;

    iget-object v0, v0, Lg/fza;->e:Ljava/util/List;

    invoke-static {v0}, Lg/evh;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    invoke-static {v0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    invoke-static {v0}, Lg/ack;->n(Lg/eek;)Lg/gsh;

    move-result-object v0

    invoke-static {v0}, Lg/ack;->b(Lg/gsh;)Lg/eek;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {p0, v0}, Lg/dwu;->d(Lg/fzn;Lg/eek;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    :cond_4
    return-object p0

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gsh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    const-string v8, "Fake field, exist only in values array"

    const-string v9, "EF"

    if-eqz v7, :cond_8

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->SGET:Lg/hay;

    if-ne v7, v10, :cond_6

    invoke-static {p0, v6}, Lg/dwu;->e(Lg/fzn;Lg/eek;)Lg/fjd;

    move-result-object v6

    goto/16 :goto_5

    :cond_6
    sget-object v10, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v7, v10, :cond_7

    check-cast v6, Lg/eew;

    goto :goto_1

    :cond_7
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Lg/eek;->ag:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v10, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/cci;->au()Lg/cwx;

    move-result-object v11

    new-instance v12, Lg/dsj;

    invoke-direct {v12, v10, v7, v11}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object v7, v9, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {v7, v12}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object v7

    new-instance v9, Lg/hcd;

    invoke-direct {v9, v1, v7, v4}, Lg/hcd;-><init>(Lg/cci;Lg/dsj;I)V

    sget-object v7, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v9, v7}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v9, v8}, Lg/ebh;->bv(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lg/cci;->be(Lg/hcd;)V

    invoke-static {p0, v9, v6}, Lg/dwu;->g(Lg/fzn;Lg/hcd;Lg/eew;)Lg/fjd;

    move-result-object v6

    goto/16 :goto_5

    :cond_8
    instance-of v7, v6, Lg/gks;

    if-eqz v7, :cond_10

    check-cast v6, Lg/gks;

    invoke-virtual {v6}, Lg/gks;->aa()Lg/eek;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v10, v7, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->SGET:Lg/hay;

    if-ne v10, v11, :cond_9

    invoke-static {p0, v7}, Lg/dwu;->e(Lg/fzn;Lg/eek;)Lg/fjd;

    move-result-object v6

    goto/16 :goto_5

    :cond_9
    iget-object v7, v6, Lg/gks;->a:Lg/vm;

    iget-object v10, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    iget-object v10, v7, Lg/vm;->c:Lg/gks;

    iget-object v10, v10, Lg/gsh;->ae:Lg/eek;

    if-eqz v10, :cond_10

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-eq v11, v12, :cond_b

    goto :goto_4

    :cond_b
    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gks;

    iget-object v7, v7, Lg/gsh;->ae:Lg/eek;

    if-eqz v7, :cond_d

    iget-object v11, v7, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->SPUT:Lg/hay;

    if-eq v11, v12, :cond_c

    goto :goto_2

    :cond_c
    move-object v11, v7

    check-cast v11, Lg/adz;

    iget-object v11, v11, Lg/adz;->a:Ljava/lang/Object;

    check-cast v11, Lg/dsj;

    invoke-virtual {v1, v11}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v11

    if-nez v11, :cond_e

    :cond_d
    :goto_2
    move-object v11, v5

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-nez v11, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Lg/gks;->e:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v9, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/cci;->au()Lg/cwx;

    move-result-object v11

    new-instance v12, Lg/dsj;

    invoke-direct {v12, v9, v6, v11}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object v6, v7, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {v6, v12}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object v6

    new-instance v11, Lg/hcd;

    invoke-direct {v11, v1, v6, v4}, Lg/hcd;-><init>(Lg/cci;Lg/dsj;I)V

    sget-object v6, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v11, v6}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v11, v8}, Lg/ebh;->bv(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lg/cci;->be(Lg/hcd;)V

    :cond_f
    check-cast v10, Lg/eew;

    invoke-static {p0, v11, v10}, Lg/dwu;->g(Lg/fzn;Lg/hcd;Lg/eew;)Lg/fjd;

    move-result-object v6

    goto :goto_5

    :cond_10
    :goto_4
    move-object v6, v5

    :goto_5
    if-nez v6, :cond_12

    :cond_11
    :goto_6
    return-object v5

    :cond_12
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static e(Lg/fzn;Lg/eek;)Lg/fjd;
    .locals 9

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v0, Lg/cci;

    iget-object v1, p1, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->SGET:Lg/hay;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v1, p1

    check-cast v1, Lg/adz;

    iget-object v1, v1, Lg/adz;->a:Ljava/lang/Object;

    check-cast v1, Lg/dsj;

    iget-object v2, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v5, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->SPUT:Lg/hay;

    if-ne v7, v8, :cond_3

    move-object v7, v6

    check-cast v7, Lg/adz;

    iget-object v7, v7, Lg/adz;->a:Ljava/lang/Object;

    check-cast v7, Lg/dsj;

    invoke-virtual {v0, v7}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v7

    invoke-static {v7, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    move-object v6, v3

    :goto_0
    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v6, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    :cond_6
    move-object v0, v3

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v0, Lg/cly;

    if-eqz v5, :cond_8

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    if-eqz v0, :cond_6

    iget-object v5, v0, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v5, v7, :cond_6

    check-cast v0, Lg/eew;

    goto :goto_1

    :cond_8
    instance-of v5, v0, Lg/gks;

    if-eqz v5, :cond_6

    check-cast v0, Lg/gks;

    invoke-virtual {v0}, Lg/gks;->aa()Lg/eek;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v5, v0, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v5, v7, :cond_6

    check-cast v0, Lg/eew;

    :goto_1
    if-nez v0, :cond_9

    :goto_2
    return-object v3

    :cond_9
    iget-object v3, p1, Lg/eek;->ai:Lg/gks;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_b

    :cond_a
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1, v0}, Lg/dwu;->g(Lg/fzn;Lg/hcd;Lg/eew;)Lg/fjd;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lg/fzn;Lg/hcd;Lg/eew;)Lg/fjd;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v3, Lg/cci;

    iget-object v4, v2, Lg/eek;->aj:Ljava/util/List;

    iget-object v5, v2, Lg/eew;->a:Lg/ayu;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ge v4, v7, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_1
    iget-object v4, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v8, v5, Lg/ayu;->d:Lg/ve;

    iget-object v9, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v9, v8}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v3}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    sget-object v9, Lg/acq;->r:Lg/acq;

    iget-object v8, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v9}, Lg/sm;->j(Lg/fky;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    iget-object v8, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v8, v5}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v2}, Lg/eew;->_o()Lg/eek;

    move-result-object v5

    check-cast v5, Lg/eew;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v8}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gks;

    iget-object v10, v9, Lg/gks;->a:Lg/vm;

    iget-object v11, v10, Lg/vm;->c:Lg/gks;

    iget-object v11, v11, Lg/gsh;->ae:Lg/eek;

    sget-object v12, Lg/hay;->CONSTRUCTOR:Lg/hay;

    invoke-static {v11, v12}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    move-object v13, v11

    check-cast v13, Lg/eew;

    iget-object v13, v13, Lg/eew;->a:Lg/ayu;

    iget-object v13, v13, Lg/ayu;->d:Lg/ve;

    iget-object v14, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v13, v14}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    iget-object v10, v10, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/gks;

    iget-object v15, v15, Lg/gsh;->ae:Lg/eek;

    if-nez v15, :cond_7

    const/4 v13, 0x0

    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_7
    sget-object v16, Lg/jx;->a:[I

    const/16 v17, 0x0

    iget-object v6, v15, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v7, :cond_b

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a

    const/4 v7, 0x5

    if-eq v6, v7, :cond_9

    :cond_8
    :goto_4
    move-object/from16 v13, v17

    goto :goto_6

    :cond_9
    check-cast v15, Lg/eew;

    iget-object v6, v15, Lg/eew;->a:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v6, v14}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_4

    :cond_a
    check-cast v15, Lg/adz;

    iget-object v6, v15, Lg/adz;->a:Ljava/lang/Object;

    move-object v13, v6

    check-cast v13, Lg/dsj;

    iget-object v6, v13, Lg/dsj;->d:Lg/ve;

    invoke-virtual {v6, v14}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v13, Lg/dsj;->a:Lg/cwx;

    invoke-virtual {v3}, Lg/cci;->au()Lg/cwx;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_4

    :cond_b
    iget-object v6, v0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v6, Lg/eek;

    invoke-virtual {v6, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    if-eqz v7, :cond_c

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    goto :goto_5

    :cond_c
    move-object/from16 v6, v17

    :goto_5
    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_4

    :cond_d
    const/4 v7, 0x1

    goto :goto_3

    :cond_e
    const/16 v17, 0x0

    if-eqz v13, :cond_f

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    if-nez v13, :cond_10

    :goto_7
    move-object/from16 v6, v17

    goto :goto_8

    :cond_10
    new-instance v6, Lg/adz;

    sget-object v7, Lg/hay;->SGET:Lg/hay;

    invoke-direct {v6, v7, v13, v12}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-static {v6}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_7

    :cond_11
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_12
    move-object v6, v5

    :goto_8
    if-eqz v6, :cond_13

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    goto :goto_9

    :cond_13
    new-instance v0, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init of enum field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lg/hcd;->g:Lg/dsj;

    iget-object v1, v1, Lg/dsj;->e:Ljava/lang/String;

    const-string v3, "\' uses external variables"

    invoke-static {v2, v1, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    new-instance v0, Lg/fjd;

    invoke-direct {v0, v1, v2}, Lg/fjd;-><init>(Lg/hcd;Lg/eew;)V

    return-object v0

    :goto_a
    return-object v17
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/dwu;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dwu;->c:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lg/dwg;)V
    .locals 5

    iget v0, p0, Lg/dwu;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lg/cwx;->y:Lg/aog;

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lg/cwx;

    sget-object v3, Lg/cwx;->ab:Lg/aog;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lg/cwx;->al:Lg/aog;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "valueOf"

    invoke-static {p1, v1, v3, v2, v0}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object v0

    iput-object v0, p0, Lg/dwu;->c:Ljava/lang/Comparable;

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v1

    const-string v2, "clone"

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1, v1, v2, v3, v0}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p1

    iput-object p1, p0, Lg/dwu;->a:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lg/hed;Lg/cwx;)Z
    .locals 3

    iget-object v0, p1, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/aoe;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/cwx;->k()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lg/ffb;->t(Lg/hed;)Lg/eek;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->RETURN:Lg/hay;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lg/ack;->n(Lg/eek;)Lg/gsh;

    move-result-object p1

    invoke-static {p1}, Lg/ack;->b(Lg/gsh;)Lg/eek;

    move-result-object p1

    sget-object v0, Lg/hay;->CHECK_CAST:Lg/hay;

    invoke-static {p1, v0}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object p1

    check-cast p1, Lg/adz;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lg/adz;->a:Ljava/lang/Object;

    new-instance v2, Lg/aoe;

    invoke-direct {v2, p2}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lg/ack;->n(Lg/eek;)Lg/gsh;

    move-result-object p1

    invoke-static {p1}, Lg/ack;->b(Lg/gsh;)Lg/eek;

    move-result-object p1

    sget-object p2, Lg/hay;->INVOKE:Lg/hay;

    invoke-static {p1, p2}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object p1

    check-cast p1, Lg/hdc;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lg/hdc;->ad:Lg/ayu;

    iget-object p2, p0, Lg/dwu;->a:Ljava/lang/Object;

    check-cast p2, Lg/ayu;

    invoke-virtual {p1, p2}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(Lg/hed;)V
    .locals 1

    iget v0, p0, Lg/dwu;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dwu;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lg/cci;)Z
    .locals 2

    iget v0, p0, Lg/dwu;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/pj;->k(Lg/cci;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p1}, Lg/cci;->bi()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lg/dwu;->l(Lg/cci;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Enum visitor error"

    invoke-virtual {p1, v1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p1, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ag()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v0

    iput-object v0, p1, Lg/cci;->d:Lg/gqc;

    const-string v0, "Failed to restore enum class, \'enum\' modifier and super class removed"

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lg/cci;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lg/cci;->af:Lg/cwx;

    iget-object v3, v0, Lg/cci;->ab:Lg/dwg;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/cwx;->y:Lg/aog;

    iget-object v4, v4, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/csv;->REMOVE_SUPER_CLASS:Lg/csv;

    invoke-virtual {v0, v2}, Lg/lh;->w(Lg/csv;)V

    :cond_0
    const-string v2, "<clinit>()V"

    invoke-virtual {v0, v2}, Lg/cci;->bf(Ljava/lang/String;)Lg/hed;

    move-result-object v2

    const/4 v7, 0x0

    if-nez v2, :cond_1

    const-string v2, "Enum class init method not found"

    invoke-virtual {v0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v7

    :cond_1
    iget-object v4, v2, Lg/hed;->ao:Lg/eys;

    if-eqz v4, :cond_2

    iget-object v5, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    const/16 v18, 0x0

    goto/16 :goto_16

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v4, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/amj;

    instance-of v8, v6, Lg/fza;

    if-eqz v8, :cond_4

    check-cast v6, Lg/fza;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "Unexpected branching in enum static init block"

    invoke-virtual {v0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v7

    :cond_5
    new-instance v4, Lg/fzn;

    invoke-direct {v4, v0, v5}, Lg/fzn;-><init>(Lg/cci;Ljava/util/ArrayList;)V

    iget-object v5, v4, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v5, Lg/cci;

    iget-object v6, v4, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v8, v5, Lg/cci;->ak:Lg/ve;

    iget-object v9, v5, Lg/cci;->ab:Lg/dwg;

    iget-object v8, v8, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v5}, Lg/cci;->av()V

    iget-object v10, v5, Lg/cci;->ag:Ljava/util/List;

    invoke-static {v10}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lg/bev;

    const/16 v12, 0x11

    invoke-direct {v11, v12}, Lg/bev;-><init>(I)V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lg/bev;

    const/16 v12, 0x12

    invoke-direct {v11, v12}, Lg/bev;-><init>(I)V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lg/egl;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v8}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v10

    invoke-interface {v8, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v0, "$VALUES field not found"

    invoke-virtual {v5, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v7

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    new-instance v10, Lg/bev;

    const/16 v12, 0x13

    invoke-direct {v10, v12}, Lg/bev;-><init>(I)V

    invoke-static {v8, v10}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_8

    invoke-static {v8}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lg/bev;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Lg/bev;-><init>(I)V

    invoke-interface {v10, v12}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Lj$/util/Optional;->isPresent()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    invoke-virtual {v10}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/hcd;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v11, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found several \"values\" enum fields: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v7

    :cond_9
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/hcd;

    iput-object v8, v4, Lg/fzn;->f:Ljava/lang/Object;

    iget-object v8, v8, Lg/hcd;->g:Lg/dsj;

    iget-object v10, v4, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    iget-object v14, v12, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/eek;

    iget-object v13, v15, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->SPUT:Lg/hay;

    if-ne v13, v11, :cond_b

    check-cast v15, Lg/adz;

    iget-object v11, v15, Lg/adz;->a:Ljava/lang/Object;

    check-cast v11, Lg/dsj;

    invoke-virtual {v11, v8}, Lg/dsj;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v8, Lg/fep;

    invoke-direct {v8, v12, v15}, Lg/fep;-><init>(Lg/cih;Lg/eek;)V

    goto :goto_3

    :cond_b
    const/4 v11, 0x1

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-object v8, v8, Lg/fep;->b:Lg/eek;

    iput-object v8, v4, Lg/fzn;->i:Ljava/lang/Object;

    invoke-virtual {v8, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v8, Lg/cly;

    if-eqz v10, :cond_e

    check-cast v8, Lg/cly;

    iget-object v8, v8, Lg/cly;->a:Lg/eek;

    invoke-static {v4, v8}, Lg/dwu;->d(Lg/fzn;Lg/eek;)Ljava/util/List;

    move-result-object v8

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_f

    const-string v2, "Unknown enum class pattern. Please report as an issue!"

    invoke-virtual {v0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    return v7

    :cond_f
    iget-object v10, v4, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v10, Lg/eek;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lg/afq;

    invoke-direct {v10, v8}, Lg/afq;-><init>(Ljava/util/List;)V

    iput-object v2, v10, Lg/afq;->b:Lg/hed;

    invoke-virtual {v0, v10}, Lg/lh;->m(Lg/eue;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fjd;

    iget-object v12, v10, Lg/fjd;->b:Lg/eew;

    iget-object v13, v10, Lg/fjd;->a:Lg/hcd;

    iget-object v14, v13, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v12, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v12, Lg/cly;

    if-eqz v15, :cond_10

    check-cast v12, Lg/cly;

    iget-object v12, v12, Lg/cly;->a:Lg/eek;

    invoke-static {v3, v12}, Lg/ack;->h(Lg/dwg;Lg/eek;)Ljava/lang/Object;

    move-result-object v12

    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_10

    check-cast v12, Ljava/lang/String;

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_11

    iget-object v15, v14, Lg/dsj;->b:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    invoke-static {v12}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    iget-object v15, v3, Lg/dwg;->i:Lg/ur;

    iget-object v15, v15, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v11, Lg/ffl;->VALID:Lg/ffl;

    invoke-interface {v15, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iput-object v12, v14, Lg/dsj;->b:Ljava/lang/String;

    :cond_11
    sget-object v11, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v13, v11}, Lg/lh;->w(Lg/csv;)V

    iget-object v11, v10, Lg/fjd;->b:Lg/eew;

    iget-object v12, v11, Lg/eew;->a:Lg/ayu;

    iget-object v13, v12, Lg/ayu;->d:Lg/ve;

    iget-object v15, v5, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v13, v15}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v9, v13}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Lg/cci;->av()V

    iget-object v15, v13, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lg/hed;

    move-object/from16 v17, v3

    iget-object v3, v7, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->bf()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v7, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_12
    move-object/from16 v3, v17

    const/4 v7, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v17, v3

    iput-object v13, v10, Lg/fjd;->c:Lg/cci;

    iget-object v3, v13, Lg/cci;->ai:Lg/cci;

    invoke-virtual {v3, v5}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v5, v13}, Lg/cci;->as(Lg/cci;)V

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v13, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_8

    :cond_14
    move-object/from16 v17, v3

    :cond_15
    :goto_8
    invoke-virtual {v9, v12}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v3

    if-eqz v3, :cond_16

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lg/cse;->b(Lg/hed;I)V

    iget-object v7, v3, Lg/hed;->al:Lg/ayu;

    iget-object v7, v7, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_16

    invoke-static {v3, v10}, Lg/cse;->b(Lg/hed;I)V

    :cond_16
    iget-object v3, v11, Lg/eek;->ai:Lg/gks;

    if-eqz v3, :cond_19

    iget-object v7, v3, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x2

    if-gt v7, v10, :cond_17

    goto :goto_9

    :cond_17
    iget-object v7, v3, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-static {v7}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v7

    new-instance v10, Lg/egl;

    const/4 v12, 0x1

    invoke-direct {v10, v12, v4}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {v7, v10}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Lg/adz;

    sget-object v10, Lg/hay;->SGET:Lg/hay;

    const/4 v12, 0x0

    invoke-direct {v7, v10, v14, v12}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v3}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v7, v3}, Lg/eek;->ax(Lg/gks;)V

    iget-object v3, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    invoke-static {v2, v10, v11, v7}, Lg/ffb;->bw(Lg/hed;Lg/fza;Lg/eek;Lg/eek;)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_a

    :cond_19
    :goto_9
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_a
    move-object/from16 v3, v17

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_1b
    iget-object v3, v4, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v3, Lg/hcd;

    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v3, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v2, v6}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    iget-object v3, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v5, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    goto :goto_b

    :cond_1c
    iget-object v3, v2, Lg/hed;->an:[Lg/eek;

    const-wide/16 v7, -0x1

    if-eqz v3, :cond_1d

    array-length v3, v3

    int-to-long v9, v3

    goto :goto_c

    :cond_1d
    iget-object v3, v2, Lg/hed;->ak:Ljava/util/List;

    if-eqz v3, :cond_1e

    invoke-static {v3}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lg/het;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v5}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v3

    invoke-interface {v3}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v9

    goto :goto_c

    :cond_1e
    move-wide v9, v7

    :goto_c
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-nez v3, :cond_1f

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_d

    :cond_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v2}, Lg/eak;->av(Lg/hed;)V

    :cond_20
    :goto_d
    iget-object v2, v4, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v2, Lg/hcd;

    iget-object v3, v0, Lg/cci;->ak:Lg/ve;

    iget-object v5, v3, Lg/ve;->d:Lg/cwx;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "values()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lg/cwx;->an:Lg/cff;

    new-instance v4, Lg/aoe;

    invoke-direct {v4, v5}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-static {v4}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v4, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :cond_21
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/hed;

    iget-object v10, v9, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v10}, Lg/ayu;->m()Z

    move-result v13

    iget-object v14, v10, Lg/ayu;->e:Ljava/lang/String;

    if-nez v13, :cond_21

    iget-boolean v13, v9, Lg/hed;->ar:Z

    if-eqz v13, :cond_22

    goto :goto_e

    :cond_22
    invoke-virtual {v10}, Lg/ayu;->o()Z

    move-result v13

    if-eqz v13, :cond_27

    const-string v10, "<init>(Ljava/lang/String;I)V"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    const-string v10, "<init>(Ljava/lang/String;)V"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_23
    iget-object v10, v9, Lg/hed;->an:[Lg/eek;

    if-eqz v10, :cond_24

    array-length v10, v10

    int-to-long v13, v10

    goto :goto_f

    :cond_24
    iget-object v10, v9, Lg/hed;->ak:Ljava/util/List;

    if-eqz v10, :cond_25

    invoke-static {v10}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v13, Lg/het;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-interface {v10, v13}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v10

    invoke-interface {v10}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v13

    goto :goto_f

    :cond_25
    move-wide v13, v7

    :goto_f
    cmp-long v10, v13, v11

    if-nez v10, :cond_26

    sget-object v10, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v9, v10}, Lg/lh;->w(Lg/csv;)V

    :cond_26
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lg/cse;->b(Lg/hed;I)V

    iget-object v10, v9, Lg/hed;->al:Lg/ayu;

    iget-object v10, v10, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    if-le v10, v13, :cond_21

    invoke-static {v9, v13}, Lg/cse;->b(Lg/hed;I)V

    goto :goto_e

    :cond_27
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual {v1, v9, v5}, Lg/dwu;->i(Lg/hed;Lg/cwx;)Z

    move-result v13

    if-eqz v13, :cond_28

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v9, v6}, Lg/lh;->w(Lg/csv;)V

    goto :goto_10

    :cond_28
    const-string v13, "valuesCustom"

    iput-object v13, v10, Lg/ayu;->a:Ljava/lang/String;

    new-instance v10, Lg/awl;

    invoke-direct {v10, v9}, Lg/awl;-><init>(Lg/hed;)V

    const-string v13, "to resolve conflict with enum method"

    invoke-virtual {v10, v13}, Lg/awl;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lg/lh;->m(Lg/eue;)V

    goto/16 :goto_e

    :cond_29
    invoke-virtual {v1, v9, v5}, Lg/dwu;->i(Lg/hed;Lg/cwx;)Z

    move-result v13

    if-eqz v13, :cond_2b

    iget-object v6, v10, Lg/ayu;->a:Ljava/lang/String;

    const-string v13, "values"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    iget-object v6, v9, Lg/hed;->au:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2a

    iput-object v13, v10, Lg/ayu;->a:Ljava/lang/String;

    new-instance v6, Lg/awl;

    invoke-direct {v6, v9}, Lg/awl;-><init>(Lg/hed;)V

    const-string v10, "to match enum method name"

    invoke-virtual {v6, v10}, Lg/awl;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lg/lh;->m(Lg/eue;)V

    sget-object v6, Lg/csv;->DONT_RENAME:Lg/csv;

    invoke-virtual {v9, v6}, Lg/lh;->w(Lg/csv;)V

    :cond_2a
    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v9, v6}, Lg/lh;->w(Lg/csv;)V

    :goto_10
    move-object v6, v9

    goto/16 :goto_e

    :cond_2b
    new-instance v10, Lg/bev;

    const/16 v13, 0x10

    invoke-direct {v10, v13}, Lg/bev;-><init>(I)V

    sget-object v13, Lg/ack;->a:Lg/dba;

    iget-boolean v13, v9, Lg/hed;->ar:Z

    if-nez v13, :cond_2c

    iget-object v13, v9, Lg/hed;->ad:Lg/fza;

    iget-object v13, v13, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2c

    sget-object v13, Lg/hay;->RETURN:Lg/hay;

    invoke-static {v9, v13, v10}, Lg/ack;->i(Lg/hed;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;

    move-result-object v10

    goto :goto_11

    :cond_2c
    const/4 v10, 0x0

    :goto_11
    if-nez v10, :cond_2d

    goto/16 :goto_e

    :cond_2d
    invoke-static {v10}, Lg/ack;->n(Lg/eek;)Lg/gsh;

    move-result-object v10

    invoke-static {v10}, Lg/ack;->b(Lg/gsh;)Lg/eek;

    move-result-object v10

    sget-object v13, Lg/hay;->CHECK_CAST:Lg/hay;

    invoke-static {v10, v13}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object v10

    check-cast v10, Lg/adz;

    if-eqz v10, :cond_21

    iget-object v13, v10, Lg/adz;->a:Ljava/lang/Object;

    invoke-static {v13, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-static {v10}, Lg/ack;->n(Lg/eek;)Lg/gsh;

    move-result-object v10

    invoke-static {v10}, Lg/ack;->b(Lg/gsh;)Lg/eek;

    move-result-object v10

    sget-object v13, Lg/hay;->INVOKE:Lg/hay;

    invoke-static {v10, v13}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object v10

    check-cast v10, Lg/hdc;

    if-eqz v10, :cond_21

    iget-object v10, v10, Lg/hdc;->ad:Lg/ayu;

    iget-object v13, v1, Lg/dwu;->c:Ljava/lang/Comparable;

    check-cast v13, Lg/ayu;

    invoke-virtual {v10, v13}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    sget-object v10, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v9, v10}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_e

    :cond_2e
    iget-object v2, v2, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/hed;

    iget-object v0, v4, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v0}, Lg/ayu;->o()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual {v0}, Lg/ayu;->m()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, v4, Lg/hed;->ar:Z

    if-nez v0, :cond_2f

    if-ne v4, v6, :cond_30

    :cond_2f
    move-object v3, v6

    const/4 v10, 0x2

    :goto_13
    move-object v6, v2

    goto :goto_15

    :cond_30
    new-instance v0, Lg/egl;

    const/4 v10, 0x2

    invoke-direct {v0, v10, v2}, Lg/egl;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lg/hay;->SGET:Lg/hay;

    invoke-static {v4, v3, v0}, Lg/ack;->i(Lg/hed;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;

    move-result-object v3

    if-nez v3, :cond_31

    move-object v3, v6

    goto :goto_13

    :cond_31
    move-object v3, v6

    move-object v6, v2

    move-object v2, v0

    new-instance v0, Lg/gxl;

    invoke-direct/range {v0 .. v6}, Lg/gxl;-><init>(Lg/dwu;Lg/egl;Lg/hed;Lg/hed;Lg/cwx;Lg/dsj;)V

    iget-object v1, v4, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v8, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v9, :cond_32

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eek;

    invoke-static {v4, v12, v0}, Lg/ack;->e(Lg/hed;Lg/eek;Lg/gxl;)V

    invoke-virtual {v0, v12}, Lg/gxl;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eek;

    if-eqz v12, :cond_33

    invoke-static {v4, v2, v11, v12}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    :cond_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_34
    :goto_15
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v6, v3

    goto :goto_12

    :cond_35
    const/16 v16, 0x1

    return v16

    :goto_16
    return v18
.end method

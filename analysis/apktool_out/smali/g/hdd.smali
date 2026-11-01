.class public final synthetic Lg/hdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bwy;


# direct methods
.method public synthetic constructor <init>(Lg/bwy;I)V
    .locals 0

    iput p2, p0, Lg/hdd;->a:I

    iput-object p1, p0, Lg/hdd;->b:Lg/bwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/hdd;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lg/hdd;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/vm;

    iget-object v5, v4, Lg/vm;->h:Lg/ffr;

    iget-object v5, v5, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v5, Lg/cwx;

    invoke-virtual {v5}, Lg/cwx;->h()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lg/vm;->i()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v6, v4, Lg/vm;->h:Lg/ffr;

    iget-object v6, v6, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fog;

    invoke-interface {v7}, Lg/fog;->getType()Lg/cwx;

    move-result-object v7

    invoke-virtual {v7}, Lg/cwx;->h()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lg/cwx;->m()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {v7}, Lg/cwx;->m()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lg/cwx;->bk()Z

    move-result v8

    if-eqz v8, :cond_4

    instance-of v8, v7, Lg/btl;

    if-eqz v8, :cond_5

    sget-object v7, Lg/cwx;->t:Lg/aog;

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v7

    :goto_2
    iget-object v8, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v8, v8, Lg/bwy;->c:Lg/cag;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lg/zf;->d:Lg/zf;

    invoke-virtual {v8, v0, v4, v7, v9}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object v7

    sget-object v8, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne v7, v8, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type inference failed for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/vm;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Raw type applied. Possible types: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-static {v4, v5}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v3, v2, Lg/bwy;->b:Lg/mo;

    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    sget-object v9, Lg/acq;->am:Lg/acq;

    iget-object v7, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v7

    check-cast v7, Lg/czc;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/abi;

    iget-object v10, v9, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v11

    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gsh;

    invoke-virtual {v13}, Lg/flv;->j()Lg/cwx;

    move-result-object v13

    if-nez v12, :cond_a

    move-object v12, v13

    goto :goto_5

    :cond_a
    invoke-virtual {v12, v13}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_6

    :cond_b
    move-object v11, v12

    :goto_6
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lg/cwx;->h()Z

    move-result v10

    if-eqz v10, :cond_c

    :goto_7
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    invoke-static {v0, v9, v5}, Lg/bwy;->g(Lg/hed;Lg/abi;Z)I

    move-result v10

    if-nez v10, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v0, v9, v8}, Lg/bwy;->g(Lg/hed;Lg/abi;Z)I

    move-result v9

    :goto_8
    add-int/2addr v6, v9

    goto :goto_4

    :cond_e
    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v0}, Lg/eak;->r(Lg/hed;)V

    invoke-virtual {v3, v0}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v3, v0}, Lg/mo;->i(Lg/hed;)V

    invoke-static {v0}, Lg/bwy;->d(Lg/hed;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual {v2, v0}, Lg/bwy;->o(Lg/hed;)Z

    move-result v5

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_11
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/vm;

    iget-object v7, v5, Lg/vm;->h:Lg/ffr;

    iget-object v7, v7, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v7, Lg/cwx;

    invoke-virtual {v7}, Lg/cwx;->h()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v5}, Lg/vm;->i()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v5, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gks;

    iget-object v8, v8, Lg/gsh;->ae:Lg/eek;

    if-eqz v8, :cond_12

    iget-object v8, v8, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->AGET:Lg/hay;

    if-eq v8, v9, :cond_13

    sget-object v9, Lg/hay;->APUT:Lg/hay;

    if-ne v8, v9, :cond_12

    :cond_13
    invoke-virtual {v5}, Lg/vm;->m()Lg/cwx;

    move-result-object v4

    invoke-virtual {v5, v4}, Lg/vm;->s(Lg/cwx;)V

    const/4 v4, 0x1

    goto :goto_a

    :cond_14
    if-nez v4, :cond_15

    goto :goto_b

    :cond_15
    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v2, v2, Lg/bwy;->b:Lg/mo;

    invoke-virtual {v2, v0}, Lg/mo;->i(Lg/hed;)V

    const/4 v3, 0x1

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v2, v2, Lg/bwy;->b:Lg/mo;

    iget-object v3, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_c
    const/4 v8, 0x1

    if-ge v6, v4, :cond_33

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/vm;

    iget-object v10, v9, Lg/vm;->h:Lg/ffr;

    iget-object v11, v10, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v11, Lg/cwx;

    invoke-virtual {v11}, Lg/cwx;->h()Z

    move-result v11

    if-eqz v11, :cond_16

    :goto_d
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v6

    const/4 v9, 0x0

    :goto_e
    const/4 v15, 0x1

    goto/16 :goto_1f

    :cond_16
    iget-object v10, v10, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/LinkedHashSet;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_17
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fog;

    invoke-interface {v12}, Lg/fog;->getType()Lg/cwx;

    move-result-object v14

    sget-object v15, Lg/dcb;->a:[I

    invoke-interface {v12}, Lg/fog;->f()Lg/au;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v15, v12

    if-eq v12, v8, :cond_1f

    if-eq v12, v13, :cond_18

    goto :goto_f

    :cond_18
    instance-of v12, v14, Lg/cff;

    if-eqz v12, :cond_1b

    check-cast v14, Lg/cff;

    iget-object v12, v14, Lg/cff;->a:Lg/bjt;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lg/bjt;->OBJECT:Lg/bjt;

    if-eq v12, v13, :cond_1a

    sget-object v13, Lg/bjt;->ARRAY:Lg/bjt;

    if-ne v12, v13, :cond_19

    goto :goto_10

    :cond_19
    const/4 v12, 0x0

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v12, 0x1

    :goto_11
    xor-int/2addr v12, v8

    goto :goto_14

    :cond_1b
    invoke-virtual {v14}, Lg/cwx;->g()[Lg/bjt;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v13, :cond_1e

    aget-object v15, v12, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lg/bjt;->OBJECT:Lg/bjt;

    if-eq v15, v5, :cond_1d

    sget-object v5, Lg/bjt;->ARRAY:Lg/bjt;

    if-ne v15, v5, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v12, 0x1

    goto :goto_14

    :cond_1d
    :goto_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_1e
    const/4 v12, 0x0

    :goto_14
    if-nez v12, :cond_17

    goto :goto_d

    :cond_1f
    sget-object v5, Lg/bjt;->BOOLEAN:Lg/bjt;

    invoke-virtual {v14, v5}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_d

    :cond_20
    const/4 v11, 0x1

    goto :goto_f

    :cond_21
    if-nez v11, :cond_22

    goto :goto_d

    :cond_22
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, v9, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/gks;

    iget-object v11, v10, Lg/flv;->h:Lg/cwx;

    sget-object v12, Lg/cwx;->at:Lg/cff;

    if-eq v11, v12, :cond_24

    invoke-virtual {v11}, Lg/cwx;->h()Z

    move-result v14

    if-eqz v14, :cond_23

    instance-of v14, v11, Lg/cff;

    if-nez v14, :cond_23

    goto :goto_16

    :cond_23
    iget-object v14, v10, Lg/gsh;->ae:Lg/eek;

    if-eqz v14, :cond_24

    iget-object v15, v14, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->IF:Lg/hay;

    if-ne v15, v8, :cond_25

    :cond_24
    :goto_16
    move-object/from16 v17, v3

    move/from16 v18, v4

    goto :goto_17

    :cond_25
    iget-object v8, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v14, v8}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v8

    if-nez v8, :cond_26

    move-object/from16 v17, v3

    move/from16 v18, v4

    :goto_17
    move-object/from16 v19, v5

    move/from16 v20, v6

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto/16 :goto_1e

    :cond_26
    iget-object v13, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    move-object/from16 v17, v3

    invoke-static {v13, v14}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v3

    move/from16 v18, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27

    goto :goto_17

    :cond_27
    sget-object v4, Lg/hay;->CAST:Lg/hay;

    if-ne v15, v4, :cond_28

    move-object v4, v14

    check-cast v4, Lg/adz;

    iget-object v4, v4, Lg/adz;->a:Ljava/lang/Object;

    check-cast v4, Lg/cwx;

    iget-object v11, v14, Lg/eek;->ai:Lg/gks;

    iget-object v10, v10, Lg/gks;->a:Lg/vm;

    iget-object v10, v10, Lg/vm;->c:Lg/gks;

    invoke-virtual {v10}, Lg/gks;->z()Lg/gks;

    move-result-object v10

    invoke-static {v11, v10, v4}, Lg/dxg;->d(Lg/gks;Lg/gsh;Lg/cwx;)Lg/dwk;

    move-result-object v4

    sget-object v10, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v4, v10}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v0, v8, v3, v4}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    move-object/from16 v19, v5

    move/from16 v20, v6

    const/4 v15, 0x1

    :goto_18
    const/16 v16, 0x1

    goto/16 :goto_1e

    :cond_28
    sget-object v4, Lg/hay;->ARITH:Lg/hay;

    if-ne v15, v4, :cond_2f

    move-object v4, v14

    check-cast v4, Lg/ame;

    iget-object v15, v4, Lg/ame;->d:Lg/bvj;

    move-object/from16 v19, v5

    sget-object v5, Lg/bvj;->XOR:Lg/bvj;

    if-ne v15, v5, :cond_2e

    iget-object v5, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x2

    if-ne v5, v15, :cond_2e

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v15, Lg/ekh;

    if-eqz v5, :cond_2e

    check-cast v15, Lg/ekh;

    move/from16 v20, v6

    iget-wide v5, v15, Lg/ekh;->a:J

    const-wide/16 v21, 0x1

    cmp-long v15, v5, v21

    if-nez v15, :cond_2d

    new-instance v5, Lg/eek;

    sget-object v6, Lg/hay;->NOT:Lg/hay;

    const/4 v15, 0x1

    invoke-direct {v5, v6, v15}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v10}, Lg/gks;->z()Lg/gks;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v6, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v5, v6}, Lg/lh;->w(Lg/csv;)V

    iget-object v10, v4, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v10}, Lg/gks;->j()Lg/cwx;

    move-result-object v10

    sget-object v11, Lg/bjt;->BOOLEAN:Lg/bjt;

    instance-of v13, v10, Lg/cff;

    if-eqz v13, :cond_29

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v10

    check-cast v13, Lg/cff;

    iget-object v13, v13, Lg/cff;->a:Lg/bjt;

    if-eq v13, v11, :cond_2a

    :cond_29
    invoke-virtual {v10}, Lg/cwx;->h()Z

    move-result v13

    if-nez v13, :cond_2b

    invoke-virtual {v10, v11}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v10

    if-eqz v10, :cond_2b

    :cond_2a
    const/4 v10, 0x1

    goto :goto_19

    :cond_2b
    const/4 v10, 0x0

    :goto_19
    if-eqz v10, :cond_2c

    iget-object v4, v4, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v5, v4}, Lg/eek;->ax(Lg/gks;)V

    goto :goto_1a

    :cond_2c
    invoke-static {v5}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v5

    iput-object v12, v5, Lg/flv;->h:Lg/cwx;

    iget-object v4, v4, Lg/eek;->ai:Lg/gks;

    sget-object v10, Lg/cwx;->an:Lg/cff;

    invoke-static {v4, v5, v10}, Lg/dxg;->d(Lg/gks;Lg/gsh;Lg/cwx;)Lg/dwk;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg/lh;->w(Lg/csv;)V

    :goto_1a
    invoke-static {v0, v8, v3, v5}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    goto/16 :goto_18

    :cond_2d
    :goto_1b
    const/4 v15, 0x1

    goto :goto_1d

    :cond_2e
    :goto_1c
    move/from16 v20, v6

    goto :goto_1b

    :cond_2f
    move-object/from16 v19, v5

    goto :goto_1c

    :goto_1d
    invoke-virtual {v10, v0}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object v4

    iget-object v5, v10, Lg/gks;->a:Lg/vm;

    iget-object v5, v5, Lg/vm;->c:Lg/gks;

    invoke-virtual {v5}, Lg/gks;->z()Lg/gks;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lg/dxg;->d(Lg/gks;Lg/gsh;Lg/cwx;)Lg/dwk;

    move-result-object v4

    sget-object v5, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v13, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, v4, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v3}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v14, v10, v3}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    goto/16 :goto_18

    :goto_1e
    if-eqz v16, :cond_30

    const/4 v9, 0x1

    :cond_30
    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    const/4 v8, 0x1

    const/4 v13, 0x2

    goto/16 :goto_15

    :cond_31
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v6

    goto/16 :goto_e

    :goto_1f
    if-eqz v9, :cond_32

    const/4 v7, 0x1

    :cond_32
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_c

    :cond_33
    const/4 v15, 0x1

    if-nez v7, :cond_34

    const/4 v5, 0x0

    goto :goto_20

    :cond_34
    invoke-static {v0}, Lg/eak;->r(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->i(Lg/hed;)V

    const/4 v5, 0x1

    :goto_20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v2, v2, Lg/bwy;->b:Lg/mo;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lg/hed;->at:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_35
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/vm;

    iget-object v8, v6, Lg/vm;->h:Lg/ffr;

    iget-object v8, v8, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v8, Lg/cwx;

    invoke-virtual {v8}, Lg/cwx;->h()Z

    move-result v8

    if-nez v8, :cond_35

    invoke-virtual {v6}, Lg/vm;->i()Z

    move-result v8

    if-eqz v8, :cond_36

    goto :goto_21

    :cond_36
    iget-object v8, v6, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v8, :cond_37

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_37
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_38

    goto :goto_22

    :cond_38
    iget-object v8, v6, Lg/vm;->c:Lg/gks;

    invoke-virtual {v8}, Lg/gks;->aa()Lg/eek;

    move-result-object v8

    sget-object v10, Lg/hay;->CONST:Lg/hay;

    invoke-static {v8, v10}, Lg/ack;->g(Lg/eek;Lg/hay;)Lg/eek;

    move-result-object v8

    if-nez v8, :cond_39

    goto :goto_22

    :cond_39
    iget-object v10, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v8, v10}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v10

    if-nez v10, :cond_3f

    :goto_22
    iget-object v8, v6, Lg/vm;->c:Lg/gks;

    iget-object v6, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lg/gks;->aa()Lg/eek;

    move-result-object v8

    sget-object v10, Lg/hay;->CONST:Lg/hay;

    invoke-static {v8, v10}, Lg/ack;->l(Lg/eek;Lg/hay;)Z

    move-result v10

    if-nez v10, :cond_3a

    goto :goto_21

    :cond_3a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v10, v9, :cond_3b

    goto :goto_21

    :cond_3b
    iget-object v9, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v8, v9}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v9

    if-nez v9, :cond_3c

    goto :goto_21

    :cond_3c
    sget-object v5, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v8, v5}, Lg/lh;->v(Lg/csv;)V

    invoke-static {v9, v8}, Lg/ffb;->ab(Lg/fza;Lg/eek;)I

    move-result v5

    add-int/2addr v5, v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v6, :cond_46

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gks;

    sget-object v13, Lg/csv;->DONT_INLINE_CONST:Lg/csv;

    invoke-virtual {v12, v13}, Lg/lh;->v(Lg/csv;)V

    if-nez v11, :cond_3d

    goto :goto_24

    :cond_3d
    iget-object v13, v12, Lg/gsh;->ae:Lg/eek;

    if-nez v13, :cond_3e

    goto :goto_24

    :cond_3e
    invoke-virtual {v8, v0}, Lg/eek;->av(Lg/hed;)Lg/eek;

    move-result-object v14

    iget-object v15, v9, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15, v5, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v14, v14, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v14}, Lg/gks;->z()Lg/gks;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    :goto_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_3f
    iget-object v5, v6, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v5, :cond_40

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_40
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x1

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/abi;

    if-eqz v9, :cond_41

    const/4 v9, 0x0

    goto :goto_25

    :cond_41
    invoke-virtual {v8, v0}, Lg/eek;->av(Lg/hed;)Lg/eek;

    move-result-object v12

    sget-object v13, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v12, v13}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v10, v8}, Lg/ffb;->ab(Lg/fza;Lg/eek;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_42

    goto :goto_26

    :cond_42
    iget-object v14, v10, Lg/fza;->ac:Ljava/util/ArrayList;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v14, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_26
    iget-object v13, v11, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_43

    goto :goto_27

    :cond_43
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_44
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_45

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/gsh;

    check-cast v14, Lg/gks;

    iget-object v4, v14, Lg/gks;->a:Lg/vm;

    if-ne v4, v6, :cond_44

    move-object v15, v14

    :cond_45
    :goto_27
    iget-object v4, v12, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v4}, Lg/gks;->z()Lg/gks;

    move-result-object v4

    invoke-virtual {v11, v15, v4}, Lg/abi;->f(Lg/gsh;Lg/gsh;)Z

    goto :goto_25

    :cond_46
    const/4 v5, 0x1

    goto/16 :goto_21

    :cond_47
    if-nez v5, :cond_48

    const/4 v4, 0x0

    goto :goto_28

    :cond_48
    invoke-static {v0}, Lg/eak;->r(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->i(Lg/hed;)V

    const/4 v4, 0x1

    :goto_28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lg/hdd;->b:Lg/bwy;

    move-object/from16 v2, p1

    check-cast v2, Lg/hed;

    invoke-virtual {v0, v2}, Lg/bwy;->o(Lg/hed;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v2, v2, Lg/bwy;->b:Lg/mo;

    iget-object v3, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_29
    const/4 v8, 0x1

    if-ge v6, v4, :cond_55

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/vm;

    iget-object v10, v9, Lg/vm;->h:Lg/ffr;

    iget-object v11, v10, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v11, Lg/cwx;

    invoke-virtual {v11}, Lg/cwx;->h()Z

    move-result v11

    if-nez v11, :cond_54

    invoke-virtual {v9}, Lg/vm;->i()Z

    move-result v11

    if-nez v11, :cond_54

    iget-object v11, v10, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/LinkedHashSet;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_49
    :goto_2a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_50

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fog;

    invoke-interface {v12}, Lg/fog;->getType()Lg/cwx;

    move-result-object v12

    invoke-virtual {v12}, Lg/cwx;->h()Z

    move-result v13

    if-eqz v13, :cond_49

    iget-object v13, v10, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v13, Lg/cwx;

    invoke-virtual {v12, v13}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_49

    invoke-virtual {v12}, Lg/cwx;->bn()Z

    move-result v13

    if-eqz v13, :cond_49

    iget-object v13, v0, Lg/hed;->am:Lg/cci;

    iget-object v13, v13, Lg/cci;->ab:Lg/dwg;

    iget-object v13, v13, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lg/emr;->w(Lg/hed;)Ljava/util/Set;

    move-result-object v13

    new-instance v14, Lg/bpf;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v13}, Lg/bpf;-><init>(ILjava/util/Set;)V

    invoke-virtual {v12, v14}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cwx;

    if-eqz v13, :cond_4a

    goto :goto_2a

    :cond_4a
    iget-object v10, v9, Lg/vm;->c:Lg/gks;

    iget-object v11, v10, Lg/gsh;->ae:Lg/eek;

    if-eqz v11, :cond_4c

    iget-object v14, v11, Lg/eek;->ah:Lg/hay;

    sget-object v15, Lg/hay;->PHI:Lg/hay;

    if-ne v14, v15, :cond_4b

    goto :goto_2b

    :cond_4b
    iget-object v14, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v11, v14}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v14

    if-nez v14, :cond_4d

    :cond_4c
    :goto_2b
    const/4 v13, 0x0

    goto :goto_2c

    :cond_4d
    invoke-virtual {v10, v0}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object v15

    invoke-virtual {v11, v15}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v10}, Lg/gks;->z()Lg/gks;

    move-result-object v10

    iget-object v15, v11, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v15}, Lg/gks;->z()Lg/gks;

    move-result-object v15

    new-instance v5, Lg/adz;

    sget-object v13, Lg/hay;->CHECK_CAST:Lg/hay;

    invoke-direct {v5, v13, v12, v8}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v5, v10}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v5, v15}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v10, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v5, v10}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v14, v11}, Lg/ffb;->ab(Lg/fza;Lg/eek;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4e

    goto :goto_2b

    :cond_4e
    iget-object v11, v14, Lg/fza;->ac:Ljava/util/ArrayList;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v13, v5

    :goto_2c
    if-eqz v13, :cond_4f

    sget-object v5, Lg/csv;->SOFT_CAST:Lg/csv;

    invoke-virtual {v13, v5}, Lg/lh;->w(Lg/csv;)V

    goto :goto_2e

    :cond_4f
    iget-object v5, v9, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_51

    :cond_50
    const/4 v8, 0x0

    goto :goto_2e

    :cond_51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :cond_52
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gks;

    iget-object v10, v9, Lg/flv;->h:Lg/cwx;

    invoke-static {v0, v9, v10}, Lg/bwy;->i(Lg/hed;Lg/gks;Lg/cwx;)Lg/adz;

    move-result-object v9

    if-eqz v9, :cond_52

    sget-object v10, Lg/csv;->SOFT_CAST:Lg/csv;

    invoke-virtual {v9, v10}, Lg/lh;->w(Lg/csv;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_53
    :goto_2e
    add-int/2addr v7, v8

    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_29

    :cond_55
    if-eqz v7, :cond_56

    invoke-static {v0}, Lg/eak;->r(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v2, v0}, Lg/mo;->i(Lg/hed;)V

    const/4 v5, 0x1

    goto :goto_2f

    :cond_56
    const/4 v5, 0x0

    :goto_2f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lg/hed;

    iget-object v2, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v3, v2, Lg/bwy;->b:Lg/mo;

    iget-object v4, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/vm;

    iget-object v7, v7, Lg/vm;->h:Lg/ffr;

    iget-object v7, v7, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    new-instance v9, Lg/bev;

    const/16 v10, 0x1a

    invoke-direct {v9, v10}, Lg/bev;-><init>(I)V

    invoke-static {v7, v9}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v9

    if-nez v9, :cond_57

    :goto_31
    const/4 v10, 0x0

    goto :goto_33

    :cond_57
    new-instance v9, Lg/bev;

    const/16 v10, 0x1b

    invoke-direct {v9, v10}, Lg/bev;-><init>(I)V

    invoke-static {v7, v9}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_58

    goto :goto_31

    :cond_58
    invoke-virtual {v2, v7}, Lg/bwy;->n(Ljava/util/LinkedHashSet;)Lj$/util/Optional;

    move-result-object v7

    sget-object v10, Lg/cwx;->ad:Lg/gnh;

    invoke-virtual {v7, v10}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v7, Lg/btl;

    if-nez v10, :cond_59

    goto :goto_31

    :cond_59
    invoke-virtual {v7}, Lg/cwx;->q()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-eq v11, v8, :cond_5a

    goto :goto_31

    :cond_5a
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cwx;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_5b
    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fog;

    check-cast v11, Lg/bue;

    invoke-virtual {v11}, Lg/bue;->getType()Lg/cwx;

    move-result-object v12

    iget-object v13, v2, Lg/bwy;->c:Lg/cag;

    iget-object v13, v13, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v13, v8, v12}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v12

    invoke-virtual {v12}, Lg/dho;->d()Z

    move-result v13

    if-nez v13, :cond_5c

    sget-object v13, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v12, v13, :cond_5b

    :cond_5c
    iget-object v11, v11, Lg/bue;->b:Lg/adz;

    iput-object v7, v11, Lg/adz;->a:Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_5d
    :goto_33
    add-int/2addr v6, v10

    goto/16 :goto_30

    :cond_5e
    if-nez v6, :cond_5f

    goto :goto_34

    :cond_5f
    invoke-virtual {v3, v0}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v3, v0}, Lg/mo;->i(Lg/hed;)V

    const/4 v5, 0x1

    :goto_34
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v2, p1

    check-cast v2, Lg/hed;

    iget-object v0, v1, Lg/hdd;->b:Lg/bwy;

    iget-object v0, v0, Lg/bwy;->b:Lg/mo;

    :try_start_0
    iget-object v3, v2, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_35
    const/4 v8, 0x1

    if-ge v6, v4, :cond_61

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/vm;

    invoke-static {v2, v9, v8}, Lg/bwy;->m(Lg/hed;Lg/vm;Z)Z

    move-result v9

    if-eqz v9, :cond_60

    const/4 v7, 0x1

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :catch_0
    move-exception v0

    goto :goto_37

    :cond_61
    if-nez v7, :cond_62

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_38

    :cond_62
    invoke-static {v2}, Lg/eak;->r(Lg/hed;)V

    invoke-virtual {v0, v2}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v0, v2}, Lg/mo;->i(Lg/hed;)V

    iget-object v3, v2, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/vm;

    invoke-static {v2, v4, v5}, Lg/bwy;->m(Lg/hed;Lg/vm;Z)Z

    move-result v4

    if-eqz v4, :cond_63

    const/4 v8, 0x0

    goto :goto_36

    :cond_64
    if-nez v8, :cond_65

    invoke-virtual {v0, v2}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {v0, v2}, Lg/mo;->i(Lg/hed;)V

    const-string v0, "Type inference incomplete: some casts might be missing"

    invoke-virtual {v2, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_65
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_38

    :goto_37
    const-string v3, "Type inference fix \'apply assigned field type\' failed"

    invoke-virtual {v2, v3, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_38
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/hdd;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

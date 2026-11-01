.class public final Lg/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/duf;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/oz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    iget v5, v3, Lg/oz;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v4, v1, Lg/cnu;->j:Lg/cxa;

    iget-object v5, v1, Lg/cnu;->f:Lg/cbq;

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lg/cxa;->o()V

    goto/16 :goto_f

    :cond_0
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lg/cof;

    const-string v9, "@type"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v7, v8, :cond_1

    const-class v8, Ljava/util/HashMap;

    if-eq v7, v8, :cond_1

    const-class v8, Ljava/util/LinkedHashMap;

    if-ne v7, v8, :cond_2

    :cond_1
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iget v8, v4, Lg/cxa;->k:I

    sget-object v12, Lg/gar;->SortField:Lg/gar;

    iget v12, v12, Lg/gar;->mask:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_3

    instance-of v8, v6, Ljava/util/SortedMap;

    if-nez v8, :cond_3

    instance-of v8, v6, Ljava/util/LinkedHashMap;

    if-nez v8, :cond_3

    :try_start_0
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    iget-object v8, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual/range {p1 .. p2}, Lg/cnu;->o(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_4
    iget-object v8, v1, Lg/cnu;->b:Lg/aca;

    invoke-virtual {v1, v8, v0, v2}, Lg/cnu;->q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x7b

    :try_start_1
    invoke-virtual {v4, v2}, Lg/cxa;->write(I)V

    iget v2, v1, Lg/cnu;->i:I

    add-int/2addr v2, v10

    iput v2, v1, Lg/cnu;->i:I

    iget v2, v4, Lg/cxa;->k:I

    sget-object v12, Lg/gar;->WriteClassName:Lg/gar;

    iget v12, v12, Lg/gar;->mask:I

    and-int/2addr v2, v12

    if-eqz v2, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v9, v11}, Lg/cxa;->p(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lg/cxa;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    move-object v9, v7

    move-object v12, v9

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    iget-object v15, v1, Lg/cnu;->a:Ljava/util/ArrayList;

    if-nez v15, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    if-eqz v13, :cond_7

    instance-of v0, v13, Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {v13}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_7
    check-cast v13, Ljava/lang/String;

    throw v7

    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_9
    :goto_4
    iget-object v15, v1, Lg/cnu;->e:Ljava/util/ArrayList;

    if-nez v15, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v13, :cond_b

    instance-of v11, v13, Ljava/lang/String;

    if-nez v11, :cond_b

    invoke-static {v13}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_b
    move-object v11, v13

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_1d

    :goto_6
    iget-object v11, v1, Lg/cnu;->m:Ljava/util/ArrayList;

    if-eqz v11, :cond_f

    if-eqz v13, :cond_c

    instance-of v15, v13, Ljava/lang/String;

    if-nez v15, :cond_c

    invoke-static {v13}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_7

    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    check-cast v13, Ljava/lang/String;

    throw v7

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_f
    :goto_7
    iget-object v11, v1, Lg/cnu;->g:Ljava/util/ArrayList;

    if-eqz v11, :cond_13

    if-eqz v13, :cond_10

    instance-of v15, v13, Ljava/lang/String;

    if-nez v15, :cond_10

    invoke-static {v13}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    :cond_10
    move-object v15, v13

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_11

    goto :goto_9

    :cond_11
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    check-cast v15, Ljava/lang/String;

    throw v7

    :cond_12
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_13
    :goto_9
    if-nez v14, :cond_14

    iget v11, v4, Lg/cxa;->k:I

    sget-object v15, Lg/gar;->WriteMapNullValue:Lg/gar;

    iget v15, v15, Lg/gar;->mask:I

    and-int/2addr v11, v15

    if-nez v11, :cond_14

    :goto_a
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_14
    instance-of v11, v13, Ljava/lang/String;

    const/16 v15, 0x2c

    if-eqz v11, :cond_17

    move-object v11, v13

    check-cast v11, Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-virtual {v4, v15}, Lg/cxa;->write(I)V

    :cond_15
    iget v0, v4, Lg/cxa;->k:I

    sget-object v15, Lg/gar;->PrettyFormat:Lg/gar;

    iget v15, v15, Lg/gar;->mask:I

    and-int/2addr v0, v15

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lg/cnu;->p()V

    :cond_16
    invoke-virtual {v4, v11, v10}, Lg/cxa;->p(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_17
    if-nez v0, :cond_18

    invoke-virtual {v4, v15}, Lg/cxa;->write(I)V

    :cond_18
    iget v0, v4, Lg/cxa;->k:I

    sget-object v11, Lg/gar;->BrowserCompatible:Lg/gar;

    iget v11, v11, Lg/gar;->mask:I

    and-int/2addr v11, v0

    if-nez v11, :cond_1a

    sget-object v11, Lg/gar;->WriteNonStringKeyAsString:Lg/gar;

    iget v11, v11, Lg/gar;->mask:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {v1, v13}, Lg/cnu;->r(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1a
    :goto_b
    invoke-static {v13}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/cnu;->n(Ljava/lang/String;)V

    :goto_c
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Lg/cxa;->write(I)V

    :goto_d
    if-nez v14, :cond_1b

    invoke-virtual {v4}, Lg/cxa;->o()V

    :goto_e
    const/4 v0, 0x0

    goto :goto_a

    :cond_1b
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v9, :cond_1c

    invoke-interface {v12, v1, v14, v13, v7}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_e

    :cond_1c
    invoke-virtual {v5, v0}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v9

    invoke-interface {v9, v1, v14, v13, v7}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v12, v9

    move-object v9, v0

    goto :goto_e

    :cond_1d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    check-cast v11, Ljava/lang/String;

    throw v7

    :cond_1e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1f
    iput-object v8, v1, Lg/cnu;->b:Lg/aca;

    iget v0, v1, Lg/cnu;->i:I

    sub-int/2addr v0, v10

    iput v0, v1, Lg/cnu;->i:I

    iget v0, v4, Lg/cxa;->k:I

    sget-object v2, Lg/gar;->PrettyFormat:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_20

    invoke-virtual {v1}, Lg/cnu;->p()V

    :cond_20
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Lg/cxa;->write(I)V

    :goto_f
    return-void

    :goto_10
    iput-object v8, v1, Lg/cnu;->b:Lg/aca;

    throw v0

    :pswitch_0
    iget-object v5, v1, Lg/cnu;->j:Lg/cxa;

    iget-object v6, v1, Lg/cnu;->f:Lg/cbq;

    iget v7, v5, Lg/cxa;->k:I

    sget-object v8, Lg/gar;->WriteClassName:Lg/gar;

    iget v8, v8, Lg/gar;->mask:I

    and-int/2addr v7, v8

    const/4 v8, 0x0

    if-eqz v7, :cond_21

    const/4 v7, 0x1

    goto :goto_11

    :cond_21
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_22

    instance-of v10, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_22

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v8

    goto :goto_12

    :cond_22
    const/4 v4, 0x0

    :goto_12
    const-string v10, "[]"

    if-nez v0, :cond_24

    iget v0, v5, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    invoke-virtual {v5, v10}, Lg/cxa;->write(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_23
    invoke-virtual {v5}, Lg/cxa;->o()V

    goto/16 :goto_1a

    :cond_24
    move-object v11, v0

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_25

    invoke-virtual {v5, v10}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    :cond_25
    iget-object v10, v1, Lg/cnu;->b:Lg/aca;

    iget v13, v5, Lg/cxa;->k:I

    sget-object v14, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v13, v14

    if-nez v13, :cond_27

    new-instance v13, Lg/aca;

    invoke-direct {v13, v10, v0, v2, v8}, Lg/aca;-><init>(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v13, v1, Lg/cnu;->b:Lg/aca;

    iget-object v13, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-nez v13, :cond_26

    new-instance v13, Ljava/util/IdentityHashMap;

    invoke-direct {v13}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v13, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    :cond_26
    iget-object v13, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v13, v0, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :try_start_2
    iget v13, v5, Lg/cxa;->k:I

    sget-object v14, Lg/gar;->PrettyFormat:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v13, v14

    const/16 v14, 0x5d

    const/16 v15, 0x2c

    const/16 v16, 0x1

    const/16 v9, 0x5b

    if-eqz v13, :cond_2c

    invoke-virtual {v5, v9}, Lg/cxa;->write(I)V

    iget v7, v1, Lg/cnu;->i:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/cnu;->i:I

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v12, :cond_2b

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v7, :cond_28

    invoke-virtual {v5, v15}, Lg/cxa;->write(I)V

    goto :goto_14

    :catchall_1
    move-exception v0

    goto/16 :goto_1b

    :cond_28
    :goto_14
    invoke-virtual {v1}, Lg/cnu;->p()V

    if-eqz v9, :cond_2a

    iget-object v13, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v13, :cond_29

    invoke-virtual {v13, v9}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual {v1, v9}, Lg/cnu;->o(Ljava/lang/Object;)V

    const/16 p4, 0x2c

    goto :goto_15

    :cond_29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v6, v13}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v13

    const/16 p4, 0x2c

    new-instance v15, Lg/aca;

    invoke-direct {v15, v10, v0, v2, v8}, Lg/aca;-><init>(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v15, v1, Lg/cnu;->b:Lg/aca;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v1, v9, v15, v4}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_15

    :cond_2a
    const/16 p4, 0x2c

    invoke-virtual {v5}, Lg/cxa;->o()V

    :goto_15
    add-int/lit8 v7, v7, 0x1

    const/16 v15, 0x2c

    goto :goto_13

    :cond_2b
    iget v0, v1, Lg/cnu;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lg/cnu;->i:I

    invoke-virtual {v1}, Lg/cnu;->p()V

    invoke-virtual {v5, v14}, Lg/cxa;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_16
    iput-object v10, v1, Lg/cnu;->b:Lg/aca;

    goto/16 :goto_1a

    :cond_2c
    const/16 p4, 0x2c

    :try_start_3
    iget v12, v5, Lg/cxa;->m:I

    add-int/lit8 v12, v12, 0x1

    iget-object v13, v5, Lg/cxa;->l:[C

    array-length v13, v13

    if-le v12, v13, :cond_2d

    invoke-virtual {v5, v12}, Lg/cxa;->u(I)V

    :cond_2d
    iget-object v13, v5, Lg/cxa;->l:[C

    iget v15, v5, Lg/cxa;->m:I

    aput-char v9, v13, v15

    iput v12, v5, Lg/cxa;->m:I

    const/4 v9, 0x0

    :goto_17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_38

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v9, :cond_2f

    iget v13, v5, Lg/cxa;->m:I

    add-int/lit8 v13, v13, 0x1

    iget-object v15, v5, Lg/cxa;->l:[C

    array-length v15, v15

    if-le v13, v15, :cond_2e

    invoke-virtual {v5, v13}, Lg/cxa;->u(I)V

    :cond_2e
    iget-object v15, v5, Lg/cxa;->l:[C

    const/16 v17, 0x5d

    iget v14, v5, Lg/cxa;->m:I

    aput-char p4, v15, v14

    iput v13, v5, Lg/cxa;->m:I

    goto :goto_18

    :cond_2f
    const/16 v17, 0x5d

    :goto_18
    if-nez v12, :cond_30

    const-string v12, "null"

    invoke-virtual {v5, v12}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_30
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Integer;

    if-ne v13, v14, :cond_31

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Lg/cxa;->q(I)V

    goto :goto_19

    :cond_31
    const-class v14, Ljava/lang/Long;

    if-ne v13, v14, :cond_33

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    if-eqz v7, :cond_32

    invoke-virtual {v5, v12, v13}, Lg/cxa;->w(J)V

    const/16 v12, 0x4c

    invoke-virtual {v5, v12}, Lg/cxa;->write(I)V

    goto :goto_19

    :cond_32
    invoke-virtual {v5, v12, v13}, Lg/cxa;->w(J)V

    goto :goto_19

    :cond_33
    const-class v14, Ljava/lang/String;

    if-ne v13, v14, :cond_35

    check-cast v12, Ljava/lang/String;

    iget v13, v5, Lg/cxa;->k:I

    sget-object v14, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_34

    invoke-virtual {v5, v12}, Lg/cxa;->r(Ljava/lang/String;)V

    goto :goto_19

    :cond_34
    const/4 v13, 0x1

    invoke-virtual {v5, v13, v12, v8}, Lg/cxa;->v(ZLjava/lang/String;C)V

    goto :goto_19

    :cond_35
    iget v13, v5, Lg/cxa;->k:I

    sget-object v14, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v13, v14

    if-nez v13, :cond_36

    new-instance v13, Lg/aca;

    invoke-direct {v13, v10, v0, v2, v8}, Lg/aca;-><init>(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v13, v1, Lg/cnu;->b:Lg/aca;

    :cond_36
    iget-object v13, v1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v13, :cond_37

    invoke-virtual {v13, v12}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-virtual {v1, v12}, Lg/cnu;->o(Ljava/lang/Object;)V

    goto :goto_19

    :cond_37
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v6, v13}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v1, v12, v14, v4}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_19
    add-int/lit8 v9, v9, 0x1

    const/16 v14, 0x5d

    const/16 v16, 0x1

    goto/16 :goto_17

    :cond_38
    const/16 v17, 0x5d

    iget v0, v5, Lg/cxa;->m:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v5, Lg/cxa;->l:[C

    array-length v2, v2

    if-le v0, v2, :cond_39

    invoke-virtual {v5, v0}, Lg/cxa;->u(I)V

    :cond_39
    iget-object v2, v5, Lg/cxa;->l:[C

    iget v4, v5, Lg/cxa;->m:I

    aput-char v17, v2, v4

    iput v0, v5, Lg/cxa;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_16

    :goto_1a
    return-void

    :goto_1b
    iput-object v10, v1, Lg/cnu;->b:Lg/aca;

    throw v0

    :pswitch_1
    iget-object v1, v1, Lg/cnu;->j:Lg/cxa;

    iget v2, v1, Lg/cxa;->k:I

    sget-object v4, Lg/gar;->WriteEnumUsingToString:Lg/gar;

    iget v4, v4, Lg/gar;->mask:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_3b

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lg/cxa;->k:I

    sget-object v4, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v4, v4, Lg/gar;->mask:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_3a

    invoke-virtual {v1, v0}, Lg/cxa;->r(Ljava/lang/String;)V

    goto :goto_1c

    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Lg/cxa;->v(ZLjava/lang/String;C)V

    goto :goto_1c

    :cond_3b
    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Lg/cxa;->q(I)V

    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

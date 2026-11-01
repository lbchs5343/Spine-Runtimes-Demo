.class public final Lg/dso;
.super Lg/dhm;
.source "SourceFile"


# virtual methods
.method public final g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lg/ccw;->h:Lg/fzg;

    iget v3, v2, Lg/fzg;->o:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lg/fzg;->az()V

    return-object v4

    :cond_0
    iget v6, v0, Lg/ccw;->c:I

    const/4 v7, 0x2

    const-string v8, "syntax error"

    const/4 v9, 0x0

    if-ne v6, v7, :cond_1

    iput v9, v0, Lg/ccw;->c:I

    goto :goto_0

    :cond_1
    const/16 v6, 0xc

    if-ne v3, v6, :cond_17

    :goto_0
    const-class v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    instance-of v6, v1, Ljava/lang/Class;

    if-eqz v6, :cond_2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    :goto_2
    iget-object v13, v0, Lg/ccw;->i:Lg/gqc;

    invoke-virtual {v2, v13}, Lg/fzg;->bl(Lg/gqc;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xd

    const/16 v15, 0x10

    const/16 p3, 0x0

    if-nez v13, :cond_4

    iget v9, v2, Lg/fzg;->o:I

    if-ne v9, v14, :cond_3

    invoke-virtual {v2, v15}, Lg/fzg;->bg(I)V

    move-object/from16 v9, p0

    goto/16 :goto_6

    :cond_3
    if-ne v9, v15, :cond_4

    iget v9, v2, Lg/fzg;->w:I

    sget-object v7, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v7, v7, Lg/cbj;->mask:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_4

    :goto_3
    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lg/fzg;->bp()V

    const-string v7, "@type"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x4

    if-eqz v7, :cond_6

    iget v1, v2, Lg/fzg;->o:I

    if-ne v1, v9, :cond_5

    invoke-virtual {v2}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    iget-object v7, v0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v15}, Lg/fzg;->bg(I)V

    move-object/from16 v9, p0

    goto :goto_5

    :cond_5
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v7, "message"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, v2, Lg/fzg;->o:I

    if-ne v7, v5, :cond_7

    move-object v7, v4

    goto :goto_4

    :cond_7
    if-ne v7, v9, :cond_8

    invoke-virtual {v2}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v2}, Lg/fzg;->az()V

    move-object/from16 v9, p0

    move-object v11, v7

    goto :goto_5

    :cond_8
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v7, "cause"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v4, v7}, Lg/dso;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    move-object v10, v7

    goto :goto_5

    :cond_a
    move-object/from16 v9, p0

    const-string v7, "stackTrace"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-class v7, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v4, v7}, Lg/ccw;->p(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    move-object v12, v7

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget v7, v2, Lg/fzg;->o:I

    if-ne v7, v14, :cond_16

    invoke-virtual {v2, v15}, Lg/fzg;->bg(I)V

    :goto_6
    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_c
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v2, 0x0

    :goto_7
    const/4 v8, 0x1

    if-ge v2, v1, :cond_10

    aget-object v13, v0, v2

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-nez v14, :cond_d

    move-object v7, v13

    goto :goto_8

    :cond_d
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v15, Ljava/lang/String;

    if-ne v14, v8, :cond_e

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, p3

    if-ne v14, v15, :cond_e

    move-object v6, v13

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_e
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    const/4 v4, 0x2

    if-ne v14, v4, :cond_f

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, p3

    if-ne v4, v15, :cond_f

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v8

    if-ne v4, v3, :cond_f

    move-object v5, v13

    :cond_f
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    if-eqz v5, :cond_11

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v11, v0, p3

    aput-object v10, v0, v8

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_9

    :cond_11
    if-eqz v6, :cond_12

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v11, v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_9

    :cond_12
    if-eqz v7, :cond_13

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_9

    :cond_13
    const/4 v13, 0x0

    move-object v4, v13

    :goto_9
    if-nez v4, :cond_14

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :cond_14
    move-object v0, v4

    :goto_a
    if-eqz v12, :cond_15

    invoke-virtual {v0, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_15
    return-object v0

    :goto_b
    new-instance v1, Lg/bfj;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    move-object v13, v4

    goto/16 :goto_3

    :cond_17
    move-object/from16 v9, p0

    new-instance v0, Lg/bfj;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

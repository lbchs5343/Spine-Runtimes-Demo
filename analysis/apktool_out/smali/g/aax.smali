.class public final Lg/aax;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public b:Lg/cma;

.field public final c:Z


# direct methods
.method public constructor <init>(Lg/bnu;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    iget-object v0, p1, Lg/bnu;->a:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lg/bnu;->b:Ljava/lang/Class;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v2

    iput-object p1, p0, Lg/aax;->a:Ljava/lang/reflect/Type;

    iput-boolean v2, p0, Lg/aax;->c:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lg/aax;->a:Ljava/lang/reflect/Type;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/aax;->c:Z

    return-void

    :cond_1
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lg/aax;->a:Ljava/lang/reflect/Type;

    iput-boolean v2, p0, Lg/aax;->c:Z

    return-void
.end method


# virtual methods
.method public final _t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/bnu;

    iget-object v5, v3, Lg/ccw;->h:Lg/fzg;

    iget-object v6, v3, Lg/ccw;->k:Lg/mh;

    iget v7, v5, Lg/fzg;->o:I

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    invoke-virtual {v0, v1, v9}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lg/fzg;->az()V

    return-void

    :cond_0
    iget-boolean v7, v0, Lg/aax;->c:Z

    iget-object v8, v0, Lg/aax;->a:Ljava/lang/reflect/Type;

    if-eqz v7, :cond_1

    new-instance v10, Lg/grv;

    invoke-direct {v10}, Lg/grv;-><init>()V

    iput-object v8, v10, Lg/grv;->k:Ljava/lang/reflect/Type;

    move-object v11, v10

    goto :goto_0

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v9

    :goto_0
    iget-object v12, v3, Lg/ccw;->l:Lg/fpd;

    iget-object v13, v4, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v3, v12, v1, v13}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    iget-object v13, v0, Lg/aax;->b:Lg/cma;

    instance-of v14, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_e

    instance-of v14, v8, Ljava/lang/reflect/TypeVariable;

    const/16 v17, 0x0

    if-eqz v14, :cond_8

    move-object v14, v8

    check-cast v14, Ljava/lang/reflect/TypeVariable;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Class;

    if-eqz v9, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    array-length v15, v15

    move/from16 v21, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_5

    invoke-virtual {v9}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v16

    aget-object v16, v16, v7

    move/from16 v22, v7

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v9

    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move/from16 v7, v22

    :goto_3
    const/4 v9, -0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v22, 0x1

    move-object/from16 v9, v16

    goto :goto_2

    :cond_4
    move/from16 v21, v7

    :cond_5
    const/4 v7, -0x1

    goto :goto_3

    :goto_4
    if-eq v7, v9, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v7

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6, v7}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v13

    goto :goto_5

    :cond_6
    move-object v7, v8

    :cond_7
    :goto_5
    move-object/from16 v22, v8

    goto/16 :goto_b

    :cond_8
    move/from16 v21, v7

    instance-of v7, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_d

    move-object v7, v8

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v14, v9

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    aget-object v14, v9, v17

    instance-of v15, v14, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_d

    check-cast v14, Ljava/lang/reflect/TypeVariable;

    move-object v15, v2

    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    move-object/from16 v18, v7

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_9

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    move-object/from16 v16, v7

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    array-length v7, v7

    move-object/from16 v22, v8

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v23

    aget-object v23, v23, v8

    move/from16 v24, v7

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    move/from16 v23, v8

    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v7, v23

    :goto_8
    const/4 v8, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v8, v23, 0x1

    move/from16 v7, v24

    goto :goto_7

    :cond_b
    move-object/from16 v22, v8

    :cond_c
    const/4 v7, -0x1

    goto :goto_8

    :goto_9
    if-eq v7, v8, :cond_f

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v7, v8, v7

    aput-object v7, v9, v17

    new-instance v7, Lg/cnn;

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-direct {v7, v9, v8, v14}, Lg/cnn;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_b

    :cond_d
    move-object/from16 v22, v8

    goto :goto_a

    :cond_e
    move/from16 v21, v7

    move-object/from16 v22, v8

    const/16 v17, 0x0

    :cond_f
    :goto_a
    move-object/from16 v7, v22

    :goto_b
    iget v8, v5, Lg/fzg;->o:I

    iget-object v9, v5, Lg/fzg;->k:Ljava/lang/String;

    iget v14, v5, Lg/fzg;->j:I

    const/16 v15, 0xe

    if-eq v8, v15, :cond_11

    invoke-static {v8}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "exepct \'[\', but "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_10
    new-instance v2, Lg/bfj;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-nez v13, :cond_12

    invoke-virtual {v6, v7}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v13

    iput-object v13, v0, Lg/aax;->b:Lg/cma;

    :cond_12
    iget-char v2, v5, Lg/fzg;->l:C

    const/16 v8, 0x7b

    const/16 v6, 0x5b

    const/16 v20, 0x1a

    if-ne v2, v6, :cond_14

    iget v2, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, Lg/fzg;->n:I

    if-lt v2, v14, :cond_13

    const/16 v2, 0x1a

    goto :goto_c

    :cond_13
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    iput-char v2, v5, Lg/fzg;->l:C

    iput v15, v5, Lg/fzg;->o:I

    goto :goto_f

    :cond_14
    const/16 v19, 0x1

    if-ne v2, v8, :cond_16

    iget v2, v5, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, Lg/fzg;->n:I

    if-lt v2, v14, :cond_15

    const/16 v2, 0x1a

    goto :goto_d

    :cond_15
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_d
    iput-char v2, v5, Lg/fzg;->l:C

    const/16 v2, 0xc

    iput v2, v5, Lg/fzg;->o:I

    goto :goto_f

    :cond_16
    const/16 v8, 0x22

    if-ne v2, v8, :cond_17

    invoke-virtual {v5}, Lg/fzg;->ak()V

    goto :goto_f

    :cond_17
    const/16 v8, 0x5d

    if-ne v2, v8, :cond_19

    iget v2, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, Lg/fzg;->n:I

    if-lt v2, v14, :cond_18

    const/16 v2, 0x1a

    goto :goto_e

    :cond_18
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_e
    iput-char v2, v5, Lg/fzg;->l:C

    const/16 v2, 0xf

    iput v2, v5, Lg/fzg;->o:I

    goto :goto_f

    :cond_19
    invoke-virtual {v5}, Lg/fzg;->az()V

    :goto_f
    iget v2, v5, Lg/fzg;->o:I

    const/16 v8, 0x10

    if-ne v2, v8, :cond_1a

    iget v15, v5, Lg/fzg;->w:I

    sget-object v6, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v6, v6, Lg/cbj;->mask:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Lg/fzg;->az()V

    :goto_10
    const/16 v6, 0x5b

    const/16 v15, 0xe

    goto :goto_f

    :cond_1a
    const/16 v6, 0xf

    if-ne v2, v6, :cond_1f

    iget-char v2, v5, Lg/fzg;->l:C

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_1c

    iget v2, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, Lg/fzg;->n:I

    if-lt v2, v14, :cond_1b

    const/16 v2, 0x1a

    goto :goto_11

    :cond_1b
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v2, v20

    :goto_11
    iput-char v2, v5, Lg/fzg;->l:C

    iput v8, v5, Lg/fzg;->o:I

    goto :goto_12

    :cond_1c
    invoke-virtual {v5}, Lg/fzg;->az()V

    :goto_12
    invoke-virtual {v3, v12}, Lg/ccw;->v(Lg/fpd;)V

    if-eqz v21, :cond_1d

    move-object/from16 v8, v22

    check-cast v8, Ljava/lang/Class;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v11, Lg/grv;->l:Ljava/lang/Object;

    :cond_1d
    if-nez v1, :cond_1e

    iget-object v1, v4, Lg/bnu;->i:Ljava/lang/String;

    move-object/from16 v2, p3

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1e
    invoke-virtual {v0, v1, v10}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1f
    move-object/from16 v2, p3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v3, v7, v15}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v15, v3, Lg/ccw;->c:I

    const/4 v6, 0x1

    if-ne v15, v6, :cond_20

    invoke-virtual {v3, v10}, Lg/ccw;->n(Ljava/util/Collection;)V

    :cond_20
    iget v15, v5, Lg/fzg;->o:I

    if-ne v15, v8, :cond_26

    iget-char v8, v5, Lg/fzg;->l:C

    const/16 v15, 0x5b

    if-ne v8, v15, :cond_22

    iget v8, v5, Lg/fzg;->n:I

    add-int/2addr v8, v6

    iput v8, v5, Lg/fzg;->n:I

    if-lt v8, v14, :cond_21

    const/16 v8, 0x1a

    goto :goto_13

    :cond_21
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_13
    iput-char v8, v5, Lg/fzg;->l:C

    const/16 v8, 0xe

    iput v8, v5, Lg/fzg;->o:I

    const/16 v6, 0x22

    :goto_14
    const/16 v18, 0xc

    const/16 v19, 0x1

    const/16 v24, 0xe

    goto :goto_16

    :cond_22
    const/16 v6, 0x7b

    const/16 v19, 0x1

    const/16 v24, 0xe

    if-ne v8, v6, :cond_24

    iget v8, v5, Lg/fzg;->n:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lg/fzg;->n:I

    if-lt v8, v14, :cond_23

    const/16 v8, 0x1a

    goto :goto_15

    :cond_23
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_15
    iput-char v8, v5, Lg/fzg;->l:C

    const/16 v8, 0xc

    iput v8, v5, Lg/fzg;->o:I

    const/16 v6, 0x22

    const/16 v18, 0xc

    goto :goto_16

    :cond_24
    const/16 v6, 0x22

    const/16 v18, 0xc

    if-ne v8, v6, :cond_25

    invoke-virtual {v5}, Lg/fzg;->ak()V

    goto :goto_16

    :cond_25
    invoke-virtual {v5}, Lg/fzg;->az()V

    goto :goto_16

    :cond_26
    const/16 v6, 0x22

    const/16 v15, 0x5b

    goto :goto_14

    :goto_16
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_10
.end method

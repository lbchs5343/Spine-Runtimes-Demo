.class public final Lg/gwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lg/gey;
.implements Lg/fb;


# instance fields
.field public final c:Ljava/util/TreeMap;

.field public final d:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lg/gwa;->d:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lg/gwa;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    invoke-virtual {p0, v0, v1}, Lg/gwa;->r(ILg/gey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final _ag(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;
    .locals 27

    move-object/from16 v1, p1

    const-string v4, "concat"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "unshift"

    const-string v7, "toString"

    const-string v8, "splice"

    const-string v9, "sort"

    const-string v10, "some"

    const-string v11, "slice"

    const-string v12, "shift"

    const-string v13, "reverse"

    const-string v14, "reduceRight"

    const-string v15, "reduce"

    move/from16 v16, v5

    const-string v5, "push"

    move-object/from16 v17, v4

    const-string v4, "pop"

    const-string v0, "map"

    const-string v2, "lastIndexOf"

    const-string v3, "join"

    move-object/from16 v18, v6

    const-string v6, "indexOf"

    move-object/from16 v19, v7

    const-string v7, "forEach"

    move-object/from16 v20, v8

    const-string v8, "filter"

    move-object/from16 v21, v9

    const-string v9, "every"

    if-nez v16, :cond_4

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v16, v8

    move-object/from16 v8, v21

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lg/bsa;

    invoke-direct {v0, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v1, v0, v2, v3}, Lg/bfc;->j(Lg/fb;Lg/bsa;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v19, v15

    :goto_0
    move-object/from16 v15, v18

    goto :goto_2

    :cond_2
    move-object/from16 v20, v15

    goto :goto_0

    :cond_3
    :goto_1
    move-object/from16 v21, v15

    goto :goto_0

    :cond_4
    move-object/from16 v16, v8

    move-object/from16 v8, v21

    goto :goto_1

    :goto_2
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-object/from16 v18, v7

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v22

    move-object/from16 v23, v7

    const/16 v26, -0x1

    sparse-switch v22, :sswitch_data_0

    :cond_5
    move-object/from16 v14, v16

    move-object/from16 v5, v18

    :cond_6
    :goto_3
    move-object/from16 v15, v19

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    :goto_4
    move-object/from16 v14, v16

    move-object/from16 v5, v18

    :goto_5
    move-object/from16 v15, v19

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    goto :goto_4

    :sswitch_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    goto :goto_4

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xe

    goto :goto_4

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    goto :goto_4

    :sswitch_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v14, v16

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    const/4 v1, 0x1

    goto/16 :goto_8

    :sswitch_6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    goto :goto_4

    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    goto :goto_4

    :sswitch_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x9

    goto :goto_4

    :sswitch_9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    goto :goto_4

    :sswitch_c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x13

    goto :goto_4

    :sswitch_d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_4

    :sswitch_e
    move-object/from16 v5, v18

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    const/4 v1, 0x3

    goto :goto_8

    :cond_7
    move-object/from16 v14, v16

    goto/16 :goto_3

    :sswitch_f
    move-object/from16 v5, v18

    move-object/from16 v15, v20

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    :goto_6
    move-object/from16 v14, v16

    goto/16 :goto_5

    :sswitch_10
    move-object/from16 v5, v18

    move-object/from16 v14, v21

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    goto :goto_6

    :sswitch_11
    move-object/from16 v14, v16

    move-object/from16 v5, v18

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v15, v19

    const/4 v1, 0x2

    goto :goto_8

    :sswitch_12
    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v5, v18

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v15, v19

    const/4 v1, 0x0

    goto :goto_8

    :sswitch_13
    move-object/from16 v14, v16

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v1, -0x1

    :goto_8
    const-string v7, ","

    move/from16 p1, v1

    move-object/from16 v17, v9

    move-object/from16 v1, p0

    iget-object v9, v1, Lg/gwa;->c:Ljava/util/TreeMap;

    move-object/from16 v18, v14

    const-string v14, "Callback should be a method"

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    const-wide/16 v21, 0x0

    const/4 v5, 0x0

    sget-object v6, Lg/gey;->o:Lg/gdz;

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Command not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    move-object/from16 v4, p2

    iget-object v5, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v5, v4, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    instance-of v5, v3, Lg/enl;

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_9

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Argument evaluation failed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v2

    invoke-virtual {v1}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_b

    :cond_c
    new-instance v0, Lg/hbz;

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_1
    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-static {v0, v15, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lg/bsa;

    invoke-virtual {v1, v7}, Lg/gwa;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    return-object v0

    :cond_d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v0, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v6, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v6, Lg/ffr;

    invoke-virtual {v0, v4, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lg/byh;->ar(D)D

    move-result-wide v7

    double-to-int v0, v7

    if-gez v0, :cond_e

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v2

    goto :goto_c

    :cond_e
    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-le v0, v2, :cond_f

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    :cond_f
    :goto_c
    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    new-instance v7, Lg/gwa;

    invoke-direct {v7}, Lg/gwa;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_16

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gey;

    invoke-virtual {v6, v4, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v5

    invoke-interface {v5}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lg/byh;->ar(D)D

    move-result-wide v10

    double-to-int v5, v10

    const/4 v8, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_10

    move v8, v0

    :goto_d
    add-int v10, v0, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v8, v10, :cond_10

    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v10

    invoke-virtual {v7}, Lg/gwa;->s()I

    move-result v11

    invoke-virtual {v7, v11, v10}, Lg/gwa;->r(ILg/gey;)V

    invoke-virtual {v1, v0}, Lg/gwa;->q(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_17

    const/4 v2, 0x2

    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_17

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gey;

    invoke-virtual {v6, v4, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v5

    instance-of v8, v5, Lg/enl;

    if-nez v8, :cond_15

    add-int v8, v0, v2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_14

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v10

    if-lt v8, v10, :cond_11

    invoke-virtual {v1, v8, v5}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_10

    :cond_11
    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_f
    if-lt v10, v8, :cond_13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gey;

    if-eqz v12, :cond_12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v13, v12}, Lg/gwa;->r(ILg/gey;)V

    invoke-virtual {v9, v11}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v10, v10, -0x1

    goto :goto_f

    :cond_13
    invoke-virtual {v1, v8, v5}, Lg/gwa;->r(ILg/gey;)V

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid value index: "

    invoke-static {v8, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse elements to add"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_11
    if-ge v0, v2, :cond_17

    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-virtual {v7}, Lg/gwa;->s()I

    move-result v4

    invoke-virtual {v7, v4, v3}, Lg/gwa;->r(ILg/gey;)V

    invoke-virtual {v1, v0, v5}, Lg/gwa;->r(ILg/gey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_17
    return-object v7

    :pswitch_3
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v10, 0x1

    invoke-static {v8, v10, v3}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_18

    goto/16 :goto_18

    :cond_18
    invoke-virtual {v1}, Lg/gwa;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v4, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    instance-of v3, v2, Lg/fdk;

    if-eqz v3, :cond_19

    move-object v5, v2

    check-cast v5, Lg/fdk;

    goto :goto_12

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Comparator should be a method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_12
    new-instance v2, Lg/pm;

    invoke-direct {v2, v5, v4}, Lg/pm;-><init>(Lg/fdk;Lg/dpa;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, v7, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    invoke-virtual {v1, v7, v3}, Lg/gwa;->r(ILg/gey;)V

    move v7, v2

    goto :goto_13

    :pswitch_4
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v0, 0x1

    invoke-static {v0, v10, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v0, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, v4, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/fdk;

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_23

    :cond_1b
    check-cast v0, Lg/fdk;

    invoke-virtual {v1}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lg/gwa;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v1, v3}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v5

    new-instance v6, Lg/hbz;

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v6, v3}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const/4 v3, 0x3

    new-array v7, v3, [Lg/gey;

    const/16 v25, 0x0

    aput-object v5, v7, v25

    const/16 v24, 0x1

    aput-object v6, v7, v24

    const/16 v16, 0x2

    aput-object v1, v7, v16

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lg/fdk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object v5

    invoke-interface {v5}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1c

    goto/16 :goto_24

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v2, 0x2

    invoke-static {v11, v2, v3}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lg/gwa;->zzd()Lg/gey;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    int-to-double v5, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lg/byh;->ar(D)D

    move-result-wide v7

    cmpg-double v0, v7, v21

    if-gez v0, :cond_1f

    add-double/2addr v7, v5

    move-wide/from16 v9, v21

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_14

    :cond_1f
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->ar(D)D

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmpg-double v0, v2, v9

    if-gez v0, :cond_20

    add-double/2addr v5, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_15

    :cond_20
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    :cond_21
    :goto_15
    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    double-to-int v2, v7

    :goto_16
    int-to-double v3, v2

    cmpg-double v7, v3, v5

    if-gez v7, :cond_22

    invoke-virtual {v1, v2}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lg/gwa;->r(ILg/gey;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    return-object v0

    :pswitch_6
    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-static {v0, v12, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_21

    :cond_23
    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v2

    invoke-virtual {v1, v0}, Lg/gwa;->q(I)V

    return-object v2

    :pswitch_7
    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-static {v0, v13, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v7, 0x0

    :goto_17
    div-int/lit8 v2, v0, 0x2

    if-ge v7, v2, :cond_26

    invoke-virtual {v1, v7}, Lg/gwa;->f(I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v7}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v2

    invoke-virtual {v1, v7, v5}, Lg/gwa;->r(ILg/gey;)V

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lg/gwa;->f(I)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1, v3}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lg/gwa;->r(ILg/gey;)V

    :cond_24
    invoke-virtual {v1, v3, v2}, Lg/gwa;->r(ILg/gey;)V

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_26
    :goto_18
    return-object v1

    :pswitch_8
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-static {v1, v4, v3, v0}, Lg/dzm;->ak(Lg/gwa;Lg/dpa;Ljava/util/ArrayList;Z)Lg/gey;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v10, 0x1

    invoke-static {v1, v4, v3, v10}, Lg/dzm;->ak(Lg/gwa;Lg/dpa;Ljava/util/ArrayList;Z)Lg/gey;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v4, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_19

    :cond_27
    new-instance v0, Lg/hbz;

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_b
    move-object/from16 v3, p3

    const/4 v8, 0x0

    invoke-static {v8, v4, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_21

    :cond_28
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v2

    invoke-virtual {v1, v0}, Lg/gwa;->q(I)V

    return-object v2

    :pswitch_c
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10, v0, v3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/dxk;

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-nez v2, :cond_29

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    return-object v0

    :cond_29
    check-cast v0, Lg/dxk;

    invoke-static {v1, v4, v0, v5, v5}, Lg/dzm;->an(Lg/gwa;Lg/dpa;Lg/dxk;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lg/gwa;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    const/4 v5, 0x2

    invoke-static {v2, v5, v3}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v6

    :cond_2b
    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v7, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-le v0, v10, :cond_2d

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v2, v0

    :goto_1a
    move-wide v7, v2

    const-wide/16 v21, 0x0

    goto :goto_1b

    :cond_2c
    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->ar(D)D

    move-result-wide v2

    goto :goto_1a

    :goto_1b
    cmpg-double v0, v7, v21

    if-gez v0, :cond_2e

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    int-to-double v2, v0

    add-double/2addr v7, v2

    goto :goto_1c

    :cond_2d
    const-wide/16 v21, 0x0

    :cond_2e
    :goto_1c
    cmpg-double v0, v7, v21

    if-gez v0, :cond_2f

    new-instance v0, Lg/hbz;

    move-object/from16 v2, v23

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_2f
    move-object/from16 v2, v23

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_1d
    if-ltz v0, :cond_31

    invoke-virtual {v1, v0}, Lg/gwa;->f(I)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-static {v3, v6}, Lg/byh;->ae(Lg/gey;Lg/gey;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v2, Lg/hbz;

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_31
    new-instance v0, Lg/hbz;

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_e
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v10, 0x1

    invoke-static {v3, v10, v0}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-nez v2, :cond_32

    sget-object v0, Lg/gey;->p:Lg/bsa;

    return-object v0

    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/hee;

    if-nez v2, :cond_34

    instance-of v2, v0, Lg/gdz;

    if-eqz v2, :cond_33

    goto :goto_1e

    :cond_33
    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v7

    goto :goto_1f

    :cond_34
    :goto_1e
    const-string v7, ""

    :cond_35
    :goto_1f
    new-instance v0, Lg/bsa;

    invoke-virtual {v1, v7}, Lg/gwa;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v3, v19

    move-object/from16 v2, v23

    const/4 v5, 0x2

    invoke-static {v3, v5, v0}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v5, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v5, v4, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v6

    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    if-le v3, v10, :cond_38

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v3, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v3, v7

    if-ltz v0, :cond_37

    new-instance v0, Lg/hbz;

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_37
    const-wide/16 v21, 0x0

    cmpg-double v0, v3, v21

    if-gez v0, :cond_39

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v0

    int-to-double v7, v0

    add-double/2addr v3, v7

    goto :goto_20

    :cond_38
    const-wide/16 v21, 0x0

    move-wide/from16 v3, v21

    :cond_39
    :goto_20
    invoke-virtual {v1}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v7, v5

    cmpg-double v9, v7, v3

    if-ltz v9, :cond_3a

    invoke-virtual {v1, v5}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v5

    invoke-static {v5, v6}, Lg/byh;->ae(Lg/gey;Lg/gey;)Z

    move-result v5

    if-eqz v5, :cond_3a

    new-instance v0, Lg/hbz;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_3b
    new-instance v0, Lg/hbz;

    invoke-direct {v0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_10
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v20

    const/4 v10, 0x1

    invoke-static {v10, v2, v0}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/dxk;

    if-eqz v2, :cond_3d

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_3c

    :goto_21
    return-object v6

    :cond_3c
    check-cast v0, Lg/dxk;

    invoke-static {v1, v4, v0, v5, v5}, Lg/dzm;->an(Lg/gwa;Lg/dpa;Lg/dxk;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lg/gwa;

    return-object v6

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v18

    const/4 v10, 0x1

    invoke-static {v10, v2, v0}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/dxk;

    if-eqz v2, :cond_40

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_3e

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    return-object v0

    :cond_3e
    invoke-virtual {v1}, Lg/gwa;->zzd()Lg/gey;

    move-result-object v2

    check-cast v0, Lg/dxk;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4, v0, v5, v3}, Lg/dzm;->an(Lg/gwa;Lg/dpa;Lg/dxk;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lg/gwa;

    move-result-object v0

    new-instance v3, Lg/gwa;

    invoke-direct {v3}, Lg/gwa;-><init>()V

    invoke-virtual {v0}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v2

    check-cast v5, Lg/gwa;

    invoke-virtual {v5, v4}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v4

    invoke-virtual {v3}, Lg/gwa;->s()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_22

    :cond_3f
    return-object v3

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v17

    const/4 v10, 0x1

    invoke-static {v10, v2, v0}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v4, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/dxk;

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-nez v2, :cond_41

    goto :goto_24

    :cond_41
    check-cast v0, Lg/dxk;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4, v0, v2, v3}, Lg/dzm;->an(Lg/gwa;Lg/dpa;Lg/dxk;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lg/gwa;

    move-result-object v0

    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v0

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-eq v0, v2, :cond_43

    :cond_42
    :goto_23
    sget-object v0, Lg/gey;->m:Lg/bbk;

    return-object v0

    :cond_43
    :goto_24
    sget-object v0, Lg/gey;->j:Lg/bbk;

    return-object v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    invoke-virtual {v1}, Lg/gwa;->zzd()Lg/gey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v5, v4, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v5, v4, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    instance-of v5, v3, Lg/enl;

    if-nez v5, :cond_47

    move-object v5, v2

    check-cast v5, Lg/gwa;

    invoke-virtual {v5}, Lg/gwa;->s()I

    move-result v6

    instance-of v7, v3, Lg/gwa;

    if-eqz v7, :cond_46

    check-cast v3, Lg/gwa;

    invoke-virtual {v3}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v8

    add-int/2addr v9, v6

    invoke-virtual {v5, v9, v8}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_26

    :cond_46
    invoke-virtual {v5, v6, v3}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_25

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed evaluation of arguments"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final a(Ljava/lang/String;Lg/gey;)V
    .locals 1

    iget-object v0, p0, Lg/gwa;->d:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lg/gwa;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/gwa;

    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v0

    invoke-virtual {p1}, Lg/gwa;->s()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v2

    invoke-virtual {p1, v1}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final f(I)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Out of bounds index: "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(I)Lg/gey;
    .locals 1

    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lg/gwa;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Attempting to get element outside of current array"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v3, Lg/gdz;

    if-nez v4, :cond_1

    instance-of v4, v3, Lg/hee;

    if-nez v4, :cond_1

    invoke-interface {v3}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lg/bve;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/bve;-><init>(ILjava/lang/Iterable;)V

    return-object v0
.end method

.method public final q(I)V
    .locals 4

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-ltz p1, :cond_2

    sget-object p1, Lg/gey;->o:Lg/gdz;

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    if-eqz v2, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final r(ILg/gey;)V
    .locals 1

    const/16 v0, 0x7ed4

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Out of bounds index: "

    invoke-static {p1, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Array too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()I
    .locals 2

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final t()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lg/gwa;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lg/gey;
    .locals 5

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    iget-object v1, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lg/fb;

    iget-object v4, v0, Lg/gwa;->c:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    invoke-interface {v2}, Lg/gey;->zzd()Lg/gey;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lg/gey;
    .locals 2

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lg/hbz;

    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lg/gwa;->zzt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/gwa;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1
.end method

.method public final zzg()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lg/gwa;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lg/gwa;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lg/gwa;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lg/ky;

    invoke-direct {v2, v0, v1}, Lg/ky;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gwa;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

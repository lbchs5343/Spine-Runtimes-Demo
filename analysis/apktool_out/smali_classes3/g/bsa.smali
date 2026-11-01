.class public final Lg/bsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lg/gey;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/bsa;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final _ag(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;
    .locals 24

    move-object/from16 v1, p1

    const-string v4, "charAt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "trim"

    const-string v7, "concat"

    const-string v8, "toLocaleUpperCase"

    const-string v9, "toString"

    const-string v10, "toLocaleLowerCase"

    const-string v11, "toLowerCase"

    const-string v12, "substring"

    const-string v13, "split"

    const-string v14, "slice"

    const-string v15, "search"

    move/from16 v16, v5

    const-string v5, "replace"

    const-string v2, "match"

    const-string v3, "lastIndexOf"

    const-string v0, "indexOf"

    move-object/from16 v17, v4

    const-string v4, "hasOwnProperty"

    move-object/from16 v18, v6

    const-string v6, "toUpperCase"

    if-nez v16, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, " is not a String function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v4, v18

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    move-object/from16 v19, v9

    sparse-switch v18, :sswitch_data_0

    :cond_2
    move-object/from16 v9, v16

    move-object/from16 v4, v17

    :goto_1
    move-object/from16 v7, v19

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v9, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v19

    const/4 v1, 0x3

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    :goto_2
    move-object/from16 v9, v16

    move-object/from16 v4, v17

    :goto_3
    move-object/from16 v7, v19

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xd

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v9, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v19

    const/4 v1, 0x1

    goto :goto_5

    :sswitch_d
    move-object/from16 v4, v17

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v9, v16

    move-object/from16 v7, v19

    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    move-object/from16 v9, v16

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v4, v17

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    move-object/from16 v9, v16

    goto/16 :goto_3

    :sswitch_f
    move-object/from16 v4, v17

    move-object/from16 v7, v19

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    move-object/from16 v9, v16

    goto :goto_5

    :cond_4
    move-object/from16 v9, v16

    goto :goto_4

    :sswitch_10
    move-object/from16 v9, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v19

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, -0x1

    :goto_5
    const-string v16, "undefined"

    move-object/from16 v18, v0

    move/from16 p1, v1

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/bsa;->a:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Command not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v6, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lg/bsa;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_1
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v6, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lg/bsa;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_2
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v7, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :pswitch_3
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v11, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lg/bsa;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_4
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v10, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lg/bsa;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_5
    move-object/from16 v4, p3

    const/4 v2, 0x0

    invoke-static {v2, v8, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lg/bsa;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_6
    move-object/from16 v4, p3

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v12, v3, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    move-object/from16 v6, p2

    iget-object v2, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->ar(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_6

    :cond_6
    move-object/from16 v6, p2

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v4, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_7

    :goto_8
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Lg/bsa;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v4

    :pswitch_7
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v3, 0x2

    invoke-static {v13, v3, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Lg/gwa;

    const/4 v5, 0x1

    new-array v2, v5, [Lg/gey;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/gwa;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_8
    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gey;

    iget-object v5, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v5, v6, v4}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v4

    invoke-interface {v4}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lg/byh;->az(D)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_9

    :cond_a
    const-wide/32 v4, 0x7fffffff

    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_b

    new-instance v1, Lg/gwa;

    invoke-direct {v1}, Lg/gwa;-><init>()V

    return-object v1

    :cond_b
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    long-to-int v7, v4

    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    if-lez v6, :cond_c

    const/16 v17, 0x0

    aget-object v3, v1, v17

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    add-int/lit8 v3, v6, -0x1

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    move v3, v6

    goto :goto_a

    :cond_c
    move v3, v6

    const/4 v9, 0x0

    :cond_d
    :goto_a
    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_e

    add-int/lit8 v3, v3, -0x1

    :cond_e
    :goto_b
    if-ge v9, v3, :cond_f

    new-instance v4, Lg/bsa;

    aget-object v5, v1, v9

    invoke-direct {v4, v5}, Lg/bsa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    new-instance v1, Lg/gwa;

    invoke-direct {v1, v2}, Lg/gwa;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_8
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v3, 0x2

    invoke-static {v14, v3, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v2, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_d

    :cond_10
    move-wide/from16 v2, v22

    :goto_d
    invoke-static {v2, v3}, Lg/byh;->ar(D)D

    move-result-wide v2

    cmpg-double v5, v2, v22

    if-gez v5, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v7, v5

    add-double/2addr v7, v2

    move-wide/from16 v2, v22

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_e

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_e
    double-to-int v2, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_12

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v4, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_f

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    :goto_f
    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmpg-double v5, v3, v7

    if-gez v5, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_10

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_10
    double-to-int v3, v3

    sub-int/2addr v3, v2

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, Lg/bsa;

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v4

    :pswitch_9
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v15, v7, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v16

    :cond_14
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lg/hbz;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_15
    new-instance v1, Lg/hbz;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v1

    :pswitch_a
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v3, 0x2

    invoke-static {v5, v3, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    sget-object v3, Lg/gey;->o:Lg/gdz;

    if-nez v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gey;

    iget-object v2, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v6, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_16

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    :cond_16
    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_22

    instance-of v5, v3, Lg/fdk;

    if-eqz v5, :cond_17

    check-cast v3, Lg/fdk;

    new-instance v5, Lg/bsa;

    invoke-direct {v5, v2}, Lg/bsa;-><init>(Ljava/lang/String;)V

    new-instance v7, Lg/hbz;

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v7, v8}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x3

    new-array v8, v8, [Lg/gey;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/16 v21, 0x1

    aput-object v7, v8, v21

    const/16 v20, 0x2

    aput-object v0, v8, v20

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lg/fdk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object v3

    goto :goto_11

    :cond_17
    const/4 v9, 0x0

    :goto_11
    new-instance v5, Lg/bsa;

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v3, v1}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v5

    :pswitch_b
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_18

    const-string v2, ""

    goto :goto_12

    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v2, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lg/gwa;

    new-instance v3, Lg/bsa;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v1, v5, [Lg/gey;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/gwa;-><init>(Ljava/util/List;)V

    return-object v2

    :cond_19
    sget-object v1, Lg/gey;->i:Lg/hee;

    return-object v1

    :pswitch_c
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1a

    :goto_13
    move-object/from16 v2, v16

    goto :goto_14

    :cond_1a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v16

    goto :goto_13

    :goto_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1b

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    :cond_1b
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v4, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_15
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_16

    :cond_1c
    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    :goto_16
    new-instance v5, Lg/hbz;

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v5, v1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v5

    :pswitch_d
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move-object/from16 v2, v18

    move-wide/from16 v7, v22

    const/4 v3, 0x2

    invoke-static {v2, v3, v4}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1d

    :goto_17
    move-object/from16 v2, v16

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v16

    goto :goto_17

    :goto_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1e

    move-wide v3, v7

    goto :goto_19

    :cond_1e
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v4, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, v6, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_19
    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    new-instance v5, Lg/hbz;

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v5, v1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v5

    :pswitch_e
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    const/4 v5, 0x1

    invoke-static {v5, v9, v4}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    const-string v3, "length"

    invoke-interface {v2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lg/gey;->j:Lg/bbk;

    if-eqz v3, :cond_1f

    return-object v4

    :cond_1f
    invoke-interface {v2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v7, v2, v5

    if-nez v7, :cond_20

    double-to-int v2, v2

    if-ltz v2, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_20

    return-object v4

    :cond_20
    sget-object v1, Lg/gey;->m:Lg/bbk;

    return-object v1

    :pswitch_f
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_21

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    invoke-interface {v1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_21
    new-instance v1, Lg/bsa;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_22
    return-object v0

    :pswitch_10
    move-object/from16 v6, p2

    move-object/from16 v3, p3

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v6, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v6, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    invoke-interface {v2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->ar(D)D

    move-result-wide v2

    double-to-int v9, v2

    goto :goto_1b

    :cond_23
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1b
    if-ltz v9, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v9, v2, :cond_24

    goto :goto_1c

    :cond_24
    new-instance v2, Lg/bsa;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_25
    :goto_1c
    sget-object v1, Lg/gey;->p:Lg/bsa;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/bsa;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/bsa;

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lg/fms;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/fms;-><init>(Lg/bsa;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    const-string v1, "\""

    invoke-static {v1, v0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lg/gey;
    .locals 2

    new-instance v0, Lg/bsa;

    iget-object v1, p0, Lg/bsa;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bsa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lg/fms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fms;-><init>(Lg/bsa;I)V

    return-object v0
.end method

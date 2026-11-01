.class public final synthetic Lg/cnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/cnl;->a:I

    iput-object p2, p0, Lg/cnl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lg/cnl;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lg/cnl;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$DelimitedRangesSequence"

    invoke-static {v4, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-ne v3, v6, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v4, v1, v2, v3}, Lg/dcv;->bm(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    move-object v3, v8

    goto/16 :goto_5

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lg/ger;

    invoke-direct {v3, v2, v1}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List has more than one element."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "List is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v3, Lg/gex;

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v3, v2, v5, v6}, Lg/fqr;-><init>(III)V

    instance-of v5, v4, Ljava/lang/String;

    const/4 v14, 0x0

    iget v15, v3, Lg/fqr;->a:I

    iget v3, v3, Lg/fqr;->c:I

    if-eqz v5, :cond_b

    if-lez v15, :cond_6

    if-le v2, v3, :cond_7

    :cond_6
    if-gez v15, :cond_0

    if-gt v3, v2, :cond_0

    :cond_7
    move v10, v2

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v9, 0x0

    invoke-static/range {v9 .. v14}, Lg/dmc;->ca(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_9
    move-object v5, v8

    :goto_1
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lg/ger;

    invoke-direct {v3, v1, v5}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    if-eq v10, v3, :cond_0

    add-int/2addr v10, v15

    goto :goto_0

    :cond_b
    if-lez v15, :cond_c

    if-le v2, v3, :cond_d

    :cond_c
    if-gez v15, :cond_0

    if-gt v3, v2, :cond_0

    :cond_d
    move v5, v2

    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    move v6, v3

    const/4 v3, 0x0

    move v7, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v11, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lg/dcv;->bf(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    move v3, v11

    goto :goto_3

    :cond_f
    move v11, v3

    move-object v10, v8

    :goto_4
    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lg/ger;

    invoke-direct {v3, v1, v10}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    if-eq v5, v11, :cond_0

    add-int/2addr v5, v15

    move v3, v11

    goto :goto_2

    :goto_5
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lg/ger;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lg/ger;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v8, Lg/ger;

    invoke-direct {v8, v1, v2}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-object v8

    :pswitch_0
    iget-object v1, v0, Lg/cnl;->b:Ljava/lang/Object;

    check-cast v1, [C

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "$this$DelimitedRangesSequence"

    invoke-static {v2, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lg/dcv;->bi(Ljava/lang/CharSequence;[CIZ)I

    move-result v1

    if-gez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_6

    :cond_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lg/ger;

    invoke-direct {v3, v1, v2}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    :goto_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

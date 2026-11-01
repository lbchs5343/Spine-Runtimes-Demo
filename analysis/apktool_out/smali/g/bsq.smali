.class public final Lg/bsq;
.super Lg/eyh;


# instance fields
.field public a:I

.field public aa:I

.field public g:I

.field public w:I

.field public y:I


# virtual methods
.method public final dq()Lg/ewk;
    .locals 2

    new-instance v0, Lg/ays;

    invoke-direct {v0, p0}, Lg/ewk;-><init>(Lg/eyh;)V

    const/4 v1, 0x1

    iput v1, v0, Lg/ays;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lg/ays;->e:F

    iput v1, v0, Lg/ays;->g:F

    const/4 v1, -0x1

    iput v1, v0, Lg/ays;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lg/ays;->b:F

    return-object v0
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "justifyContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "flexWrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "alignContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "flexDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "alignItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const-string v0, "space_between"

    const-string v7, "space_around"

    const-string v8, "stretch"

    const-string v9, "center"

    const-string v10, "flex_start"

    const-string v11, "flex_end"

    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_3

    :sswitch_5
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_7
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_8
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_1

    const/4 v2, 0x0

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_4

    :pswitch_3
    const/4 v2, 0x2

    :goto_4
    :pswitch_4
    iput v2, p0, Lg/bsq;->a:I

    return-void

    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "wrap"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput p1, p0, Lg/bsq;->aa:I

    return-void

    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v12, 0x5

    sparse-switch p1, :sswitch_data_2

    goto :goto_5

    :sswitch_9
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :sswitch_a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x4

    goto :goto_5

    :sswitch_b
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    :sswitch_c
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x3

    goto :goto_5

    :sswitch_d
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x2

    goto :goto_5

    :sswitch_e
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x5

    :cond_a
    :goto_5
    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_d

    if-eq v1, v3, :cond_c

    if-eq v1, v4, :cond_f

    if-eq v1, v2, :cond_b

    const/4 v2, 0x5

    goto :goto_6

    :cond_b
    const/4 v2, 0x3

    goto :goto_6

    :cond_c
    const/4 v2, 0x2

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_6
    iput v2, p0, Lg/bsq;->w:I

    return-void

    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_3

    goto :goto_7

    :sswitch_f
    const-string p1, "row_reverse"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x2

    goto :goto_7

    :sswitch_10
    const-string p1, "column"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_7

    :cond_11
    const/4 v1, 0x1

    goto :goto_7

    :sswitch_11
    const-string p1, "column_reverse"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    :goto_7
    packed-switch v1, :pswitch_data_2

    const/4 v3, 0x0

    goto :goto_8

    :pswitch_8
    const/4 v3, 0x1

    goto :goto_8

    :pswitch_9
    const/4 v3, 0x3

    :goto_8
    :pswitch_a
    iput v3, p0, Lg/bsq;->y:I

    return-void

    :pswitch_b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_4

    goto :goto_9

    :sswitch_12
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_13
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_14
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_15
    const-string p1, "baseline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v1, 0x3

    goto :goto_9

    :sswitch_16
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v1, 0x4

    :cond_13
    :goto_9
    if-eqz v1, :cond_17

    if-eq v1, v5, :cond_16

    if-eq v1, v3, :cond_15

    if-eq v1, v4, :cond_14

    goto :goto_a

    :cond_14
    const/4 v2, 0x3

    goto :goto_a

    :cond_15
    const/4 v2, 0x2

    goto :goto_a

    :cond_16
    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    iput v2, p0, Lg/bsq;->g:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f600445 -> :sswitch_4
        -0x3a1ff07a -> :sswitch_3
        -0x2cdbca4c -> :sswitch_2
        0x67f69fe3 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_8
        -0x379240da -> :sswitch_7
        0x64489dcf -> :sswitch_6
        0x67fa1395 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x702b18fb -> :sswitch_e
        -0x514d33ab -> :sswitch_d
        -0x379240da -> :sswitch_c
        0x528b889c -> :sswitch_b
        0x64489dcf -> :sswitch_a
        0x67fa1395 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6a28e907 -> :sswitch_11
        -0x50c12caa -> :sswitch_10
        -0xc62c683 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x702b18fb -> :sswitch_16
        -0x669119bb -> :sswitch_15
        -0x514d33ab -> :sswitch_14
        0x528b889c -> :sswitch_13
        0x67fa1395 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ox()Landroid/view/View;
    .locals 3

    new-instance v0, Lg/cdp;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, v0, Lg/cdp;->r:I

    new-instance v1, Lg/fdy;

    invoke-direct {v1, v0}, Lg/fdy;-><init>(Lg/cdp;)V

    iput-object v1, v0, Lg/cdp;->d:Lg/fdy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg/cdp;->b:Ljava/util/List;

    new-instance v1, Lg/ta;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/cdp;->k:Lg/ta;

    iput-object p0, v0, Lg/cdp;->p:Lg/bsq;

    return-object v0
.end method

.method public final p()V
    .locals 2

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdp;

    iget v1, p0, Lg/bsq;->y:I

    invoke-virtual {v0, v1}, Lg/cdp;->setFlexDirection(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdp;

    iget v1, p0, Lg/bsq;->aa:I

    invoke-virtual {v0, v1}, Lg/cdp;->setFlexWrap(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdp;

    iget v1, p0, Lg/bsq;->a:I

    invoke-virtual {v0, v1}, Lg/cdp;->setJustifyContent(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdp;

    iget v1, p0, Lg/bsq;->g:I

    invoke-virtual {v0, v1}, Lg/cdp;->setAlignItems(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdp;

    iget v1, p0, Lg/bsq;->w:I

    invoke-virtual {v0, v1}, Lg/cdp;->setAlignContent(I)V

    return-void
.end method

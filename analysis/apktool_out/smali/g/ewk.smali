.class public Lg/ewk;
.super Ljava/lang/Object;


# instance fields
.field protected cd:Z

.field protected d:F

.field protected dq:F

.field protected f:Z

.field protected fw:Z

.field protected gh:Z

.field protected i:Z

.field protected ia:F

.field protected ig:F

.field protected iw:F

.field protected jy:Z

.field protected k:Landroid/view/ViewGroup$LayoutParams;

.field protected kk:F

.field protected le:Z

.field protected mn:F

.field protected mp:F

.field protected no:F

.field protected o:F

.field protected ox:F

.field protected p:F

.field protected q:F

.field protected r:Z

.field protected s:F

.field protected wp:Lg/eyh;


# direct methods
.method public constructor <init>(Lg/eyh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lg/ewk;->dq:F

    iput v0, p0, Lg/ewk;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lg/ewk;->ox:F

    iput v0, p0, Lg/ewk;->p:F

    iput-object p1, p0, Lg/ewk;->wp:Lg/eyh;

    return-void
.end method


# virtual methods
.method public dq()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lg/ewk;->dq:F

    float-to-int v1, v1

    iget v2, p0, Lg/ewk;->d:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-boolean v1, p0, Lg/ewk;->gh:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lg/ewk;->iw:F

    :goto_0
    float-to-int v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_0

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-boolean v1, p0, Lg/ewk;->r:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lg/ewk;->mn:F

    :goto_2
    float-to-int v1, v1

    goto :goto_3

    :cond_1
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_2

    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-boolean v1, p0, Lg/ewk;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lg/ewk;->ia:F

    :goto_4
    float-to-int v1, v1

    goto :goto_5

    :cond_2
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_4

    :goto_5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v1, p0, Lg/ewk;->le:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lg/ewk;->kk:F

    :goto_6
    float-to-int v1, v1

    goto :goto_7

    :cond_3
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_6

    :goto_7
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "marginLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "marginRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "paddingRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "paddingBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "paddingTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "minHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "marginBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "padding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "marginTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "margin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "minWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_d
    const-string v0, "paddingLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x0

    :goto_0
    const-string p2, "wrap_content"

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, -0x2

    const-string v4, "match_parent"

    const/high16 v5, -0x40000000    # -2.0f

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->iw:F

    iput-boolean v1, p0, Lg/ewk;->gh:Z

    return-void

    :pswitch_1
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->mn:F

    iput-boolean v1, p0, Lg/ewk;->r:Z

    return-void

    :pswitch_2
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->mp:F

    iput-boolean v1, p0, Lg/ewk;->f:Z

    return-void

    :pswitch_3
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->q:F

    iput-boolean v1, p0, Lg/ewk;->cd:Z

    return-void

    :pswitch_4
    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p1, p0, Lg/ewk;->wp:Lg/eyh;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lg/dlv;->ji()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lg/ewk;->wp:Lg/eyh;

    invoke-virtual {p1}, Lg/dlv;->ir()I

    move-result p1

    if-ne p1, v3, :cond_f

    iput v5, p0, Lg/ewk;->dq:F

    return-void

    :cond_f
    iput v0, p0, Lg/ewk;->dq:F

    return-void

    :cond_10
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    iput v5, p0, Lg/ewk;->dq:F

    return-void

    :cond_11
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->dq:F

    return-void

    :pswitch_5
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->ig:F

    iput-boolean v1, p0, Lg/ewk;->fw:Z

    return-void

    :pswitch_6
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->p:F

    return-void

    :pswitch_7
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->kk:F

    iput-boolean v1, p0, Lg/ewk;->le:Z

    return-void

    :pswitch_8
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->o:F

    return-void

    :pswitch_9
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->ia:F

    iput-boolean v1, p0, Lg/ewk;->i:Z

    return-void

    :pswitch_a
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->s:F

    return-void

    :pswitch_b
    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p1, p0, Lg/ewk;->wp:Lg/eyh;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lg/dlv;->ji()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lg/ewk;->wp:Lg/eyh;

    invoke-virtual {p1}, Lg/dlv;->u()I

    move-result p1

    if-ne p1, v3, :cond_12

    iput v5, p0, Lg/ewk;->d:F

    return-void

    :cond_12
    iput v0, p0, Lg/ewk;->d:F

    return-void

    :cond_13
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    iput v5, p0, Lg/ewk;->d:F

    return-void

    :cond_14
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->d:F

    return-void

    :pswitch_c
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->ox:F

    return-void

    :pswitch_d
    invoke-static {p1, p3}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/ewk;->no:F

    iput-boolean v1, p0, Lg/ewk;->jy:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_d
        -0x5201456c -> :sswitch_c
        -0x48c76ed9 -> :sswitch_b
        -0x40737a52 -> :sswitch_a
        -0x3e464339 -> :sswitch_9
        -0x300fc3ef -> :sswitch_8
        -0x113c6e87 -> :sswitch_7
        -0x7f661e7 -> :sswitch_6
        0x55f4784 -> :sswitch_5
        0x6be2dc6 -> :sswitch_4
        0xc0fb19c -> :sswitch_3
        0x2a8c788b -> :sswitch_2
        0x3a1ea90e -> :sswitch_1
        0x757a12d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutParams{mWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/ewk;->dq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->iw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->mn:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->ia:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ewk;->kk:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ewk;->k:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

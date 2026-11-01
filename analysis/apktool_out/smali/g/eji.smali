.class public final Lg/eji;
.super Lg/dlv;


# instance fields
.field public a:F

.field public aa:I

.field public ab:I

.field public g:I

.field public w:I

.field public y:Ljava/lang/String;


# virtual methods
.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "maxLines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/eji;->g:I

    return-void

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/eji;->w:I

    return-void

    :pswitch_2
    iput-object p2, p0, Lg/eji;->y:Ljava/lang/String;

    return-void

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/eji;->a:F

    return-void

    :pswitch_4
    const/high16 p1, -0x1000000

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/eji;->aa:I

    return-void

    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :sswitch_6
    const-string p1, "right"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x2

    goto :goto_4

    :sswitch_7
    const-string p1, "left"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :sswitch_8
    const-string p1, "center"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_4
    packed-switch v3, :pswitch_data_1

    const/4 v1, 0x2

    goto :goto_5

    :pswitch_6
    const/4 v1, 0x3

    goto :goto_5

    :pswitch_7
    const/16 v1, 0x11

    :goto_5
    :pswitch_8
    iput v1, p0, Lg/eji;->ab:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f826a28 -> :sswitch_5
        -0x3f64d1ca -> :sswitch_4
        -0x3bd2c532 -> :sswitch_3
        0x36452d -> :sswitch_2
        0x6234eff -> :sswitch_1
        0x174277fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lg/hdl;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg/dv;

    invoke-direct {v1, v0}, Lg/dv;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lg/hdl;->b:Lg/dv;

    iput-object p0, v0, Lg/hdl;->a:Lg/eji;

    return-object v0
.end method

.method public final p()V
    .locals 3

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    iget-object v1, p0, Lg/eji;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/hdl;->setRichText(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    const/4 v1, 0x1

    iget v2, p0, Lg/eji;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    iget v1, p0, Lg/eji;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    iget v1, p0, Lg/eji;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    iget v1, p0, Lg/eji;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/hdl;

    iget v1, p0, Lg/eji;->ab:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

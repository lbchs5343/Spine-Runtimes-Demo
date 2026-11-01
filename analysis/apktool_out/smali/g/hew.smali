.class public final Lg/hew;
.super Lg/dlv;


# instance fields
.field public a:Ljava/lang/String;

.field public g:I

.field public w:I

.field public y:I


# virtual methods
.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "progressColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "progressBgColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const/high16 p1, -0x1000000

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/hew;->w:I

    return-void

    :pswitch_1
    iput-object p2, p0, Lg/hew;->a:Ljava/lang/String;

    return-void

    :pswitch_2
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {p1, p2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    return-void

    :pswitch_4
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/hew;->g:I

    return-void

    :pswitch_5
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/hew;->y:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d3b70cf -> :sswitch_5
        -0x3f64d1ca -> :sswitch_4
        -0x3bd2c532 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x2d02d136 -> :sswitch_0
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
.end method

.method public final ox()Landroid/view/View;
    .locals 5

    new-instance v0, Lg/avt;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg/avt;->e:Landroid/view/View;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg/avt;->a:Landroid/view/View;

    iget-object v2, v0, Lg/avt;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lg/avt;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lg/avt;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, 0x3

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lg/avt;->e:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lg/avt;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Lg/avt;->c:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lg/avt;->a:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg/avt;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lg/avt;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, v0, Lg/avt;->b:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lg/avt;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p0, v0, Lg/avt;->d:Lg/hew;

    return-object v0
.end method

.method public final p()V
    .locals 2

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/avt;

    iget v1, p0, Lg/hew;->y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/avt;

    iget-object v1, p0, Lg/hew;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/avt;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/avt;

    iget v1, p0, Lg/hew;->y:I

    invoke-virtual {v0, v1}, Lg/avt;->setProgressBgColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/avt;

    iget v1, p0, Lg/hew;->w:I

    invoke-virtual {v0, v1}, Lg/avt;->setProgressColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/avt;

    iget v1, p0, Lg/hew;->g:I

    invoke-virtual {v0, v1}, Lg/avt;->setTextColor(I)V

    return-void
.end method

.class public final Lg/cpz;
.super Lg/dlv;


# instance fields
.field public a:Ljava/lang/String;

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public g:Ljava/lang/String;

.field public w:F

.field public y:I


# virtual methods
.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const-string v3, "text"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "inputType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "maxLines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string p1, "password"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_9
    const-string p1, "phone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_a
    const-string p1, "email"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_b
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :sswitch_c
    const-string p1, "number"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x2

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_c

    if-eq v2, v8, :cond_b

    if-eq v2, v7, :cond_a

    goto :goto_5

    :cond_a
    const/16 v4, 0x20

    goto :goto_5

    :cond_b
    const/4 v4, 0x2

    goto :goto_5

    :cond_c
    const/4 v4, 0x3

    goto :goto_5

    :cond_d
    const/16 v4, 0x80

    :goto_5
    iput v4, p0, Lg/cpz;->ab:I

    return-void

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/cpz;->y:I

    return-void

    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/cpz;->aa:I

    return-void

    :pswitch_3
    iput-object p2, p0, Lg/cpz;->g:Ljava/lang/String;

    return-void

    :pswitch_4
    iput-object p2, p0, Lg/cpz;->a:Ljava/lang/String;

    return-void

    :pswitch_5
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/cpz;->w:F

    return-void

    :pswitch_6
    const/high16 p1, -0x1000000

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/cpz;->ac:I

    return-void

    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_2

    :goto_6
    const/4 v4, -0x1

    goto :goto_7

    :sswitch_d
    const-string p1, "right"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 v4, 0x2

    goto :goto_7

    :sswitch_e
    const-string p1, "left"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    :sswitch_f
    const-string p1, "center"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :cond_10
    :goto_7
    packed-switch v4, :pswitch_data_1

    const/4 v1, 0x2

    goto :goto_8

    :pswitch_8
    const/4 v1, 0x3

    goto :goto_8

    :pswitch_9
    const/16 v1, 0x11

    :goto_8
    :pswitch_a
    iput v1, p0, Lg/cpz;->ad:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f826a28 -> :sswitch_7
        -0x3f64d1ca -> :sswitch_6
        -0x3bd2c532 -> :sswitch_5
        0x30de87 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x6234eff -> :sswitch_2
        0x174277fb -> :sswitch_1
        0x65be6624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3da724b7 -> :sswitch_c
        0x36452d -> :sswitch_b
        0x5c24b9c -> :sswitch_a
        0x65b3d6e -> :sswitch_9
        0x4889ba9b -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_f
        0x32a007 -> :sswitch_e
        0x677c21c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lg/ate;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lg/ate;->a:Lg/cpz;

    return-object v0
.end method

.method public final p()V
    .locals 3

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lg/cpz;->ab:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lg/cpz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    iget v2, p0, Lg/cpz;->w:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lg/cpz;->ac:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lg/cpz;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lg/cpz;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lg/cpz;->ad:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lg/cpz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

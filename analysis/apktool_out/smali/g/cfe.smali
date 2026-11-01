.class public final Lg/cfe;
.super Lg/eyh;


# instance fields
.field public a:F

.field public aa:F

.field public ab:F

.field public ac:Ljava/lang/String;

.field public ad:Z

.field public ae:Z

.field public af:Lorg/json/JSONArray;

.field public ag:Z

.field public ah:F

.field public ai:I

.field public g:I

.field public w:Lg/dlv;

.field public y:F


# virtual methods
.method public final dq(Lg/dlv;)V
    .locals 0

    iput-object p1, p0, Lg/cfe;->w:Lg/dlv;

    return-void
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dataList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "indicatorSelectedColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "pageMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "pageCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "previousMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "indicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "nextMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "indicatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "delayStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x0

    :goto_0
    const/high16 p1, -0x1000000

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Lg/cfe;->af:Lorg/json/JSONArray;

    return-void

    :pswitch_1
    invoke-static {p2, v1}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cfe;->ag:Z

    return-void

    :pswitch_2
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/cfe;->g:I

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lg/cfe;->ab:F

    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/cfe;->a:F

    return-void

    :pswitch_5
    const/high16 p1, 0x43fa0000    # 500.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/cfe;->y:F

    return-void

    :pswitch_6
    invoke-static {p2, v1}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cfe;->ae:Z

    return-void

    :pswitch_7
    iget-object p1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lg/cfe;->aa:F

    return-void

    :pswitch_8
    invoke-static {p2, v1}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cfe;->ad:Z

    return-void

    :pswitch_9
    iput-object p2, p0, Lg/cfe;->ac:Ljava/lang/String;

    return-void

    :pswitch_a
    iget-object p1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lg/cfe;->ah:F

    return-void

    :pswitch_b
    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/cfe;->ai:I

    return-void

    :pswitch_c
    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d26b61 -> :sswitch_c
        -0x5dec0d6c -> :sswitch_b
        -0x56a0457f -> :sswitch_a
        -0x4dd9466f -> :sswitch_9
        -0x2a7041f1 -> :sswitch_8
        -0xc0b287b -> :sswitch_7
        0x32c6a4 -> :sswitch_6
        0x6890047 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final dq(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lg/ekm;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/ese;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    iput-object p0, v0, Lg/ekm;->a:Lg/cfe;

    return-object v0
.end method

.method public final p()V
    .locals 4

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/cfe;->af:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/ekm;

    iget v1, p0, Lg/cfe;->ab:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lg/ese;->p(I)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->aa:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lg/ese;->s(I)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->ah:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lg/ese;->iw(I)Lg/ese;

    move-result-object v0

    iget-boolean v1, p0, Lg/cfe;->ad:Z

    invoke-virtual {v0, v1}, Lg/ese;->ox(Z)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->g:I

    invoke-virtual {v0, v1}, Lg/ese;->d(I)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->ai:I

    invoke-virtual {v0, v1}, Lg/ese;->ox(I)Lg/ese;

    move-result-object v0

    iget-object v1, p0, Lg/cfe;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/ese;->dq(Ljava/lang/String;)Lg/ese;

    move-result-object v0

    iget-boolean v1, p0, Lg/cfe;->ae:Z

    invoke-virtual {v0, v1}, Lg/ese;->p(Z)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->a:F

    invoke-virtual {v0, v1}, Lg/ese;->dq(F)Lg/ese;

    move-result-object v0

    iget-boolean v1, p0, Lg/cfe;->ag:Z

    invoke-virtual {v0, v1}, Lg/ese;->dq(Z)Lg/ese;

    move-result-object v0

    iget v1, p0, Lg/cfe;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lg/ese;->dq(I)Lg/ese;

    move-result-object v0

    iget-boolean v1, p0, Lg/cfe;->ad:Z

    invoke-virtual {v0, v1}, Lg/ese;->ox(Z)Lg/ese;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/cfe;->af:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lg/ajp;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v1, v2}, Lg/ajp;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lg/dlv;->tl:Lg/cyx;

    invoke-virtual {v1, v2}, Lg/ajp;->s(Lg/cyx;)V

    iget-object v2, p0, Lg/cfe;->w:Lg/dlv;

    invoke-virtual {v2}, Lg/dlv;->h()Lg/abm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lg/ajp;->o(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object v2

    iget-object v3, p0, Lg/cfe;->af:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/ekm;

    invoke-virtual {v1, v2}, Lg/ese;->dq(Ljava/lang/Object;)Lg/ese;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lg/cfe;->ag:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/ekm;

    invoke-virtual {v0}, Lg/ese;->dq()V

    :cond_2
    :goto_1
    return-void
.end method

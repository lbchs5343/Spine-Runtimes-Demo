.class public final Lg/pv;
.super Lg/bgh;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:F

.field public e:I


# virtual methods
.method public final varargs dq([Ljava/lang/Object;)Z
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lg/bgh;->s:Ljava/util/Map;

    const-string v2, "all"

    if-eqz v0, :cond_2

    const-string v3, "direction"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/bgh;->s:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lg/pv;->a:Ljava/lang/String;

    iget-object v0, p0, Lg/bgh;->s:Ljava/util/Map;

    const-string v3, "distance"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lg/pv;->e:I

    :cond_2
    aget-object p1, p1, v1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Lg/pv;->e:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lg/bgh;->dq:Lg/eyj;

    if-eqz v5, :cond_4

    iget-object p1, p0, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v0, p0, Lg/bgh;->ox:Lg/csh;

    iget-object v0, v0, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast v5, Lg/gsa;

    invoke-virtual {v5, p1, v0}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    return v3

    :cond_4
    iget-object v5, p0, Lg/bgh;->ia:Landroid/content/Context;

    iget v6, p0, Lg/pv;->b:F

    sub-float/2addr v0, v6

    invoke-static {v5, v0}, Lg/dxo;->e(Landroid/content/Context;F)I

    move-result v0

    iget-object v5, p0, Lg/bgh;->ia:Landroid/content/Context;

    iget v6, p0, Lg/pv;->c:F

    sub-float/2addr p1, v6

    invoke-static {v5, p1}, Lg/dxo;->e(Landroid/content/Context;F)I

    move-result p1

    iget-object v5, p0, Lg/pv;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "right"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v2, "left"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v2, "down"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v2, "up"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eqz v2, :cond_8

    if-eq v2, v3, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v4, :cond_9

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v8, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_3

    :cond_6
    neg-int v0, v0

    goto :goto_3

    :cond_7
    move v0, p1

    goto :goto_3

    :cond_8
    neg-int v0, p1

    :cond_9
    :goto_3
    iget p1, p0, Lg/pv;->e:I

    if-lt v0, p1, :cond_b

    iget-object p1, p0, Lg/bgh;->dq:Lg/eyj;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lg/pv;->b:F

    iput v0, p0, Lg/pv;->c:F

    iget-object v0, p0, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v1, p0, Lg/bgh;->ox:Lg/csh;

    iget-object v1, v1, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast p1, Lg/gsa;

    invoke-virtual {p1, v0, v1}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    :goto_4
    return v3

    :cond_b
    :goto_5
    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lg/pv;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lg/pv;->c:F

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xe9b -> :sswitch_4
        0x179a1 -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

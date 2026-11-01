.class public Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/bytedance/adsdk/ugeno/yoga/o;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bytedance/adsdk/ugeno/yoga/o;


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of p2, p1, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/o;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->ox:Lcom/bytedance/adsdk/ugeno/yoga/o;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/o;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/no;->dq()Lcom/bytedance/adsdk/ugeno/yoga/o;

    move-result-object p2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    invoke-direct {v0, p3}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->dq(Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;Lcom/bytedance/adsdk/ugeno/yoga/o;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Ljava/lang/Object;)V

    new-instance p3, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$d;

    invoke-direct {p3}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$d;-><init>()V

    invoke-virtual {p2, p3}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/mn;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->ox:Lcom/bytedance/adsdk/ugeno/yoga/o;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/o;I)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/yoga/o;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    return p1
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/yoga/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 4

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/yoga/o;

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/yoga/o;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/yoga/o;

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->dq(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/yoga/o;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->dq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VirtualYogaLayout cannot transfer children to ViewGroup of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Must either be a VirtualYogaLayout or a YogaLayout."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/VirtualYogaLayout;->ox:Lcom/bytedance/adsdk/ugeno/yoga/o;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to layout a VirtualYogaLayout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

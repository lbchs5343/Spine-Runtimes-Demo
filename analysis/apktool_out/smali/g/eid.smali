.class public final Lg/eid;
.super Lg/eyh;


# instance fields
.field public a:Ljava/util/List;

.field public aa:Ljava/util/HashMap;

.field public ab:Lg/cal;

.field public g:Lg/gco;

.field public w:Lg/dfp;

.field public y:Lcom/bytedance/sdk/component/widget/recycler/s;


# virtual methods
.method public final dq()Lg/ewk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final dq(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public final dq(Lg/dlv;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eyh;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/eid;->aa:Ljava/util/HashMap;

    invoke-virtual {p1}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lg/dlv;->h()Lg/abm;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final dq(Lg/dlv;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object p2, p0, Lg/eyh;->dq:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lg/eid;->aa:Ljava/util/HashMap;

    invoke-virtual {p1}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lg/dlv;->h()Lg/abm;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "layoutType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "grid"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/s;

    iget-object p2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg/eid;->y:Lcom/bytedance/sdk/component/widget/recycler/s;

    :cond_1
    :goto_0
    return-void
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final p()V
    .locals 4

    invoke-super {p0}, Lg/dlv;->p()V

    new-instance v0, Lg/dfp;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/dfp;->j:Z

    iput-object v1, v0, Lg/dfp;->i:Landroid/content/Context;

    iput-object v0, p0, Lg/eid;->w:Lg/dfp;

    iget-object v1, p0, Lg/dlv;->b:Lg/f;

    iput-object v1, v0, Lg/dfp;->a:Lg/f;

    iget-object v1, p0, Lg/dlv;->tl:Lg/cyx;

    iput-object v1, v0, Lg/dfp;->g:Lg/cyx;

    iget-object v1, p0, Lg/eid;->ab:Lg/cal;

    iput-object v1, v0, Lg/dfp;->b:Lg/cal;

    iget-object v1, p0, Lg/eid;->aa:Ljava/util/HashMap;

    iput-object v1, v0, Lg/dfp;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lg/eid;->a:Ljava/util/List;

    iget-object v2, v0, Lg/dfp;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/dfp;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, v0, Lg/dfp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, p0, Lg/eid;->y:Lcom/bytedance/sdk/component/widget/recycler/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setLayoutManager(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, p0, Lg/eid;->w:Lg/dfp;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setAdapter(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    new-instance v1, Lg/fxz;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ia;-><init>()V

    iput v2, v1, Lg/fxz;->a:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ia;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    new-instance v1, Lg/vt;

    new-instance v2, Lg/cit;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, p0, v2}, Lg/vt;-><init>(Lg/eid;Lg/cit;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;)V

    return-void
.end method

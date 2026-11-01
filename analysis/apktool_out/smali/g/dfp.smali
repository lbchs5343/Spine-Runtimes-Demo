.class public final Lg/dfp;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;


# instance fields
.field public a:Lg/f;

.field public b:Lg/cal;

.field public c:Ljava/lang/String;

.field public e:Ljava/util/ArrayList;

.field public f:Lg/edq;

.field public g:Lg/cyx;

.field public h:Ljava/util/HashMap;

.field public i:Landroid/content/Context;

.field public j:Z


# direct methods
.method public static k(Lg/dlv;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lg/eyh;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lg/dlv;->dq(Lorg/json/JSONObject;)V

    check-cast p0, Lg/eyh;

    invoke-virtual {p0}, Lg/eyh;->d()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dlv;

    invoke-static {v0, p1}, Lg/dfp;->k(Lg/dlv;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lg/dlv;->dq(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final dq()I
    .locals 1

    iget-object v0, p0, Lg/dfp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final dq(I)I
    .locals 1

    iget-object v0, p0, Lg/dfp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/co;

    iget p1, p1, Lg/co;->b:I

    return p1
.end method

.method public final dq(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 2

    iget-object p1, p0, Lg/dfp;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/abm;

    new-instance p2, Lg/ajp;

    iget-object v0, p0, Lg/dfp;->i:Landroid/content/Context;

    invoke-direct {p2, v0}, Lg/ajp;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lg/ajp;->o(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p1

    iput-object p1, p2, Lg/ajp;->i:Lg/dlv;

    invoke-virtual {p2, p1}, Lg/ajp;->l(Lg/dlv;)V

    if-eqz p1, :cond_0

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lg/dlv;->ir()I

    move-result v0

    invoke-virtual {p1}, Lg/dlv;->u()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lg/cmr;

    invoke-direct {v0, p0, p2}, Lg/cmr;-><init>(Lg/dfp;Landroid/view/View;)V

    iput-object p1, v0, Lg/cmr;->a:Lg/dlv;

    return-object v0

    :cond_0
    new-instance p1, Lg/aek;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dfp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/co;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lg/cmr;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/co;->a:Lorg/json/JSONObject;

    check-cast p1, Lg/cmr;

    iget-object v1, p1, Lg/cmr;->a:Lg/dlv;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p1, Lg/cmr;->a:Lg/dlv;

    invoke-virtual {v3}, Lg/dlv;->ir()I

    move-result v3

    iget-object v4, p1, Lg/cmr;->a:Lg/dlv;

    invoke-virtual {v4}, Lg/dlv;->u()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Lg/cmr;->a:Lg/dlv;

    invoke-static {v1, v0}, Lg/dfp;->k(Lg/dlv;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lg/dfp;->i:Landroid/content/Context;

    iget-object v2, p1, Lg/cmr;->a:Lg/dlv;

    invoke-virtual {p0, v1, v0, v2}, Lg/dfp;->l(Landroid/content/Context;Lorg/json/JSONObject;Lg/dlv;)V

    if-nez p2, :cond_2

    iget-object p2, p0, Lg/dfp;->b:Lg/cal;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lg/dfp;->j:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dfp;->j:Z

    iget-object p1, p1, Lg/cmr;->a:Lg/dlv;

    invoke-interface {p2, p1}, Lg/cal;->dq(Lg/dlv;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;ILjava/util/List;)V
    .locals 2

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/dfp;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/dfp;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dfp;->f:Lg/edq;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lg/edq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lg/dfp;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)V

    return-void
.end method

.method public final l(Landroid/content/Context;Lorg/json/JSONObject;Lg/dlv;)V
    .locals 7

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p3, Lg/eyh;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/dfp;->a:Lg/f;

    invoke-virtual {p3, v0}, Lg/dlv;->dq(Lg/f;)V

    iget-object v0, p0, Lg/dfp;->g:Lg/cyx;

    invoke-virtual {p3, v0}, Lg/dlv;->dq(Lg/cyx;)V

    invoke-virtual {p3, v1}, Lg/dlv;->d(Z)V

    invoke-virtual {p3}, Lg/dlv;->p()V

    check-cast p3, Lg/eyh;

    invoke-virtual {p3}, Lg/eyh;->d()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dlv;

    invoke-virtual {p0, p1, p2, v0}, Lg/dfp;->l(Landroid/content/Context;Lorg/json/JSONObject;Lg/dlv;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p3}, Lg/dlv;->le()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p3}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lg/dfp;->a:Lg/f;

    invoke-virtual {p3, v6}, Lg/dlv;->dq(Lg/f;)V

    iget-object v6, p0, Lg/dfp;->g:Lg/cyx;

    invoke-virtual {p3, v6}, Lg/dlv;->dq(Lg/cyx;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1, v4, v5}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v1}, Lg/dlv;->d(Z)V

    invoke-virtual {p3}, Lg/dlv;->p()V

    return-void
.end method

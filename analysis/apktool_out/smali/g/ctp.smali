.class public abstract Lg/ctp;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;


# instance fields
.field public c:Z

.field public d:Lg/cit;

.field public e:I


# direct methods
.method public static f(Landroid/view/View;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/16 p0, 0x32

    if-lt v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract b(ILandroid/view/View;)V
.end method

.method public final dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)V
    .locals 13

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/s;

    if-nez p2, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->ig()I

    move-result v1

    iget v2, p0, Lg/ctp;->e:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lg/ctp;->f(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget v3, p0, Lg/ctp;->e:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    if-gt v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lg/ctp;->b(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lg/ctp;->e:I

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->op()I

    move-result v0

    iget-object v2, p0, Lg/ctp;->d:Lg/cit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v3

    instance-of v3, v3, Lcom/bytedance/sdk/component/widget/recycler/s;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/s;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/s;->o()I

    move-result v6

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/s;->ig()I

    move-result v3

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_2
    if-gt v6, v3, :cond_4

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v8

    instance-of v9, v8, Lg/gqj;

    if-eqz v9, :cond_3

    check-cast v8, Lg/gqj;

    invoke-interface {v8}, Lg/gqj;->ox()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Lg/cit;->b(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v6, 0x7fffffff

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gqj;

    invoke-interface {v8}, Lg/gqj;->ox()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lg/dxo;->a:Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v9, v9

    const-wide v11, 0x4002666666666666L    # 2.3

    div-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x2

    new-array v11, v10, [I

    invoke-virtual {v8, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v11, v11, v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v10

    add-int/2addr v8, v11

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gqj;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v8

    goto :goto_3

    :cond_6
    iget-object v3, v2, Lg/cit;->a:Lg/gqj;

    if-eq v3, v4, :cond_8

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lg/gqj;->dq()V

    :cond_7
    iput-object v4, v2, Lg/cit;->a:Lg/gqj;

    :cond_8
    iget-object v2, v2, Lg/cit;->a:Lg/gqj;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lg/gqj;->d()V

    :cond_9
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lg/ctp;->c:Z

    if-nez v1, :cond_b

    :cond_a
    if-ne v0, v5, :cond_c

    :cond_b
    move-object v0, p0

    check-cast v0, Lg/vt;

    iget-object v0, v0, Lg/vt;->a:Lg/eid;

    iget-object v0, v0, Lg/eid;->g:Lg/gco;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lg/gco;->dq()V

    :cond_c
    move-object v0, p0

    check-cast v0, Lg/vt;

    iget-object v0, v0, Lg/vt;->a:Lg/eid;

    iget-object v0, v0, Lg/eid;->g:Lg/gco;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lg/gco;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)V

    :cond_d
    return-void
.end method

.method public final dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;II)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;II)V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->o()I

    move-result v1

    iput v1, p0, Lg/ctp;->e:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->ig()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lg/ctp;->f(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget v2, p0, Lg/ctp;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lg/ctp;->e:I

    :goto_0
    if-gt v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lg/ctp;->b(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lg/ctp;->c:Z

    iget-object p1, p0, Lg/ctp;->d:Lg/cit;

    iget-object v0, p1, Lg/cit;->a:Lg/gqj;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lg/gqj;->ox()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lg/cit;->a:Lg/gqj;

    invoke-interface {v0}, Lg/gqj;->ox()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lg/cit;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Lg/cit;->a:Lg/gqj;

    invoke-interface {p1}, Lg/gqj;->dq()V

    :cond_3
    move-object p1, p0

    check-cast p1, Lg/vt;

    iget-object p1, p1, Lg/vt;->a:Lg/eid;

    iget-object p1, p1, Lg/eid;->g:Lg/gco;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2, p3}, Lg/gco;->dq(II)V

    :cond_4
    return-void
.end method

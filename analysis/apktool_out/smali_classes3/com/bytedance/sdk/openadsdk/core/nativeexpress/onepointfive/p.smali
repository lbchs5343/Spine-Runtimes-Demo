.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;
.super Lcom/bytedance/sdk/component/widget/recycler/ig;


# instance fields
.field private d:Lcom/bytedance/sdk/component/widget/recycler/ia;

.field private ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field private p:I

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/ig;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->p:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->s:Z

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)F
    .locals 10

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move-object v3, v2

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-ge v8, v4, :cond_1

    move-object v2, v7

    move v4, v8

    :cond_1
    if-le v8, v5, :cond_2

    move-object v3, v7

    move v5, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_5

    return v1

    :cond_5
    int-to-float p1, p2

    mul-float p1, p1, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    int-to-float p2, v5

    div-float/2addr p1, p2

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method private dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/ia;)I
    .locals 0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;II)I
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/ig;->d(II)[I

    move-result-object p3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)F

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_0

    return p4

    :cond_0
    aget p2, p3, p4

    if-lez p2, :cond_1

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    return p1

    :cond_1
    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_0
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;
    .locals 4

    instance-of v0, p1, Lcom/bytedance/sdk/component/widget/recycler/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->o()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->mp()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->op()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p2

    if-lez p2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    return-object p0
.end method

.method private p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    return-object p1
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/iw;
    .locals 1

    instance-of p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p$1;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;Landroid/content/Context;)V

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)I
    .locals 7

    instance-of p3, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->op()I

    move-result p3

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_3

    return v0

    :cond_3
    move-object v3, p1

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;->ox(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->wp()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v1

    div-int/2addr v5, v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;II)I

    move-result p1

    if-le p1, v5, :cond_5

    move p1, v5

    :cond_5
    neg-int p2, v5

    if-ge p1, p2, :cond_6

    move p1, p2

    :cond_6
    iget p2, v3, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_8

    neg-int p1, p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :cond_8
    :goto_0
    if-nez p1, :cond_9

    return v0

    :cond_9
    add-int/2addr v2, p1

    if-gez v2, :cond_a

    goto :goto_1

    :cond_a
    move v6, v2

    :goto_1
    if-lt v6, p3, :cond_b

    return v4

    :cond_b
    return v6
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/p;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/ia;)I

    move-result p1

    aput p1, v0, v2

    return-object v0

    :cond_0
    aput v2, v0, v2

    return-object v0
.end method

.class public Lcom/bytedance/sdk/component/widget/recycler/kk;
.super Lcom/bytedance/sdk/component/widget/recycler/ig;


# instance fields
.field private d:Lcom/bytedance/sdk/component/widget/recycler/ia;

.field private ox:Lcom/bytedance/sdk/component/widget/recycler/ia;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/ig;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v5

    if-ge v5, v2, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/ia;)I
    .locals 1

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->fw()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s()I

    move-result p1

    div-int/lit8 p3, p1, 0x2

    :goto_0
    sub-int/2addr p2, p3

    return p2
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->fw()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    :goto_0
    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_2

    move-object v1, v5

    move v2, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    return-object p1
.end method

.method private s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->ox:Lcom/bytedance/sdk/component/widget/recycler/ia;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->ox:Lcom/bytedance/sdk/component/widget/recycler/ia;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/kk;->ox:Lcom/bytedance/sdk/component/widget/recycler/ia;

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
    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/kk$1;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/kk$1;-><init>(Lcom/bytedance/sdk/component/widget/recycler/kk;Landroid/content/Context;)V

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)I
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->op()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/kk;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/kk;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    if-lez p2, :cond_6

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-lez p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    instance-of p2, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;->ox(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_8

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-ltz p2, :cond_7

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    sub-int/2addr v2, v4

    return v2

    :cond_8
    if-eqz v3, :cond_9

    add-int/2addr v2, v4

    :cond_9
    return v2
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/ia;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/sdk/component/widget/recycler/kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/ia;)I

    move-result p1

    aput p1, v0, v3

    return-object v0

    :cond_1
    aput v2, v0, v3

    return-object v0
.end method

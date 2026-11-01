.class public abstract Lcom/bytedance/sdk/component/widget/recycler/ig;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ig;


# instance fields
.field private d:Landroid/widget/Scroller;

.field dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field private final ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ig;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/ig$1;-><init>(Lcom/bytedance/sdk/component/widget/recycler/ig;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;

    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getOnFlingListener()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setOnFlingListener(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ig;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)Z
    .locals 2

    instance-of v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;)V

    const/4 p1, 0x1

    return p1
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setOnFlingListener(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$ig;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/iw;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/ig$2;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/ig$2;-><init>(Lcom/bytedance/sdk/component/widget/recycler/ig;Landroid/content/Context;)V

    return-object p1
.end method

.method public d(II)[I
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->d:Landroid/widget/Scroller;

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->d:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->d:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)I
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget v3, v0, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {v3, v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(II)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/ig;->ox()V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/ig;->d()V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->d:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq()V

    :cond_1
    return-void
.end method

.method public dq(II)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getAdapter()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/ig;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;)[I
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/iw;

    move-result-object p1

    return-object p1
.end method

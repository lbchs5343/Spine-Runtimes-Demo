.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;
.super Ljava/lang/Object;


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

.field dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

.field p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    invoke-direct {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    return-void
.end method

.method private d(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "easy_pfwv"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->p()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->p()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->p()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->p()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private dq(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 p1, 0x8

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return p1

    :cond_5
    :goto_2
    return v2
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->p()V

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;)V

    return-object v0
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ox()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;->d()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(IZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    if-eqz v2, :cond_3

    move-object p2, p1

    :cond_3
    invoke-virtual {v0, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->ox()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/kx$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->d()I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->dq()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(IZ)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    if-eqz v4, :cond_7

    move-object p2, p1

    :cond_7
    if-eq v0, v1, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {v5, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V

    :cond_0
    return-void
.end method

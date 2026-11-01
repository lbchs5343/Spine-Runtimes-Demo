.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->er()Z

    move-result v2

    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->wn()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->dq(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;->mn()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->d(ZZ)V

    return-void
.end method

.method public dq(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->d(Z)V

    :cond_0
    return-void
.end method

.method public dq(ZIZ)V
    .locals 4

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)I

    move-result p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->xz()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;

    move-result-object v0

    add-int/2addr p3, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->op()J

    move-result-wide v2

    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(ZIJ)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)I

    move-result p3

    add-int/lit8 v0, p2, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    rem-int p3, p2, p3

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

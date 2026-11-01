.class Lcom/bytedance/sdk/openadsdk/core/i/ox$5;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/ox;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;->p()V

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->mp(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;->dq(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->o(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->no(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;F)F

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->no(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;F)F

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->o(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->no(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->no(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;->dq(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method

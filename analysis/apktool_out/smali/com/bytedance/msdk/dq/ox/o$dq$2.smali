.class Lcom/bytedance/msdk/dq/ox/o$dq$2;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/o$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/o$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/o$dq;->ox(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/o$dq;->p(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/o$dq;->mn(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/o$dq;->ia(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(FF)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/ox/o$dq;->dq(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/ox/o$dq;->d(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/o$dq;->s(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq$2;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/o$dq;->iw(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

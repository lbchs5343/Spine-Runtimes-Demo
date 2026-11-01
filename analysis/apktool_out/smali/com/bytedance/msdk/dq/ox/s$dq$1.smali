.class Lcom/bytedance/msdk/dq/ox/s$dq$1;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/s$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/s$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/s$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/s$dq;->ox(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/s$dq;->p(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/s$dq;->mn(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/s$dq;->ia(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(FF)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/ox/s$dq;->dq(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/ox/s$dq;->d(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/s$dq;->s(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/s$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/s$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/s$dq;->iw(Lcom/bytedance/msdk/dq/ox/s$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

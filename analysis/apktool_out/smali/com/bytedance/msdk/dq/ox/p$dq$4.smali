.class Lcom/bytedance/msdk/dq/ox/p$dq$4;
.super Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/p$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/p$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/p$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->q(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->jy(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->uh()V

    :cond_0
    return-void
.end method

.method public dq(II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/p$dq;->ig(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/p$dq;->mp(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const-string v2, "Android MediaPlay Error Code :"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/p$dq;->r(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/p$dq;->i(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(JJ)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->o(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->no(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->by()V

    :cond_0
    return-void
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->f(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->fw(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->xz()V

    :cond_0
    return-void
.end method

.method public p(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->cd(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->gh(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->yy()V

    :cond_0
    return-void
.end method

.method public s(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->le(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/p$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/p$dq;->k(Lcom/bytedance/msdk/dq/ox/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    :cond_0
    return-void
.end method

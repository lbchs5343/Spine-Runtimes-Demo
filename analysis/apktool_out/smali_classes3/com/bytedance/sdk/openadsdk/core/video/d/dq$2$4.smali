.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/api/dq;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;Lcom/bykv/vk/openvk/component/video/api/ox/d;Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->d:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result v0

    const/16 v1, 0x134

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->d:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eq v1, v2, :cond_1

    instance-of v1, v2, Lcom/bykv/vk/openvk/component/video/dq/p/p;

    if-eqz v1, :cond_1

    check-cast v2, Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->r()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignore errorCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoController"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->q(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jy(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->f(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->fw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cd(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    iget-wide v6, v6, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->d(JI)V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->ox:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->t(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->p(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->gx(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->by(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->dq:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->uh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->yy(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->v(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ds(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    :cond_1
    return-void
.end method

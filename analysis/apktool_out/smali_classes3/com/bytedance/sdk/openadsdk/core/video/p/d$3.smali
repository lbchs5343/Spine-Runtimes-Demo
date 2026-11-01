.class final Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

.field final synthetic ox:J

.field final synthetic p:Lcom/bykv/vk/openvk/component/video/api/ox/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;JLcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->ox:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "pit cancel: "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "VideoPreloadUtils"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->ox:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "pit onVideoPreloadSuccess: "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "VideoPreloadUtils"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->ox:J

    sub-long v6, v0, v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    move v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;JILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "pit onVideoPreloadFail: "

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "VideoPreloadUtils"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

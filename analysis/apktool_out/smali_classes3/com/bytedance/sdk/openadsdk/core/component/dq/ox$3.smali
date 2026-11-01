.class Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;
.super Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private d:J

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public d(J)V
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    sub-long/2addr v0, v4

    sub-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq()D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 v4, 0x3e8

    mul-long p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->ox(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ir()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(II)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extra_error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "video_size"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "play_start_error"

    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public dq(J)V
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    sub-long/2addr v0, v4

    sub-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq()D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 v4, 0x3e8

    mul-long p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public dq(JII)V
    .locals 8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq()D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, p1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {v4, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v4, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(I)V

    invoke-virtual {v4, p4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(I)V

    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    const-string p2, "customer error"

    invoke-static {p1, v4, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/lang/String;)V

    return-void
.end method

.method public ox()V
    .locals 8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq()D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->s(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public ox(J)V
    .locals 8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq()D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->d:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, p1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {v4, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s(I)V

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    const/4 p2, 0x0

    invoke-static {p1, v4, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/util/Map;)V

    return-void
.end method

.method public p()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "feed_auto_play"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    const-string v2, "material_meta"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_slot"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    :cond_1
    return-void
.end method

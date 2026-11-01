.class public Lcom/bytedance/sdk/openadsdk/core/dq/ox;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dq/d;


# instance fields
.field private dq:J


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox;->dq:J

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox;->dq:J

    return-wide v0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/ox$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/ox$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/ox$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dq/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

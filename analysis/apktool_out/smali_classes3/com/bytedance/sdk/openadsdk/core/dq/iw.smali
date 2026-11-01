.class public Lcom/bytedance/sdk/openadsdk/core/dq/iw;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dq/d;


# instance fields
.field private dq:J


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw;->dq:J

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/iw;)V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/iw;ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw;->dq:J

    return-wide v0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/iw$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dq/iw$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/iw$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dq/iw$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/iw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u672a\u77e5\u5f02\u5e38"

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/iw$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/iw;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/p/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/d/dq;


# instance fields
.field private final dq:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;->dq:I

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/d/s;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;->dq:I

    return p0
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;->dq:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa037a0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->p(J)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s$1;

    const-string v1, "PreloadStrategyShowDelete-onNetworkResponse"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/d/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/d/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s$2;

    const-string v1, "PreloadStrategyShowDelete-onShow"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/d/s$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/d/s;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;->dq:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->p(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;->dq:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    return-object p1
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    return-void
.end method

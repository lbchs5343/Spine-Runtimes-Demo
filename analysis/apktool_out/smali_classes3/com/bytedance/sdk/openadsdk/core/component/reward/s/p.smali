.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;


# instance fields
.field private d:J

.field dq:J

.field private ox:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->ox()V

    return-void
.end method

.method public dq(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    return-wide v0
.end method

.method public dq()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->p()V

    return-void
.end method

.method public ox()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    sub-long v2, v0, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    :cond_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    return-void
.end method

.method public p()V
    .locals 8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    sub-long/2addr v0, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->ox:J

    return-void
.end method

.method public s()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->ox:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/p;->dq:J

    return-void
.end method

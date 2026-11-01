.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

.field private dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

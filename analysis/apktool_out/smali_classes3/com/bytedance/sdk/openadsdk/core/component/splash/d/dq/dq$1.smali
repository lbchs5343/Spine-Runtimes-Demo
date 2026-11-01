.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;JLcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->dq:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    const-string v0, "lqmt"

    const-string v1, "\u7f13\u5b58\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7f13\u5b58\u8bfb\u53d6\u603b\u8017\u65f6\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->dq:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lqmt"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const-string v0, "no ad model cache"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const-string v0, "no splash material"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void
.end method

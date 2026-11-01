.class Lcom/bytedance/sdk/openadsdk/q/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/q/d;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/q/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/q/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/q/d;->dq(Lcom/bytedance/sdk/openadsdk/q/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/q/d;->d(Lcom/bytedance/sdk/openadsdk/q/d;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/d;->ox(Lcom/bytedance/sdk/openadsdk/q/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/d;->p(Lcom/bytedance/sdk/openadsdk/q/d;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/d$1;->dq:Lcom/bytedance/sdk/openadsdk/q/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/d;->p(Lcom/bytedance/sdk/openadsdk/q/d;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u81ea\u52a8\u68c0\u6d4b\u5361\u6b7b"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

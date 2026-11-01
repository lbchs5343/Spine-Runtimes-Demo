.class Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq(Lorg/json/JSONObject;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->dq:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$ox;)V

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->dq:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(Lorg/json/JSONObject;)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wait time itException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "xgc_sen"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/utils/i;->d()V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    const-wide/16 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(IJJ)V

    :cond_1
    :goto_1
    return-void
.end method

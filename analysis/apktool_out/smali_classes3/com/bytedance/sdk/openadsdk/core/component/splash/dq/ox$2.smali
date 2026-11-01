.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->dq:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lqmt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readcache-deleteCacheMeta start >>  rit: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->dq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

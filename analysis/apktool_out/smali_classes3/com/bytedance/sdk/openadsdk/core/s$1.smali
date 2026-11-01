.class Lcom/bytedance/sdk/openadsdk/core/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/s;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/s;->dq(Lcom/bytedance/sdk/openadsdk/core/s;Z)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/s;->dq(Lcom/bytedance/sdk/openadsdk/core/s;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/s;->dq(Lcom/bytedance/sdk/openadsdk/core/s;J)J

    const-string v4, "tt_sp_app_env"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v4

    const-string v5, "last_app_env_time"

    invoke-interface {v4, v5, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_0
    return-object v0
.end method

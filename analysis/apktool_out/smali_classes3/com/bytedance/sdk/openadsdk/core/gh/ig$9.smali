.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ia(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;->d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;->dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;->dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/no/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    const-string v1, "app_env"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(J)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method

.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lorg/json/JSONObject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->dq:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->dq:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public dq()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    const-string v2, "save_jump_success_ad_tag"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$9;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "save_dpl_success_materialmeta"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

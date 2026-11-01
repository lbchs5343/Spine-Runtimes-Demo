.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/ds;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->ox:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    int-to-long v8, v3

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->d()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->ox()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sp()J

    move-result-wide v12

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v3

    const-wide/16 v14, 0x3e8

    mul-long v14, v14, v3

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v16

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->ox:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;ZJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveMeta >>  rit: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/ox$1;->ox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " saveDb cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lqmt"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

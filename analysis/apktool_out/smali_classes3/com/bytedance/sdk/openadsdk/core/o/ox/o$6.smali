.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->d(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6;->dq:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

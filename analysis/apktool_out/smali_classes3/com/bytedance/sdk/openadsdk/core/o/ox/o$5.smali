.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->dq:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->d:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->dq:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$5;->d:Z

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Landroid/content/Context;)V

    return-void
.end method

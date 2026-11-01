.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->d:Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->dq:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->d:Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->d:Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$8;->dq:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method

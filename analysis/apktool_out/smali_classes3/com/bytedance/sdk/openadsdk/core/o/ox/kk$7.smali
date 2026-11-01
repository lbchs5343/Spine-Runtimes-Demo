.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->d:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->ox:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->d:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->ox:Z

    invoke-static {p1, v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$7;->d:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 0

    return-void
.end method

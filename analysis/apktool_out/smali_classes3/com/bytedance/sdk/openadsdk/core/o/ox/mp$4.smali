.class Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->gh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->dq:Ljava/util/Map;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->dq:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->iw(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->dq:Ljava/util/Map;

    const-string v1, "downloadButtonClickListener"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->mn(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Lcom/bytedance/sdk/openadsdk/core/r/ox;)V

    return-void
.end method

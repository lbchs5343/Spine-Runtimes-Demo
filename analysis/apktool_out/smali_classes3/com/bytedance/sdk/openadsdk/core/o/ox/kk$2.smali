.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->iw(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/ir/op;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->d:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->f()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    const-string v1, "downloadButtonClickListener"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->d:Z

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Ljava/util/Map;)V

    return-void
.end method

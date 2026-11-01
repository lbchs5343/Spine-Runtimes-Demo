.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;
.super Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->p(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;Ljava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->dq:Ljava/util/Map;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->d:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->dq:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;)Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;)Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setDownloadMode(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->d:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->dq:Ljava/util/Map;

    const-string v1, "downloadButtonClickListener"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->dq:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$1;->dq:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Z)V

    :cond_2
    :goto_0
    return-void
.end method

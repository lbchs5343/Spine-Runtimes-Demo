.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/IDownloadButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->iw(Lorg/json/JSONObject;Z)V
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
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->dq:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->dq:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;)Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;)Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setDownloadMode(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->f()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->dq:Ljava/util/Map;

    const-string v1, "downloadButtonClickListener"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->dq:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->d:Z

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$2;->dq:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

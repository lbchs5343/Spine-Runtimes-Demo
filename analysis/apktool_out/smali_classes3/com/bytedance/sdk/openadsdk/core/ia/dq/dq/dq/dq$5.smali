.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;
.super Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->dq:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->d:Ljava/util/Map;

    invoke-virtual {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;->d:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 0

    return-void
.end method

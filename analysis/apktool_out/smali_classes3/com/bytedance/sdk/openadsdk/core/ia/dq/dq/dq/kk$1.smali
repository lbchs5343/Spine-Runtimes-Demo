.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->dq:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->dq:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Lcom/bytedance/sdk/component/no/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method

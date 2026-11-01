.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->dq(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->dq:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->dq:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Lcom/bytedance/sdk/component/no/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

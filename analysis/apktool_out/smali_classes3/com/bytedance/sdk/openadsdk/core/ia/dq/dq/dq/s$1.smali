.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;->dq(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->dq:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->dq:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;)Lcom/bytedance/sdk/component/no/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return-void
.end method

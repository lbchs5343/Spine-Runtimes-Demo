.class Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(I)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;Ljava/util/Map;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(I)V

    return-void
.end method

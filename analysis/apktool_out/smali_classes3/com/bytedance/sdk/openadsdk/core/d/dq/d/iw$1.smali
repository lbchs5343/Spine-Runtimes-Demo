.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->ox(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->p()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

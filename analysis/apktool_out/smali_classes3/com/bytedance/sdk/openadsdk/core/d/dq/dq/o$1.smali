.class Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->p()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->i()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p()Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p()Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

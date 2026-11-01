.class Lcom/bytedance/sdk/openadsdk/core/component/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->i()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->ir()Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p()Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

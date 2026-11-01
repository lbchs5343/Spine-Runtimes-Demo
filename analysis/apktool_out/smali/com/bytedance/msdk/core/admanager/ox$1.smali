.class Lcom/bytedance/msdk/core/admanager/ox$1;
.super Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/d/s;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/ox;

.field final synthetic dq:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/ox$1;->d:Lcom/bytedance/msdk/core/admanager/ox;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/ox$1;->dq:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/ox$1;->dq:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/bytedance/msdk/core/admanager/ox$1;->dq:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

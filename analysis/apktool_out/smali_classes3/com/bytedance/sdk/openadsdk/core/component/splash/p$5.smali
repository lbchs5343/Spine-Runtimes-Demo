.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View$OnClickListener;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View$OnClickListener;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

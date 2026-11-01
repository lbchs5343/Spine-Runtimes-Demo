.class Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

.field final synthetic dq:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->dq:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->dq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Z)V

    return-void
.end method

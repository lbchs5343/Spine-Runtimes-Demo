.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    :cond_3
    :goto_2
    return-void
.end method

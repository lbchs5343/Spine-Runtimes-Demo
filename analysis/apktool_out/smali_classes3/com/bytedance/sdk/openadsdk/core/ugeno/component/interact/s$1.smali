.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)V

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->p:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->p:Z

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

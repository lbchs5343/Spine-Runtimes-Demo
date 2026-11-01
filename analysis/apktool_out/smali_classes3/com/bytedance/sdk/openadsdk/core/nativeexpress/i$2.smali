.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_0
    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dq(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(F)V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->iw(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;I)V

    return-void
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public getActualPlayDuration()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getActualPlayDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->p()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s()V

    :cond_0
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setPauseFromExpressView(Z)V

    :cond_0
    return-void
.end method

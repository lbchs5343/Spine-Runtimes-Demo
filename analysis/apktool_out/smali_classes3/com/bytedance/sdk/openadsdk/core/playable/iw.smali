.class Lcom/bytedance/sdk/openadsdk/core/playable/iw;
.super Lcom/bytedance/sdk/openadsdk/core/video/d/dq;


# instance fields
.field private op:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->op:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(Z)V

    return-void
.end method


# virtual methods
.method public O_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iw(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->op:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d()V

    :cond_1
    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public mn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->op:Z

    return-void
.end method

.method public wp()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->yy()V

    return-void
.end method

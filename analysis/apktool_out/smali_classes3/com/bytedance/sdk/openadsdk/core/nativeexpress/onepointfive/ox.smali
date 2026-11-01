.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;


# instance fields
.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;",
            ">;"
        }
    .end annotation
.end field

.field dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

.field ox:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;ILcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->d:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->ox:I

    return-void
.end method

.method private iw()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;->getCurrentCompletelyVisibleAdPosition()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->ox:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->dq()V

    :cond_0
    return-void
.end method

.method public dq(II)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->dq(II)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->dq(JJ)V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->ox()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->p()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ox;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;->s()V

    :cond_0
    return-void
.end method

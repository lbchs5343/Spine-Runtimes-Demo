.class Lcom/bytedance/sdk/openadsdk/core/i/ox$1;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->le()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    instance-of v2, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz v2, :cond_1

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-wide v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-wide v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v0, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_2
    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_3
    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->no()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dq(F)V
    .locals 0

    return-void
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 4

    instance-of p2, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/r/k;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-wide v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-wide v2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    :goto_1
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/o;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ox;)Z

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;ZLjava/lang/String;I)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public getActualPlayDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/i/ox$1;->dq()J

    move-result-wide v0

    return-wide v0
.end method

.method public ox()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--play curr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    invoke-virtual {v0}, Lg/gkb;->iw()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->u(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->c(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->er(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ce(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->c(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

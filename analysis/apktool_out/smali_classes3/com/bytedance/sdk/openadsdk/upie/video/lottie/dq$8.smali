.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->i()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    new-instance v1, Lg/gkb;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mn(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/gkb;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lg/gkb;)Lg/gkb;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ia(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/gkb;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lg/gkb;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)F

    move-result v1

    invoke-virtual {v0, v1}, Lg/gkb;->setSpeed(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->no(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v2, "--==--onPrepared"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->q(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->jy(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V

    goto :goto_2

    :cond_3
    return-void
.end method

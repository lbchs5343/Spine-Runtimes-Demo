.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--play err, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

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

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-interface {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z

    return-void
.end method

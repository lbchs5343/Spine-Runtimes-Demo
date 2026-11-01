.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/upie/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/upie/d$dq<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- lottie jsonStr load fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    const v1, 0xea68

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {v0, v1, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->dq:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {v0, v1, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==-- lottie jsonStr ok"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    return-void
.end method

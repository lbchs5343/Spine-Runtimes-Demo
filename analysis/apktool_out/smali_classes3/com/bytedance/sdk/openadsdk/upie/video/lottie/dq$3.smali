.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->bl(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;III)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ji(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    const-string p2, ""

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const-string v2, "lottie\u97f3\u9891\u64ad\u653e\u5931\u8d25:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Z)V
    .locals 0

    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 0

    return-void
.end method

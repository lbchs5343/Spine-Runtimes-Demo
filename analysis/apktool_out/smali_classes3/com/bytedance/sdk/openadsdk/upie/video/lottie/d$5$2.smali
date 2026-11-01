.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d(Lcom/bykv/vk/openvk/component/video/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ia(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->dq:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$2;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)V

    return-void
.end method

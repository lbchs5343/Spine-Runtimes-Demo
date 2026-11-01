.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$1;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->dq:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5$1;->dq:J

    invoke-interface {v1, v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V

    return-void
.end method

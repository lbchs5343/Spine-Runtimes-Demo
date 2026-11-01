.class Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;
.super Lcom/bykv/vk/openvk/component/video/api/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/s/d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 0

    const-string p1, "RewardAdStrategyCacher"

    const-string p2, "RewardFullLog: Cached ad onVideoPreloadSuccess"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->d()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    .locals 0

    const-string p1, "RewardFullLog: Cached ad onVideoPreloadFail"

    const-string p2, "RewardAdStrategyCacher"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "RewardFullLog: Cached ad onVideoPreloadFail and block onCached"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->d()V

    :cond_1
    return-void
.end method

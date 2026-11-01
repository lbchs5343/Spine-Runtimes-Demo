.class Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 2

    const-string p1, "TTMediationSDK"

    const-string v0, "pangle_reward_onRewardVideoCached 2"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward_onRewardVideoCached"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle_reward_onError code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 7

    const-string v0, "pangle_reward_onRewardVideoAdLoad"

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/f;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d()Ljava/util/Map;

    move-result-object p1

    const-string v0, "PangleRewardLoader WaterfallPangleRewardLoader extraInfo :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v4, v4, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v5, v5, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v5}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pangle reward \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TTMediationSDK_ECMP"

    invoke-static {v4, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    const-string v0, "materialMetaIsFromPreload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pangle \u6fc0\u52b1 \u8fd4\u56de\u7684adnPreload\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$3;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$3;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

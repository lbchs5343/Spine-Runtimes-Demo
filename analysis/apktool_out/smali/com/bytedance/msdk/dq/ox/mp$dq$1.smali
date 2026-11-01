.class Lcom/bytedance/msdk/dq/ox/mp$dq$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/mp$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/mp$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashRenderSuccess"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 5

    const-string v0, "new api onSplashLoadSuccess 111"

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "\u6e32\u67d3\u6210\u529f\u4f46\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->s()Ljava/util/Map;

    move-result-object p1

    const-string v0, "PangleSplashLoader extraInfo :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object v2, v2, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object v3, v3, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pangle Splash \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TTMediationSDK_ECMP"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/mp$dq$1$1;-><init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;-><init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$3;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/mp$dq$1$3;-><init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;-><init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 2

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashRenderFail"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/dq;->dq()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/dq;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    new-instance p2, Lcom/bytedance/msdk/api/dq;

    const v0, 0x13881

    const-string v1, "csjAdError is null"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V
    .locals 3

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashLoadFail"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/dq;->dq()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/dq;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "csjAdError is null"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

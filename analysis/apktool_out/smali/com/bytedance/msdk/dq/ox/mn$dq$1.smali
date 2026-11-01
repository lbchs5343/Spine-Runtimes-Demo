.class Lcom/bytedance/msdk/dq/ox/mn$dq$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/mn$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/mn$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/mn$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 2

    const-string p1, "TMe"

    const-string v0, "pangle full cached 2"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "pangle full cached"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;->dq()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->mp(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;->d()Ljava/util/Map;

    move-result-object p1

    const-string v1, "PangleFullVideoLoader extraInfo :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v1, v1, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "price"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v5, v5, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    invoke-virtual {v5}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v6, v6, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    invoke-virtual {v6}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pangle \u5168\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TTMediationSDK_ECMP"

    invoke-static {v5, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    const-string v1, "materialMetaIsFromPreload"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->d(Lcom/bytedance/msdk/dq/ox/mn$dq;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "pangle \u5168\u5c4f \u8fd4\u56de\u7684adnPreload\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->d(Lcom/bytedance/msdk/dq/ox/mn$dq;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    move-result-object p1

    new-instance v1, Lcom/bytedance/msdk/dq/ox/mn$dq$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/dq/ox/mn$dq$1$1;-><init>(Lcom/bytedance/msdk/dq/ox/mn$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    move-result-object p1

    new-instance v1, Lcom/bytedance/msdk/dq/ox/mn$dq$1$2;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/dq/ox/mn$dq$1$2;-><init>(Lcom/bytedance/msdk/dq/ox/mn$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/ig;->dq(Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Lcom/bytedance/msdk/dq/ox/mn$dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mn$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mn$dq;

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/mn$dq;->d:Lcom/bytedance/msdk/dq/ox/mn;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

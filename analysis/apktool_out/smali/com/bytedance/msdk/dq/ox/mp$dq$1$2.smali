.class Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;
.super Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashAdClick"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->f(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->mn()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashAdShow"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->q(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->w_()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;I)V
    .locals 1

    const-string p1, "new api onSplashAdClose closeType = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->cd(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/api/p/dq/kk/d;->d(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->fw(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/api/p/dq/kk/d;->dq(I)V

    :cond_2
    return-void
.end method

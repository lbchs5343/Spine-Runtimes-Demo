.class Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

.field dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq$2;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->d:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->ig(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ox()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->mp(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide p1

    const-string v0, "pangle \u6a21\u677fdraw \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->d:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ia()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ad_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->mn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "c_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    const-string p2, "log_extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1
.end method

.method public dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle draw express:  activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pluginDislikeInteractionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle draw express:  ttDislikeDialogAbstract = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    const-string v0, "pangle draw express: setDownloadListener pluginTTAppDownloadListener = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle draw express: uploadDislikeEvent event = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    const-string v0, "pangle draw express : setCanInterruptVideoPlay b = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Z)V

    :cond_0
    return-void
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->d(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ig()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->p()V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

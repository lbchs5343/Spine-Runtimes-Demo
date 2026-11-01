.class Lcom/bytedance/msdk/dq/ox/o$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field d:Lcom/bytedance/msdk/dq/dq;

.field dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

.field ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

.field p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

.field private volatile q:Z

.field final synthetic s:Lcom/bytedance/msdk/dq/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/o;Lcom/bytedance/sdk/openadsdk/f/d/d/jy;Lcom/bytedance/msdk/dq/dq;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->s:Lcom/bytedance/msdk/dq/ox/o;

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->q:Z

    new-instance v0, Lcom/bytedance/msdk/dq/ox/o$dq$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/o$dq$2;-><init>(Lcom/bytedance/msdk/dq/ox/o$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    new-instance v0, Lcom/bytedance/msdk/dq/ox/o$dq$3;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/o$dq$3;-><init>(Lcom/bytedance/msdk/dq/ox/o$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->d:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->d()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ig(I)V

    iget-object p3, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ox()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->mp(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/o;->dq(Lcom/bytedance/msdk/dq/ox/o;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide p1

    const-string p3, "pangle \u6a21\u677fnative \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "TTMediationSDK_ECMP"

    invoke-static {v0, p3}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/ox/o$dq;->ia()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ad_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/ox/o$dq;->mn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "c_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    const-string p2, "log_extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/o$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle native express:  activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pluginDislikeInteractionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle native express:  ttDislikeDialogAbstract = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle native express: uploadDislikeEvent event = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->q:Z

    new-instance v0, Lcom/bytedance/msdk/dq/ox/o$dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/dq/ox/o$dq$1;-><init>(Lcom/bytedance/msdk/dq/ox/o$dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq;->q:Z

    return v0
.end method

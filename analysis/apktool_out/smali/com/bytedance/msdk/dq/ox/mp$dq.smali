.class Lcom/bytedance/msdk/dq/ox/mp$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/dq/ox/mp;

.field dq:Z

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/mp;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->p:Ljava/util/Map;

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/mp$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/dq/ox/mp$dq$1;-><init>(Lcom/bytedance/msdk/dq/ox/mp$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/mp;->mn(Lcom/bytedance/msdk/dq/ox/mp;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V

    return-void
.end method

.method public static synthetic e(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->u()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method private u()Lcom/bytedance/msdk/dq/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/dq/d/s;

    return-object v0
.end method

.method public static synthetic wp(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method


# virtual methods
.method public bl()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PangleSplashLoader hideSkipButton mCSJSplashAd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->mn()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->d(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->s()Ljava/util/Map;

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

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->p:Ljava/util/Map;

    const/16 v1, 0xbb8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/mp;->dq(Lcom/bytedance/msdk/dq/ox/mp;I)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    const-string v3, "ad_load_timeout"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->p:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/ox/mp;->dq(Lcom/bytedance/msdk/dq/ox/mp;I)I

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp;->dq(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp;->d(Lcom/bytedance/msdk/dq/ox/mp;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->q()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->kk()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/mp;->iw(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/mp;->s(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/mp;->p(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->d:Lcom/bytedance/msdk/dq/ox/mp;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/mp;->ox(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->s()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->d(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->s()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ji()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->iw()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->s()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V

    iput-object v1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

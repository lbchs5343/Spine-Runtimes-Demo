.class Lcom/bytedance/msdk/dq/ox/ig$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/dq/ox/ig;

.field dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

.field private p:Z

.field private s:Ljava/util/Map;
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
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ig;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/msdk/dq/ox/ig$dq$1;-><init>(Lcom/bytedance/msdk/dq/ox/ig$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    iput-object p2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->s:Ljava/util/Map;

    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/ig$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->p:Z

    return p0
.end method

.method private dn()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/ig;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/ig;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "4.4.0.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ig$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/f;)Lcom/bytedance/sdk/openadsdk/f/d/d/f;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    return-object p1
.end method

.method private dq(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig;->dq(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pangle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/ig;->d(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/ig;->ox(Lcom/bytedance/msdk/dq/ox/ig;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->q()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->kk()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/ig;->mn(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->ir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/ig;->iw(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->o(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/ig;->s(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ia(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/16 v2, 0x438

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/16 v2, 0x780

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/ig;->p(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ig$dq;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/dq/ox/ig$dq;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ig$dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->p:Z

    return p1
.end method

.method public static synthetic e(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->u()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic h(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/dq/ox/ig$dq;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->dn()Z

    move-result p0

    return p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ir(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ji(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method private kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object v0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method private u()Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object v0
.end method

.method public static synthetic u(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic wp(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method


# virtual methods
.method public d(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PangleRewardLoader setShowDownLoadBar b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mTTRewardVideoAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Z)V

    :cond_0
    return-void
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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PangleRewardLoader setRewardAdPlayAgainController rewardAdPlayAgainController:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mTTRewardVideoAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->p:Z

    return v0
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->p()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_EXPIRED:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->d()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;->dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    iput-object v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

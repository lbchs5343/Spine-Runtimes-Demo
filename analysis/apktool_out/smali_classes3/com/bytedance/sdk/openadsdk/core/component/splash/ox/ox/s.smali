.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;
.super Ljava/lang/Object;


# instance fields
.field volatile d:Z

.field volatile dq:Z

.field private ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field volatile ox:Z

.field private p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

.field private s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    return-object p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n()I

    move-result p0

    const/16 p1, 0x8

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->s:I

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p0
.end method


# virtual methods
.method public dq(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "loadAd Type "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void

    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->p()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->s()Lcom/bytedance/sdk/openadsdk/core/r/nh;

    move-result-object v0

    :cond_5
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void

    :cond_7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void

    :cond_8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    :cond_9
    :goto_1
    return-void
.end method

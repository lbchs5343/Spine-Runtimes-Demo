.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->d()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ds()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->s:Z

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$dq;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "check server cache error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;JLcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->s:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->p()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;->iw()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    :cond_1
    :goto_0
    return-void
.end method

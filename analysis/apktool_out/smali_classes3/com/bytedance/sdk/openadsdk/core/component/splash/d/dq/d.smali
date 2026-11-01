.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;


# instance fields
.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object p1, p0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->kk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->s()Lcom/bytedance/sdk/openadsdk/mp/d;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "image request fail"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u7d20\u6750 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->iw()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mn()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ig()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;

    move-object v5, p0

    move-object v7, p2

    move v9, v4

    move-object v4, v6

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;Ljava/lang/String;I)V

    move-object p2, v4

    move-object p1, v5

    move v4, v9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;

    invoke-direct {v9, p0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    const/4 v10, 0x1

    const/4 v8, 0x4

    move-object v6, p2

    move v5, v0

    move-object v7, v1

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/ir/fw;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;IILcom/bytedance/sdk/openadsdk/core/ir/fw$dq;Ljava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method

.method private dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/mp/d;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/mp/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;

    invoke-direct {p1, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->s()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p2, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/fw;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;IILcom/bytedance/sdk/openadsdk/core/ir/fw$dq;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)Z

    move-result p0

    return p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fd()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/p/p/p;
.super Lcom/bytedance/sdk/openadsdk/core/p/p/d;


# instance fields
.field private final s:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->s:J

    return-void
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ia()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ia()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq;->dq(I)I

    move-result v0

    return v0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->d()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->d()I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p/p/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    invoke-direct {p0, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq(Z)V

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    invoke-interface {v0, v4, v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z

    move-result p0

    return p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-interface {v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "is_playAgain"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_cache"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "start_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->s:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    invoke-interface {v1, v0, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    move-result-object p1

    if-eqz p3, :cond_6

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->dq(Z)V

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->dq()V

    :goto_1
    return v3
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/ox;->dq(Z)V

    :cond_0
    return-void
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->d()I

    move-result p3

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq()Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    invoke-direct {p0, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    return-void

    :cond_3
    invoke-direct {p0, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    return-void

    :cond_4
    invoke-direct {p0, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/p/p;->dq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

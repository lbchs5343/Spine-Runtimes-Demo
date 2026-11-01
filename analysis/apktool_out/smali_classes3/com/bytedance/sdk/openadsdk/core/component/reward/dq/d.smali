.class public abstract Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

.field protected dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq:Landroid/content/Context;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;ZLcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/nh;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->no(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    :cond_1
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->ox()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->dq()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ox:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->d()I

    move-result p1

    iput p1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->p:I

    const/4 p1, 0x1

    iput p1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->s:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;->dq()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "is_playAgain"

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "is_preload"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "start_time"

    iget-wide p3, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->f:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public abstract d()Z
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;ZLcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/nh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;->ox()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/live/p/p;->dq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/ox;ZLcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/nh;

    move-result-object p3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)V

    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V

    :cond_4
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;

    const-string v1, "rewardFull preloadOnDestroy"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

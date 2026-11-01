.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/f;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/ig;

.field private ox:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/ig;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->iw()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;)Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->ox:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;)Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->d:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1, p3}, Lcom/bytedance/sdk/gromore/dq/dq/s/mn;->dq(Lcom/bytedance/msdk/api/ox/dq;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/bytedance/msdk/api/ox/dq;->dq()Z

    move-result v1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/ox/dq;->d()F

    move-result p3

    invoke-interface {p1}, Lcom/bytedance/msdk/api/ox/dq;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/ox/dq;->p()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v2, "rewardType"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "extraInfo"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v5, "reward_extra_key_reward_name"

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "reward_extra_key_reward_amount"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "isGroMoreServerSideVerify"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string v5, "transId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "reason"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v5, "gromoreExtra"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v5, "errorCode"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string v5, "errorMsg"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_8

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_2

    :cond_8
    move-object v5, v8

    :goto_2
    const-string v6, "adnName"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_9

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v6, "ecpm"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;->dq(ZILandroid/os/Bundle;)V

    const-string p1, "6.4.0.0"

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    float-to-int v2, p3

    if-eqz v0, :cond_b

    move-object v3, v0

    :goto_3
    move-object v0, p2

    goto :goto_4

    :cond_b
    move-object v3, v8

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;->dq(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method private iw()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/ig;->d(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->r()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->ox:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-void
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->gh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/ig;->dq(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/ox/p/ig;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq$3;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/o;->dq(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->d:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/o;->d(Z)V

    :cond_0
    return-void
.end method

.method public ox()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/s/dq;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/d;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;->dq:Lcom/bytedance/msdk/ox/p/ig;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/d;-><init>(Lcom/bytedance/msdk/ox/p/ig;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/s/dq;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/s/iw;)V

    return-object v0
.end method

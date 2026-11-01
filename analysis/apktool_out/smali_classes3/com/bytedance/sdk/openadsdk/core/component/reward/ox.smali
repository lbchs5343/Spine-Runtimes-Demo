.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/f;


# instance fields
.field private cd:Z

.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final dq:Landroid/content/Context;

.field private e:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

.field private f:Ljava/lang/String;

.field private fw:Ljava/lang/String;

.field private gh:Z

.field private i:I

.field private ia:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

.field private ig:Ljava/lang/String;

.field private iw:J

.field private jy:I

.field private k:Z

.field private kk:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

.field private le:Ljava/lang/Double;

.field private final mn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mp:I

.field private no:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private o:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

.field private final ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private wp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/f;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->jy:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->le:Ljava/lang/Double;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->k:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->wp:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->no:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    return-object p0
.end method

.method private dq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)V

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->q:Z

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(ZZ)Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn()V

    return-void
.end method

.method private ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ia:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->kk:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->kk:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->o:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->o:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V

    :cond_2
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expireTimestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->gh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "materialMetaIsFromPreload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adSceneType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->jy:I

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->kk:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-void
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->le:Ljava/lang/Double;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->fw:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->gh:Z

    return-void
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mp:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->iw:J

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v2

    const-string v3, "rewarded_video"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v2

    const-string v3, "show_start"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "TTRewardVideoAdImpl"

    const-string v0, "showRewardVideoAd error1: activity is finishing"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;

    const-string v3, "reward_register_download"

    invoke-direct {v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v3, "reward_video_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq:Landroid/content/Context;

    goto :goto_2

    :cond_6
    move-object v0, p1

    :goto_2
    if-nez v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ia()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoLandscapeActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    if-nez p1, :cond_9

    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->q:Z

    if-eqz p1, :cond_a

    const-string p1, "is_play_again"

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "play_again_count"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->jy:I

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mp:I

    :goto_4
    const-string p1, "source_rit_id"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mp:I

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "custom_play_again"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->cd:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->f()Ljava/lang/String;

    move-result-object p1

    const-string v4, "media_extra"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->fw()Ljava/lang/String;

    move-result-object p1

    const-string v4, "user_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->q:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->fw:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "reward_again_name"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->f:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "reward_again_amount"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->fw:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->h()Ljava/lang/String;

    move-result-object p1

    const-string v4, "reward_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ji()I

    move-result p1

    const-string v4, "reward_amount"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_preload"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    const-string v2, "is_adm"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->le:Ljava/lang/Double;

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string p1, "_client_bidding_aution_price"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "rit_scene"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->s:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->gh:Z

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->iw(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->r:I

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->u(I)V

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->i:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    const-string v1, "key_video_cache_callback"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string p1, "multi_process_key"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->o()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "insert_ad_bundle"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    :cond_10
    :goto_6
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "TTRewardVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_1

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->s:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->s:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->no:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->o:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ia:Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->k:Z

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->wp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->wp:Z

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->f:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p:Z

    return-void
.end method

.method public mn()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->q:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ml()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->r:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ig:Ljava/lang/String;

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->q:Z

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->iw:J

    return-wide v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->i:I

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->cd:Z

    return-void
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationRewardManagerDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationRewardManagerDefault;-><init>()V

    return-object v0
.end method

.class public Lcom/bytedance/msdk/ox/p/ig;
.super Lcom/bytedance/msdk/ox/p/o;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/p;


# instance fields
.field private d:Lcom/bytedance/msdk/api/p/dq/ia/d;

.field dq:Lcom/bytedance/msdk/api/p/dq/ia/dq;

.field private gh:Lcom/bytedance/msdk/api/p/dq/ia/dq;

.field private i:Lcom/bytedance/msdk/core/admanager/reward/dq;

.field private jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

.field private k:Z

.field private le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

.field private r:Lcom/bytedance/msdk/core/admanager/reward/dq;

.field private final wp:Lcom/bytedance/msdk/dq/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/o;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/msdk/ox/p/ig$2;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/ig$2;-><init>(Lcom/bytedance/msdk/ox/p/ig;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->dq:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    new-instance p1, Lcom/bytedance/msdk/ox/p/ig$6;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/ig$6;-><init>(Lcom/bytedance/msdk/ox/p/ig;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->wp:Lcom/bytedance/msdk/dq/d/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/p/ig;)Lcom/bytedance/msdk/core/admanager/reward/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/ig;->i:Lcom/bytedance/msdk/core/admanager/reward/dq;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/p/ig;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/ig;->ox(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/ox/p/ig$4;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/msdk/ox/p/ig$4;-><init>(Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/ig;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/ig;->gh:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/api/ox/dq;I)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v8, v2

    move-wide v9, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/msdk/api/ox/dq;->p()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    const-string v2, "errorCode"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    const-string v2, "errorMsg"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v12, v0

    move v11, v1

    :goto_3
    move-object v13, p1

    goto :goto_4

    :cond_3
    const-string p1, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :goto_4
    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    move/from16 v7, p2

    invoke-static/range {v5 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/ig;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/ig;->p(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/ig;Lcom/bytedance/msdk/api/ox/dq;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/ox/dq;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/ig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/p/ig;->k:Z

    return p1
.end method

.method private ia()Z
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const-string v1, "TTMediationSDK"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ia()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->kk(Ljava/lang/String;)Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u5f00\u5173\u672a\u5f00\u542f: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-boolean v4, p0, Lcom/bytedance/msdk/ox/p/ig;->k:Z

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--ra: \u6fc0\u52b1\u518d\u5f97\uff0cadn\u5df2\u7ecf\u89e6\u53d1\u4e86\u518d\u770b\u4e00\u4e2a: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, v4, v0, v5}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Lcom/bytedance/msdk/d/s;)I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/bytedance/msdk/ox/p/o;->fw:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v6, v4, v1, v5}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;II)V

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, v0, v4, v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return v3

    :cond_6
    return v2

    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--ra: \u6fc0\u52b1\u518d\u5f97\uff0c\u4e00\u6b21\u94fe\u8def\u53ea\u5c55\u793a\u4e00\u6b21\u6fc0\u52b1\u518d\u5f97: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/p/ig;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object p0
.end method

.method private ox(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/p/ig$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/p/ig$3;-><init>(Lcom/bytedance/msdk/ox/p/ig;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/p/ig;)Lcom/bytedance/msdk/core/admanager/reward/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    return-object p0
.end method

.method private p(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/p/ig$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/p/ig$5;-><init>(Lcom/bytedance/msdk/ox/p/ig;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/p/ig;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/ig;->ia()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public E_()V
    .locals 12

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    const-string v3, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/ox/p/o;->dq(Z)V

    new-instance v5, Lcom/bytedance/msdk/api/dq;

    const v0, 0x9c7f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v3 .. v11}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/bytedance/msdk/ox/p/ig;->p(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    new-instance v3, Lcom/bytedance/msdk/ox/p/ig$7;

    invoke-direct {v3, p0}, Lcom/bytedance/msdk/ox/p/ig$7;-><init>(Lcom/bytedance/msdk/ox/p/ig;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq$d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    const-string v4, "show_listen"

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adSlotId\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const-string v4, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-static {v3, v0, v4}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/p/o;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/p/o;->ox(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    :goto_1
    move-wide v7, v5

    move-object v6, v2

    goto :goto_2

    :cond_6
    const-wide/16 v5, -0x1

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->ox(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public c_(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/ox/p/ig;->p(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->d:Lcom/bytedance/msdk/api/p/dq/ia/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ia/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->gh:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/ox/p/o;->dq()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->i:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->d:Lcom/bytedance/msdk/api/p/dq/ia/d;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/bytedance/msdk/ox/p/ig;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/ox/p/ig$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/ig$1;-><init>(Lcom/bytedance/msdk/ox/p/ig;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/msdk/ox/p/o;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;Lcom/bytedance/msdk/ox/p/o$dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-nez p1, :cond_1

    const-string p1, "TTMediationSDK"

    const-string p2, "\u6ce8\u610f\uff1a\u672a\u8bbe\u7f6eGMRewardedAdListener\uff0c\u5c06\u6536\u4e0d\u5230\u5e7f\u544a\u64ad\u653e/\u70b9\u51fb/\u5173\u95ed\u7b49\u56de\u8c03\u4fe1\u606f"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ia/d;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->i:Lcom/bytedance/msdk/core/admanager/reward/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/ig;->d:Lcom/bytedance/msdk/api/p/dq/ia/d;

    iput-object p0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->dq:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/o;->cd:Lcom/bytedance/msdk/dq/d/iw;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->kk(Ljava/lang/String;)Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/ig;->gh:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ia/dq;Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->no()Lcom/bytedance/msdk/ox/ox/dq/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 9

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_2

    const-string v3, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x4

    invoke-static/range {v3 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_0
    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x4

    invoke-static/range {v3 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->wp()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v3, p1, v4}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    invoke-direct {p0, v2, v1}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/ox/dq;I)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d()V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v3, p1, v4}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    invoke-direct {p0, v2, v1}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/ox/dq;I)V

    :cond_8
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->le:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->wp:Lcom/bytedance/msdk/dq/d/d;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    goto :goto_0

    :cond_0
    iput-object p0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/p/o;->dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method public iw()V
    .locals 13

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    const-string v1, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->wp()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    :cond_5
    return-void
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->d:Lcom/bytedance/msdk/api/p/dq/ia/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/d;->dq()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->d:Lcom/bytedance/msdk/api/p/dq/ia/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/d;->d()V

    :cond_0
    return-void
.end method

.method public s_()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    const-string v2, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->wp()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_2
    move-object v8, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_4
    move-object v8, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    :goto_2
    move-wide v6, v4

    move-object v5, v1

    goto :goto_3

    :cond_5
    const-wide/16 v4, -0x1

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public t_()V
    .locals 13

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    const-string v1, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->wp()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/ig;->ia()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/ig;->ia()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_3
    return-void
.end method

.method public u_()V
    .locals 13

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    const-string v1, "pangle"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->wp()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->r:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    :cond_5
    return-void
.end method

.method public v_()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ig;->jy:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->v_()V

    :cond_1
    return-void
.end method

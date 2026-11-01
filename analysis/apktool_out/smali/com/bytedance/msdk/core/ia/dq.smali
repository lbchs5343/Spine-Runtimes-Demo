.class public Lcom/bytedance/msdk/core/ia/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/mn/kk;
.implements Lcom/bytedance/msdk/api/p/dq/ox/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/ia/dq$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/msdk/api/dq/d;

.field private dq:Lcom/bytedance/msdk/d/s;

.field private iw:Z

.field private ox:Lcom/bytedance/msdk/api/p/dq/ox/d;

.field private p:Lcom/bytedance/msdk/core/ia/dq$dq;

.field private s:Lcom/bytedance/msdk/api/p/dq/mn/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/ia/dq$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/ia/dq;->iw:Z

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p3, p0, Lcom/bytedance/msdk/core/ia/dq;->p:Lcom/bytedance/msdk/core/ia/dq$dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/ia/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ia/dq;->l()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/ia/dq;->ox:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object p0
.end method

.method private dq(Landroid/os/Handler$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/d/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ia/dq;->ob()V

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->p:Lcom/bytedance/msdk/core/ia/dq$dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/msdk/core/ia/dq$dq;->dq()V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->t()Z

    move-result v2

    invoke-static {p1, v0, v2, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, p1, v1}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    return-void
.end method

.method private dq(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->ox:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    :goto_0
    move-object v7, p1

    move-wide v8, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v2, -0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v5, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/ia/dq;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/ia/dq;->dq(Landroid/view/View;)V

    return-void
.end method

.method private l()V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/ia/dq;->iw:Z

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->ox:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "show_listen"

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "adSlotId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const-string v3, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-static {v2, v1, v3}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/kk/mp;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->p:Lcom/bytedance/msdk/core/ia/dq$dq;

    invoke-interface {v1, p0}, Lcom/bytedance/msdk/core/ia/dq$dq;->dq(Lcom/bytedance/msdk/api/p/dq/ox/dq;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v3}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    :goto_0
    move-object v9, v3

    move-wide v10, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->gx()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/core/d/dq;->mn(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/core/d/dq;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    :cond_3
    iget-object v6, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v7, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method private ob()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    new-instance v1, Lcom/bytedance/msdk/core/ia/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/ia/dq$2;-><init>(Lcom/bytedance/msdk/core/ia/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    new-instance v1, Lcom/bytedance/msdk/core/ia/dq$3;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/ia/dq$3;-><init>(Lcom/bytedance/msdk/core/ia/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    return-object p0
.end method


# virtual methods
.method public bl()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public by()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->by()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ce()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ce()V

    :cond_0
    return-void
.end method

.method public d()Lcom/bytedance/msdk/api/p/dq/ox/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->q()Lcom/bytedance/msdk/api/p/dq/mn/iw;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/bytedance/msdk/core/ia/dq$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/msdk/core/ia/dq$1;-><init>(Lcom/bytedance/msdk/core/ia/dq;Lcom/bytedance/msdk/api/p/dq/mn/iw;)V

    return-object v1
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->s(Z)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->mp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(JJ)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/core/ia/dq$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/msdk/core/ia/dq$5;-><init>(Lcom/bytedance/msdk/core/ia/dq;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/core/ia/dq$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/msdk/core/ia/dq$4;-><init>(Lcom/bytedance/msdk/core/ia/dq;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

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
    iget-object v5, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    iget-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/api/p/dq/mn/kk;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq;->ox:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->op()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Z)V

    :cond_0
    return-void
.end method

.method public e()Lcom/bytedance/msdk/api/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->wp()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0
.end method

.method public er()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->er()V

    :cond_0
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->fp()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->tu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gh()Lcom/bytedance/msdk/api/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/ia/dq;->iw:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ia/cd;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jo()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->fq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ux()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ir()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/ia/dq;->ob()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->no()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    :cond_0
    return-void
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->py()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/bytedance/msdk/api/p/dq/mn/d;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->tl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/mn/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->xj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(J)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->nt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->iw(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->mn(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->ny()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->fd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->jw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ji()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/s;->iw(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/msdk/core/ia/dq;->iw:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/ia/cd;->dq()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/cd;->dq(Lcom/bytedance/msdk/api/ox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "get_show_ecpm_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public jy()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->gl()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public le()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->le()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->rp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/d/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->p:Lcom/bytedance/msdk/core/ia/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/core/ia/dq$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->t()Z

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ig()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, v2, v1}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nh()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->bu()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->oh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->bn()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public op()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->iw(Z)V

    :cond_0
    return-void
.end method

.method public ox()Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/d/s;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/ia/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Lcom/bytedance/msdk/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    return-object v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->gh()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->r()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->lk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uh()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->uh()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    :cond_0
    return-void
.end method

.method public vf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public wp()Lcom/bytedance/sdk/openadsdk/f/d/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wp()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public xz()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->xz()V

    :cond_0
    return-void
.end method

.method public yy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq;->s:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->yy()V

    :cond_0
    return-void
.end method

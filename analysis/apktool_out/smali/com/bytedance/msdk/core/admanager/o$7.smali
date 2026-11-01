.class Lcom/bytedance/msdk/core/admanager/o$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private volatile d:Z

.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/o;

.field private volatile ox:Z

.field private final p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/o;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->d:Z

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->ox:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->p:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/o$7;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->d:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/o$7;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->ox:Z

    return p0
.end method

.method private ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->p:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/o$7$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/admanager/o$7$2;-><init>(Lcom/bytedance/msdk/core/admanager/o$7;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/mn/dq/dq;->ia()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public D_()V
    .locals 11

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/o$7;->ia()V

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->wi(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->cc(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pangle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/p;->dq(Z)V

    new-instance v4, Lcom/bytedance/msdk/api/dq;

    const v0, 0x9c7f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->mc(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->jo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0, v4}, Lcom/bytedance/msdk/core/admanager/o;->d(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    new-instance v3, Lcom/bytedance/msdk/core/admanager/o$7$1;

    invoke-direct {v3, p0}, Lcom/bytedance/msdk/core/admanager/o$7$1;-><init>(Lcom/bytedance/msdk/core/admanager/o$7;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq$d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->hf(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->b(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->tl(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xj(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->bf(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_listen"

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adSlotId\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->x(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->bx(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

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

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->nt(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->tv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->jy()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ny(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/mn/p;->ox(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->a(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->dk(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->sy(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->g(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->zi(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->sc(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->hy(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ip(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ah(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->ox(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xx(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->jv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->jn(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->w(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->y(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public b_(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->wq(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ae(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->fp(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1, v7}, Lcom/bytedance/msdk/core/admanager/o;->d(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 0

    return-void
.end method

.method public iw()V
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/o$7;->mn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->d:Z

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ix(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ne(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->vk(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xn(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->sp(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xq(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    :cond_5
    return-void
.end method

.method public mn()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public o_()V
    .locals 10

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->rp(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->fq(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pangle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->bn(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->oh(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_2
    move-object v8, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_4
    move-object v8, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ux(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->en(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->qz(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->lk(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->py(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v9

    const/4 v4, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public p_()V
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/o$7;->mn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->ox:Z

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->gl(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->tu(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->fx(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->gm(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->zc(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->kf(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->dn(Lcom/bytedance/msdk/core/admanager/o;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->dn(Lcom/bytedance/msdk/core/admanager/o;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_3
    return-void
.end method

.method public q_()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->kr(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->el(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->fa(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->hg(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->uo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->gv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yo(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    :cond_5
    return-void
.end method

.method public r_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/o;->v_()V

    return-void
.end method

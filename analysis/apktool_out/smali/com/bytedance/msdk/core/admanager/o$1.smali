.class Lcom/bytedance/msdk/core/admanager/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/ia/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E_()V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;Z)Z

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->d(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pangle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/p;->dq(Z)V

    new-instance v4, Lcom/bytedance/msdk/api/dq;

    const v0, 0x9c7f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ox(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->p(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v2 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0, v4}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/dq;)V

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/admanager/o$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/admanager/o$1$1;-><init>(Lcom/bytedance/msdk/core/admanager/o$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq$d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->mn(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->ia(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->kk(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->o(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->no(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "show_listen"

    invoke-static {v1, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->ig(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->mp(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->q(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->jy(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->f(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->fw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/o;->cd(Lcom/bytedance/msdk/core/admanager/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->gh(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->r(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_1
    move-object v6, v2

    move-wide v7, v3

    goto :goto_2

    :cond_6
    const-wide/16 v3, -0x1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->i(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->le(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public c_(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->k(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->wp(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->e(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1, v7}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 9

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->v(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ds(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pangle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/o;->vw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/o;->ha(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->cv(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->dc(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x4

    invoke-static/range {v3 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->jw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->fd(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1, v2, v1}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/ox/dq;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/o;->bu(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/o;->ws(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {p1, v2, v1}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/core/admanager/o;Lcom/bytedance/msdk/api/ox/dq;I)V

    :cond_6
    return-void
.end method

.method public iw()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ij(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xi(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->z(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->pa(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->io(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->m(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    :cond_5
    return-void
.end method

.method public s_()V
    .locals 10

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->kx(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->h(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pangle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ji(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->bl(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

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
    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_2
    move-object v8, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_4
    move-object v8, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->n(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->op(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ir(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->u(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->uh()Z

    move-result v9

    const/4 v4, 0x1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public t_()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->c(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ce(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->er(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->wn(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->j(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->nh(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_3
    return-void
.end method

.method public u_()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->vf(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->ob(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/dub;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->l(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->t(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->gx(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->by(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->iw(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/core/admanager/reward/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    :cond_5
    return-void
.end method

.method public v_()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/o;->uh(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->xz(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/d/s;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->yy(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$1;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o;->s(Lcom/bytedance/msdk/core/admanager/o;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->v_()V

    :cond_1
    return-void
.end method

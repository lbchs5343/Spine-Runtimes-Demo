.class Lcom/bytedance/msdk/core/admanager/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D_()V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->e_()V

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->d(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ox(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/p;->dq(Z)V

    new-instance v4, Lcom/bytedance/msdk/api/dq;

    const v0, 0x9c7f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->p(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->s(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    invoke-static/range {v2 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0, v4}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;Lcom/bytedance/msdk/api/dq;)V

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->dq()V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/dq;->iw(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->mn(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->ia(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_listen"

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adSlotId\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->kk(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->o(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->no(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/dq;->ig(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->jy()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->mp(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/mn/p;->ox(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->q(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->jy(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->f(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/dq;->fw(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->cd(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    :goto_1
    move-wide v7, v5

    move-object v6, v2

    goto :goto_2

    :cond_5
    const-wide/16 v5, -0x1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->gh(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->r(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->i(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->le(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->ox(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->k(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->wp(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/dq;->e(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->kx(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/dq;->h(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public b_(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->ji(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->bl(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->n(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v9

    const/4 v8, 0x1

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {p1, v7}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/dq;->z(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->pa(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->jw(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->fd(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->bu(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ws(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ij(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->xi(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->iw()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->iw()V

    :cond_3
    return-void
.end method

.method public o_()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->g_()V

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->op(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ir(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->u(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->c(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v6

    const/4 v4, 0x5

    const/4 v5, 0x1

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
    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->d()V

    :cond_2
    move-object v8, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->d()V

    :cond_4
    move-object v8, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ce(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->er(Lcom/bytedance/msdk/core/admanager/dq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->wn(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->j(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->nh(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public p_()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->f_()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/admanager/d;->ox:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->vf(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ob(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg/tn;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg/tn;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->l(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->t(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->gx(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->by(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->ox()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->ox()V

    :cond_4
    :goto_0
    return-void
.end method

.method public q_()V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/ia/fw;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->uh(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->xz(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->yy(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->v(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->ds(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->vw(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->no()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->p()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/p;->q()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->p()V

    :cond_3
    return-void
.end method

.method public r_()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/dq;->ha(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->cv(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dc(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/d;->mn()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->s()V

    :cond_1
    return-void
.end method

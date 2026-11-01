.class Lcom/bytedance/msdk/ox/p/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->k()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->d()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v8, v2

    move-wide v9, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v5, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, v0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->mn()Z

    move-result v7

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v11

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    return-void
.end method

.method public dq()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->ia()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->dq()V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-static {v1, v0, v2}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

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

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v1, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/o;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/o;->ox(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v1, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/d/s;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v8, v2

    move-wide v9, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v5, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, v0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->mn()Z

    move-result v7

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v1, v0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v1, v0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-object v5, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, v0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->mn()Z

    move-result v9

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {p1, v7}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/p;->le()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iget-boolean v1, v0, Lcom/bytedance/msdk/ox/p/p;->jy:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/o;->e()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->ox()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->mn()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$4;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->ia()V

    :cond_0
    return-void
.end method

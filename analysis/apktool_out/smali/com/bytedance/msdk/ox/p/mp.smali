.class public Lcom/bytedance/msdk/ox/p/mp;
.super Lcom/bytedance/msdk/ox/p/d;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/s;


# instance fields
.field private cd:Lcom/bytedance/msdk/api/p/dq/kk/s;

.field private d:Z

.field private dq:Z

.field private f:Lcom/bytedance/msdk/api/p/dq/kk/ox;

.field private fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

.field private gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

.field private jy:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/p/mp;->dq:Z

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/p/mp;->d:Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/mp;)Lcom/bytedance/msdk/api/p/dq/kk/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/d/s;Landroid/view/ViewGroup;)V
    .locals 8

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/p/mp;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->bl()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mp:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/d/s;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->iw(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/dq/d/iw;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/msdk/ox/mn/p;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v2

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotId\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const-string v1, ",slotType:"

    invoke-static {v0, p1, v1}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/kk/mp;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/mp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private ox(Landroid/view/ViewGroup;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/p/d;->ig:Z

    const v2, 0x9c74

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/d;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1, v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_a

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->h_()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v4, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/p/d;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/no/no;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/msdk/d/s;

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, v8, p1}, Lcom/bytedance/msdk/ox/p/mp;->dq(Lcom/bytedance/msdk/d/s;Landroid/view/ViewGroup;)V

    :goto_2
    const/4 v1, 0x1

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->r()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v6

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v9

    invoke-virtual {v6, v8, v7, v9}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v6

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v6, v7, v8, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v6

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v6, v6, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    const-string v7, "show"

    invoke-static {v5, v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "adSlotId\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isReady()\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TTMediationSDK"

    invoke-static {v5, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/bytedance/msdk/ox/p/d;->d(Lcom/bytedance/msdk/d/s;)V

    invoke-direct {p0, v6, p1}, Lcom/bytedance/msdk/ox/p/mp;->dq(Lcom/bytedance/msdk/d/s;Landroid/view/ViewGroup;)V

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_3
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/d/s;

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v6, p1}, Lcom/bytedance/msdk/ox/p/mp;->dq(Lcom/bytedance/msdk/d/s;Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_9

    iput-boolean v4, p0, Lcom/bytedance/msdk/ox/p/d;->ig:Z

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz p1, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Ljava/util/List;)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1, v0, v3, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method private ox(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/p/mp$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/p/mp$3;-><init>(Lcom/bytedance/msdk/ox/p/mp;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/p;->ox()V

    :cond_0
    return-void
.end method

.method public F_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->cd:Lcom/bytedance/msdk/api/p/dq/kk/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/s;->dq()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->d(I)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->dq(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->d(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->f:Lcom/bytedance/msdk/api/p/dq/kk/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/kk/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public d_(Lcom/bytedance/msdk/api/dq;)V
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

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/ox/p/mp;->ox(Lcom/bytedance/msdk/api/dq;)V

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
    invoke-super {p0}, Lcom/bytedance/msdk/ox/p/d;->dq()V

    return-void
.end method

.method public dq(I)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/p/dq/kk/d;->dq(I)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->dq(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/d/s;)V

    new-instance v0, Lcom/bytedance/msdk/ox/p/mp$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/p/mp$2;-><init>(Lcom/bytedance/msdk/ox/p/mp;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/api/p/dq/kk/ox;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/p/no;)V

    iput-object p3, p0, Lcom/bytedance/msdk/ox/p/mp;->f:Lcom/bytedance/msdk/api/p/dq/kk/ox;

    iput-object p0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->fw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "ad_load_timeout"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/ox/p/mp$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/mp$1;-><init>(Lcom/bytedance/msdk/ox/p/mp;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/msdk/api/p/f;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->no()Lcom/bytedance/msdk/ox/ox/dq/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/kk/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/kk/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/mp;->cd:Lcom/bytedance/msdk/api/p/dq/kk/s;

    return-void
.end method

.method public e()Z
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->h_()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v10, v1

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v11, v1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-boolean v6, p0, Lcom/bytedance/msdk/ox/p/d;->ig:Z

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v8, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v9

    invoke-static/range {v2 .. v11}, Lcom/bytedance/msdk/ia/jy;->dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->n()Lcom/bytedance/msdk/api/p/no;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v7

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;ZLcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/p;->p()V

    :cond_0
    return-void
.end method

.method public ji()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/p/mp;->d:Z

    return-void
.end method

.method public k()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->f:Lcom/bytedance/msdk/api/p/dq/kk/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/ox;->dq()V

    :cond_0
    return-void
.end method

.method public kx()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/mp;->jy:Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/p/mp;->ox(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/mp;->jy:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->jy:Landroid/view/View;

    return-object v0
.end method

.method public le()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/d;->mn()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

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
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->s(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/bytedance/msdk/d/s;->by()Z

    move-result v11

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

    return-void
.end method

.method public w_()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->fw:Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/d;->w_()V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-static {v1, v0, v2}, Lg/tn;->a(Lcom/bytedance/msdk/d/s;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

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

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/mp;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

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
    iget-object v5, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V

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

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v4, v0, v1, v2, v3}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public wp()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ji()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public x_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->cd:Lcom/bytedance/msdk/api/p/dq/kk/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/s;->d()V

    :cond_0
    return-void
.end method

.method public y_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/p;->dq()V

    :cond_0
    return-void
.end method

.method public z_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp;->gh:Lcom/bytedance/msdk/api/p/dq/kk/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/p;->d()V

    :cond_0
    return-void
.end method

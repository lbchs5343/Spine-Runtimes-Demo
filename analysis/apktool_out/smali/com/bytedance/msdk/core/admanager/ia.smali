.class public Lcom/bytedance/msdk/core/admanager/ia;
.super Lcom/bytedance/msdk/core/admanager/p;


# instance fields
.field private d:Lcom/bytedance/msdk/api/p/dq/ox;

.field private dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

.field private ox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/msdk/core/admanager/p;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/ia;->ox:Z

    return-void
.end method

.method private d(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ig()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/ia;->d:Lcom/bytedance/msdk/api/p/dq/ox;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x271e

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/ia;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/ia;->ox:Z

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/ia;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/ia;->ox:Z

    return p1
.end method

.method private d(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method private dq(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/dq/mn/dq;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    const-string v4, "TTMediationSDK"

    invoke-static {v4, v3}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v6, "show"

    invoke-static {v5, v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u8fd4\u56de\u7ed9\u5f00\u53d1\u8005\u6700\u7ec8\u5e7f\u544a\uff1aslotId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",slotType:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",cpm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",ImageMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",showSort="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",isExpressAd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lcom/bytedance/msdk/core/ig/dq;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    new-instance v5, Lcom/bytedance/msdk/core/admanager/ia$1;

    invoke-direct {v5, p0}, Lcom/bytedance/msdk/core/admanager/ia$1;-><init>(Lcom/bytedance/msdk/core/admanager/ia;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/bytedance/msdk/core/ig/dq;-><init>(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/ig/dq$dq;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/ox;->d(Ljava/util/List;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/p;->ig()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ia()V

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V
    .locals 3

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ox()Lcom/bytedance/msdk/d/s;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ig()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s;->l:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->d(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/ia;Lcom/bytedance/msdk/api/p/dq/mn/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/admanager/ia;->d(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/s;->p(Lcom/bytedance/msdk/d/s;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dq(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/bytedance/msdk/d/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/d/s;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-ne v1, p2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/ia;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    return p1
.end method

.method private mn(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mp()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/dq/mn/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/admanager/ia;->mn(Ljava/util/List;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/admanager/ia;->mn(Ljava/util/List;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/admanager/ia;->mn(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/ia;->no()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private no()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->h_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->dq()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, "TMe"

    const-string v1, "--==-- sorted ok"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/ia;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    return p1
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/s;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/ox;->d(Lcom/bytedance/msdk/api/dq;)V

    iget v0, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->d:Lcom/bytedance/msdk/api/p/dq/ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/mn/s;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd15f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->gh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->le()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd163

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void

    :cond_3
    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd15f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->gh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->le()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd163

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/admanager/ia;->d(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    iget v0, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ji:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->d:Lcom/bytedance/msdk/api/p/dq/ox;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;Z)V
    .locals 9

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ox()Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->fw()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->i:Ljava/util/Map;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/s;->ha:Lcom/bytedance/msdk/api/p/no;

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->e:Lcom/bytedance/msdk/core/no/o;

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->l:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/content/Context;

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;ZLcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->d:Lcom/bytedance/msdk/api/p/dq/ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/mn/s;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/mn/ox;->bl:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p2, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x271f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ji:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0x9c6f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/s;->xz:Z

    if-eqz v0, :cond_2

    const-string p1, "TTMediationSDK"

    const-string v0, "\u8c03\u7528\u8fc7\u9500\u6bc1\u65b9\u6cd5_destroy()\uff01\uff01\uff01"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xa054

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ia;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x271a

    const-string v1, "Ad load timeout!"

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_3
    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/msdk/core/mn/ox;->ji:Z

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/ox;->p(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    instance-of p2, p2, Lcom/bytedance/msdk/api/p/dq/mn/ia;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    new-instance v1, Lcom/bytedance/msdk/core/ig/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    new-instance v3, Lcom/bytedance/msdk/core/admanager/ia$2;

    invoke-direct {v3, p0}, Lcom/bytedance/msdk/core/admanager/ia$2;-><init>(Lcom/bytedance/msdk/core/admanager/ia;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/msdk/core/ig/dq;-><init>(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/ig/dq$dq;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/ia;->mp()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd4\u56de\u7ed9\u5916\u90e8\u5f00\u53d1\u8005\u7684\u5e7f\u544a\u6570\u91cf\uff1asumList.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->l()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/bytedance/msdk/core/ig/dq;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/msdk/core/ig/dq;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/bytedance/msdk/core/ig/dq;->ox(Z)V

    :cond_2
    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->fw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ox()Lcom/bytedance/msdk/d/s;

    move-result-object v3

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->fw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/bytedance/msdk/core/mn/ox;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ox()Lcom/bytedance/msdk/d/s;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/bytedance/msdk/d/s;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/ia;->dq:Lcom/bytedance/msdk/api/p/dq/mn/s;

    invoke-interface {v1, v0}, Lcom/bytedance/msdk/api/p/dq/mn/s;->dq(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.class public abstract Lcom/bytedance/msdk/core/mn/iw;
.super Lcom/bytedance/msdk/core/mn/s;


# instance fields
.field protected xi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/s;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/iw;->z:Z

    return-void
.end method

.method private ig()V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u629b\u51fa\u6210\u529f\u56de\u8c03_\u5e7f\u544a\u6c60\u4e2d\u5e7f\u544a\u6ee1\u8db3\u6570\u91cf\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u5e7f\u544a\u6c60\u4e2d\u6709\u5e7f\u544a\u4e14\u6ee1\u8db3client bididing\u7684\u8fd4\u56de\u6761\u4ef6...\u7ed9\u51fa\u6210\u529f\u56de\u8c03..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    :cond_0
    return-void
.end method

.method private no()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cv()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->m()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->pa()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/s;->cv()V

    return-void
.end method

.method public d(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->d(IZ)V

    return-void
.end method

.method public d(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const-string v4, "TTMediationSDK"

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    const/4 v6, 0x2

    if-eq v2, v6, :cond_a

    const/4 v6, 0x3

    if-eq v2, v6, :cond_9

    if-eq v2, v0, :cond_6

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->kx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SeverBidding\u5e7f\u544a\u6210\u529f\u8fd4\u56de\u4e14\u5230\u8fbeClientBidding\u7684\u7b49\u5f85\u65f6\u95f4\uff0c\u5e7f\u544a\u6c60\u4e2d\u7684\u5e7f\u544a\u6570\u91cf\u6ee1\u8db3...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->dq()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u6240\u6709\u5e7f\u544a\u90fd\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210....... "

    invoke-static {v0, v1, v4, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SeverBidding\u5e7f\u544a\u8fd4\u56de\u4e14\u5230\u8fbeClientBidding\u7684\u7b49\u5f85\u65f6\u95f4\uff0c\u6240\u6709\u5e7f\u544a\u90fd\u6709\u8fd4\u56de\u7ed3\u679c...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x4e25

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->gx()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v2, "\u5f53\u524d\u5c42\u8d85\u65f6....P\u5c42\u5e7f\u544a\u6c60\u6ca1\u5e7f\u544a\u6216\u8005\u6570\u91cf\u4e0d\u8fbe\u6807,\u5c1d\u8bd5\u6267\u884c\u4e0b\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTPAdPoolList.size()="

    invoke-static {p1, v1, v2}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/iw;->mp(I)I

    move-result p1

    if-ltz p1, :cond_e

    invoke-virtual {p0, p1, v3}, Lcom/bytedance/msdk/core/mn/iw;->p(IZ)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709P\u5c42\u7c7b\u578b\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42....mTTPAdPoolList.size()="

    invoke-static {p1, v0, v1}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->jw()V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->dc()V

    return-void

    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2713

    if-ne v0, v2, :cond_e

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->c()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v2, "\u5f53\u524d\u5c42\u8d85\u65f6....server Bidding \u7684\u8bf7\u6c42\u8fd8\u6ca1\u6709\u8fd4\u56de\uff0c\u7ee7\u7eed\u6267\u884c\u4e0b\u4e00\u5c42\u666e\u901a\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTCommonAdPoolList.size()="

    invoke-static {p1, v1, v2}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/iw;->mp(I)I

    move-result p1

    if-ltz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->no(I)I

    move-result p1

    if-ltz p1, :cond_e

    invoke-virtual {p0, p1, v3}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result p1

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v2, "\u5f53\u524d\u5c42\u8d85\u65f6....\u666e\u901a\u5e7f\u544a\u6c60\u6ca1\u5e7f\u544a\u5c1d\u8bd5\u6267\u884c\u4e0b\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTCommonAdPoolList.size()="

    invoke-static {p1, v1, v2}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/iw;->mp(I)I

    move-result p1

    if-ltz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->no(I)I

    move-result p1

    if-ltz p1, :cond_e

    invoke-virtual {p0, p1, v3}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42....mTTCommonAdPoolList.size()="

    invoke-static {p1, v0, v1}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42\u4e14\u6ee1\u8db3client bidding\u7684\u8fd4\u56de\u6761\u4ef6....mTTCommonAdPoolList.size()="

    invoke-static {p1, v0, v1}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    :cond_e
    :goto_0
    return-void
.end method

.method public dq(IIZ)V
    .locals 2

    const/16 v0, -0x64

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/msdk/core/mn/iw;->p(IZ)V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void

    :cond_1
    if-nez p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v0

    if-ge p2, v0, :cond_4

    add-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0, p3}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->no(I)I

    move-result p1

    if-ltz p1, :cond_4

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_4
    return-void
.end method

.method public dq(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->ox(IZ)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->dq(IZ)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->d(Landroid/os/Message;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->dq(Landroid/os/Message;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->ox(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/ox;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->p(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    return-void
.end method

.method public ig(I)Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "loadAdByLoadSort start...\u6267\u884c\u5f53\u524d\u52a0\u8f7d\u5c42\u7ea7\uff1aloadSort:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  waterFallConfig.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v2

    const/16 v4, 0x64

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/msdk/core/mn/ia;->d(I)V

    :cond_7
    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/bytedance/msdk/core/mn/ia;->dq(II)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/16 v8, 0x2713

    const/4 v9, 0x4

    if-eqz v2, :cond_8

    iput v9, v7, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_9

    const/4 v1, 0x5

    iput v1, v7, Landroid/os/Message;->what:I

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    iput v3, v7, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_a
    :goto_3
    if-eqz v4, :cond_b

    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/s;->vf:J

    goto :goto_4

    :cond_b
    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/s;->j:J

    :goto_4
    if-nez v6, :cond_e

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v4, :cond_e

    iget v6, v7, Landroid/os/Message;->what:I

    if-ne v6, v9, :cond_c

    invoke-static {p1}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v9, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_5

    :cond_c
    iget v6, v7, Landroid/os/Message;->arg1:I

    if-ne v6, v8, :cond_d

    invoke-static {p1}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_5
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    invoke-virtual {p1, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/s;->wn:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/s;->wn:J

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/s;->p(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_10
    :goto_6
    return v1
.end method

.method public io()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, -0x64

    if-ge v2, v4, :cond_1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public ji()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/mn/iw;->ig()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/ox;->ji()V

    return-void
.end method

.method public kk(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public kx()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/mn/iw;->z:Z

    invoke-direct {p0}, Lcom/bytedance/msdk/core/mn/iw;->no()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->pa()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->ji()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/core/mn/ox;->kx()V

    return-void
.end method

.method public m()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mn(I)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->ig(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->mn(I)Z

    move-result p1

    return p1
.end method

.method public mp(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public no(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public o(I)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x64

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public ox(IZ)V
    .locals 9

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "   \u5c42\u6570\uff1a"

    const-string v3, "TTMediationSDK"

    if-ge p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cindex:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  \u7684config\u914d\u7f6e............"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/msdk/core/mn/s;->xz:Z

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u5df2\u7ecf\u8c03\u7528destroy\u65b9\u6cd5\uff0c\u4e0d\u518d\u7ee7\u7eed\u5e7f\u544a\u8bf7\u6c42"

    invoke-static {p2, v0, v3, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    const/16 v5, -0x64

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/bytedance/msdk/core/mn/ia;->s(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5c42\u64cd\u4f5c......\u6240\u6709\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210\uff0c\u4e14\u65e0\u5e7f\u544a\u8fd4\u56de......."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const/16 v6, 0x4e25

    invoke-static {v6}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5c42\u64cd\u4f5c......\u6240\u6709\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210\uff0c\u4e14\u6709\u5e7f\u544a\u8fd4\u56de.......invokeAdLoadedOnMSDKThread"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5b58\u5728client bidding\u4e14\u6ee1\u8db3\u89e6\u53d1\u6210\u529f\u56de\u8c03\u7684\u6761\u4ef6\uff0c\u5219\u7ed9\u51fa\u6210\u529f\u56de\u8c03....."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u8be5\u5c42\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7\uff0cisFromFailCallback\u4e3atrue......."

    invoke-static {p2, v0, v3, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......idx\u4e0b\u6807\u8d8a\u754c......."

    invoke-static {p2, v0, v3, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_8
    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->u()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u8be5\u5c42\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7,p\u5c42\u548cclientBidding\u591a\u9636\u5e95\u4ef7\u5e7f\u544a\u5e76\u884c\u7684\u60c5\u51b5\u4e0b\uff0cP\u5c42\u5df2\u7ecf\u6267\u884c\u5b8c\u4e14\u5168\u90e8\u8bf7\u6c42\u5931\u8d25,\u4e0d\u7528\u8bf7\u6c42\u4e0b\u4e00\u5c42......."

    invoke-static {p2, v0, v3, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_9
    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v6, v1}, Lcom/bytedance/msdk/core/mn/ia;->s(I)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_14

    if-ge v1, v5, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v8, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cP\u5c42\u5e7f\u544a............"

    invoke-static {v6, v8, v3, v2}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_a
    if-ne v1, v5, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v8, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cClientBidding\u548c\u591a\u9636\u5e95\u4ef7\u5c42\u5e7f\u544a............"

    invoke-static {v6, v8, v3, v2}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_b
    if-nez v1, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cserverBidding\u5c42\u5e7f\u544a............hasServerBidding: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v8, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884c\u666e\u901a\u5c42\u5e7f\u544a............"

    invoke-static {v6, v8, v3, v2}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_2
    const/4 v2, 0x1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/mn/ia;->ia()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/core/mn/ia;->d(Z)V

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/core/mn/s;->iw(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/core/mn/s;->ox(Ljava/util/List;)V

    invoke-virtual {p0, p1, v7}, Lcom/bytedance/msdk/core/mn/iw;->d(IZ)V

    return-void

    :cond_e
    if-ge v1, v5, :cond_f

    iput v1, p0, Lcom/bytedance/msdk/core/mn/s;->ds:I

    goto :goto_3

    :cond_f
    iput v1, p0, Lcom/bytedance/msdk/core/mn/s;->v:I

    :goto_3
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v4, v1}, Lcom/bytedance/msdk/core/mn/ia;->iw(I)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v4, v1, v2}, Lcom/bytedance/msdk/core/mn/ia;->dq(IZ)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/core/mn/iw;->mn(I)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v7}, Lcom/bytedance/msdk/core/mn/iw;->dq(IIZ)V

    return-void

    :cond_11
    if-ne v1, v5, :cond_12

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c42\u64cd\u4f5c......ClientBidding\u3001\u591a\u9636\u3001ServerBidding\u5e7f\u544a\u540c\u65f6\u53d1\u8d77\u8bf7\u6c42............"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2, v7}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_12
    if-nez v1, :cond_15

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u5c42\u64cd\u4f5c......ServerBidding ,\u666e\u901a\u5e7f\u544a\u540c\u65f6\u53d1\u8d77\u8bf7\u6c42............"

    invoke-static {v0, v1, v3, p2}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v0

    if-ge p2, v0, :cond_15

    add-int v0, p1, p2

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0, v7}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c42\u64cd\u4f5c......index:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u7684\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7\u4e86\uff0c\u5f00\u59cb\u6267\u884c\u4e0b\u4e00\u5c42............\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v7}, Lcom/bytedance/msdk/core/mn/iw;->dq(IIZ)V

    :cond_15
    :goto_5
    return-void
.end method

.method public ox(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 9

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p0

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/msdk/core/mn/s;->d(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    const-string v1, "TTMediationSDK"

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->d()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->dq()I

    move-result v6

    invoke-static {v2, v6}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/bytedance/msdk/api/dq;->ox:I

    iget-object v8, p1, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25...........adnName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",slotType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ia()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",loadSort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->kk()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",showSort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \uff0cadError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ia()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/core/mn/ox;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/core/mn/ia;->dq(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->kk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/core/mn/ia;->ox(I)V

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->s()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/mn/ia;->ox()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->fd()V

    :cond_5
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ox()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u6709\u8fd4\u56de\u7ed3\u679c\u4e14\u6ee1\u8db3ClientBidding\u7b49\u5f85\u65f6\u95f4\u65f6\u5e7f\u544a\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_6
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->r()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_a

    :cond_8
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_a

    :cond_9
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    :cond_a
    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->dq()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6240\u6709\u5c42\u7ea7\u548c\u6240\u6709waterfall\u90fd\u5df2\u5b8c\u6210\u76f4\u63a5\u56de\u8c03..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5f53\u524d\u5e7f\u544a\u6c60\u4e2d\u6709\u5e7f\u544a\u4e14\u6ee1\u8db3client bididing\u7684\u8fd4\u56de\u6761\u4ef6...\u7ed9\u51fa\u6210\u529f\u56de\u8c03..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_b
    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/mn/ia;->dq()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->ce()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/core/fw/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_c
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result p1

    const/16 v3, -0x64

    const-string v4, "\u5f53\u524dlevel\u4e3a\uff1a"

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-ge p1, v3, :cond_e

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_10

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_d
    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->mp(I)I

    move-result p1

    if-ltz p1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u7684P\u5c42\u8bf7\u6c42\u5931\u8d25-----onAdFailed--\u300b \u52a0\u8f7d\u4e0b\u4e00\u5c42-nextIdx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v5}, Lcom/bytedance/msdk/core/mn/iw;->p(IZ)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mn()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_10

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_f
    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->mp(I)I

    move-result p1

    if-ltz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->no(I)I

    move-result p1

    if-ltz p1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u7684\u666e\u901a\u5c42\u8bf7\u6c42\u5931\u8d25-----onAdFailed--\u300b \u52a0\u8f7d\u4e0b\u4e00\u5c42-nextIdx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v5}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_10
    :goto_1
    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->dq()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, v2, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6240\u6709\u5e7f\u544a\u90fd\u52a0\u8f7d\u5931\u8d25...."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x4e25

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    :cond_13
    :goto_2
    return-void
.end method

.method public p(IZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->o(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/iw;->io()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/iw;->z:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/mn/iw;->z:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/iw;->kk(I)I

    move-result p1

    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v1

    if-ge v0, v1, :cond_4

    add-int v1, p1, v0

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->u()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_4
    return-void
.end method

.method public p(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/ox;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->dq()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/core/mn/s;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->ox(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ia()I

    move-result v0

    const-string v2, "TTMediationSDK"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/mn/ox;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u8fd4\u56de\u7684\u666e\u901a\u5e7f\u544a\u88abserver Bidding\u8fc7\u6ee4\u4e86......slotId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/core/mn/ia;->dq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i_()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->d(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->s(Ljava/util/List;)V

    invoke-virtual {p0, p1, v3}, Lcom/bytedance/msdk/core/mn/s;->d(Ljava/util/List;Z)V

    iget-object v0, v1, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    const-string v4, " ,showSort:"

    if-nez v0, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->gx()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P\u5c42\u5e7f\u544a\u5df2\u7ecf\u6210\u529f\u8fd4\u56deloadSort:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/iw;->xi:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->ir()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->op()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jn()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u666e\u901a\u5c42\u5e7f\u544a\u5df2\u7ecf\u6210\u529f\u8fd4\u56deloadSort:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6ee1\u8db3\u5e7f\u544a\u7684\u8fd4\u56de\u6761\u4ef6...\u76f4\u63a5\u8fd4\u56de..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_8
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->ox()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->by()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u8fd4\u56de\u7ed3\u679c\u4e14\u6ee1\u8db3ClientBidding\u7b49\u5f85\u65f6\u95f4\u65f6\u5e7f\u544a\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    return-void

    :cond_9
    iget-object p1, v1, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mn/ia;->mn()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6240\u6709\u5c42\u7ea7\u548c\u6240\u6709waterfall\u90fd\u5df2\u5b8c\u6210\u76f4\u63a5\u56de\u8c03..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->n_()V

    :cond_a
    :goto_0
    return-void
.end method

.method public pa()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x64

    if-ge v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_6

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->yy()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    invoke-virtual {p0, v1, v1}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void
.end method

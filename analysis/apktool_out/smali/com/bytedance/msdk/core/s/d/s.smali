.class public abstract Lcom/bytedance/msdk/core/s/d/s;
.super Lcom/bytedance/msdk/core/mn/dq/dq;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/d;


# instance fields
.field private dq:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/dq/dq;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/d/s;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 6
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

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/d/s;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/msdk/core/s/d/ig;

    iget-wide v3, p0, Lcom/bytedance/msdk/core/s/d/s;->dq:J

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/bytedance/msdk/core/s/d/ig;-><init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/s/d/ig;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/s/d/p$ox;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/s/d/s;->dq:J

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/s/d/s;->dq:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;J)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->ia()V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/bytedance/msdk/core/s/d/s;->dq(Lcom/bytedance/msdk/core/s/d/s;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/msdk/core/s/d/s;->dq:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/util/List;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/s/d/p;->s(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/s/d/ig;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/bytedance/msdk/d/s;->jn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v2

    const-string v3, "TTMediationSDK"

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/no/no;

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5904\u7406\u9884\u7f13\u5b58\u903b\u8f91......\u5df2\u7ecf\u54cd\u5e94\u7684\u5e7f\u544a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  \u6ca1\u6709\u5728severBidding\u7684waterFall\u5217\u8868\u4e2d\uff0c\u9700\u8981\u88ab\u79fb\u9664\u6389"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v1, "\u5904\u7406\u9884\u7f13\u5b58\u903b\u8f91......\u6ca1\u6709\u80dc\u51fa\u7684\u666e\u901a\u5e7f\u544a\uff0c\u666e\u901a\u5e7f\u544a\u88ab\u5168\u90e8\u8fc7\u6ee4\u6389\u4e86"

    invoke-static {v0, v1, v3, p1}, Lg/tn;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public i_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iw()Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

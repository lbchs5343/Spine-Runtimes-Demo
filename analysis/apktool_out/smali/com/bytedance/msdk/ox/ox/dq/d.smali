.class public Lcom/bytedance/msdk/ox/ox/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/d/d/dq;
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# instance fields
.field protected d:Lcom/bytedance/msdk/ox/s/dq/dq;

.field dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;"
        }
    .end annotation
.end field

.field private ia:Lcom/bytedance/msdk/api/dq/d;

.field private ig:Z

.field private iw:Lcom/bytedance/msdk/core/no/d;

.field private kk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mn:Ljava/lang/String;

.field private no:Lcom/bytedance/msdk/ox/iw/d/dq;

.field private o:Landroid/os/Handler;

.field protected final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field protected p:J

.field private s:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ox:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ig:Z

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/d$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d$1;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->dq()V

    new-instance v0, Lcom/bytedance/msdk/ox/ox/dq/d$2;

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/dq/d$2;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/dq/d;)Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    return-object p0
.end method

.method private d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ah()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->mn:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/bytedance/msdk/core/s/d/ig;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/bytedance/msdk/core/s/d/ig;-><init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object p1, p1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--==-- \u5e7f\u544a\u590d\u7528:\u5e7f\u544a\u7f13\u5b58\u6210\u529f -------"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adnSlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ad\u4e2a\u6570: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TTMediationSDK"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_2
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/d;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private dq(II)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadLevelWaterFall start...\u6267\u884c\u5f53\u524d\u52a0\u8f7d\u5c42\u7ea7 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " levelSort:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  waterFallConfig.size:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(II)V

    invoke-static {p1}, Lcom/bytedance/msdk/ox/mn/s;->ox(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->i()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->wn()J

    move-result-wide v1

    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    invoke-static {p1}, Lcom/bytedance/msdk/ox/mn/s;->dq(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/bytedance/msdk/ox/mn/s;->ox(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/bytedance/msdk/ox/mn/s;->d(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    goto :goto_2

    :cond_6
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_2
    iput p1, v3, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->er()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    if-eqz p1, :cond_8

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_a

    :try_start_0
    new-instance p1, Lcom/bytedance/msdk/ox/ox/dq/d$4;

    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/msdk/ox/ox/dq/d$4;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;Ljava/util/List;I)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method private dq(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u5e7f\u544a\u89e6\u53d1\u5c42\u8d85\u65f6.........levelSort:"

    const/4 v3, 0x1

    const-string v4, "TTMediationSDK"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u89e6\u53d1\u603b\u8d85\u65f6........."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->p()V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object p1

    iput-boolean v3, p1, Lcom/bytedance/msdk/core/no/o;->iw:Z

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    return-void

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u89e6\u53d1\u6700\u5c0f\u5c42\u8d85\u65f6.........levelSort:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    return-void

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string p1, "ClientBidding\u5c42"

    goto :goto_0

    :cond_0
    const-string p1, "ServerBidding\u5c42\u5c42"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->p(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    return-void

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_1

    const-string p1, "P\u5c42"

    goto :goto_1

    :cond_1
    const-string p1, "\u666e\u901a\u5c42"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->p(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dq(Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/p/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;",
            "Lcom/bytedance/msdk/core/p/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/bytedance/msdk/core/p/d;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iget-object v1, p3, Lcom/bytedance/msdk/core/p/d;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v0

    iget v1, p3, Lcom/bytedance/msdk/core/p/d;->mp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "price_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result v1

    invoke-static {p1, p3, v0, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/d;Ljava/lang/String;I)V

    :cond_3
    const-string p1, "TTMediationSDK"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    iget-object v2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2, v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ox:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ox:Ljava/util/List;

    iget-object v2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object p2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    invoke-static {p2}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;)V

    iget-object p2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-static {p2}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(Ljava/util/List;)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/ox/mn/s;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/msdk/ox/mn/s;->ox(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v3, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    invoke-static {p2, v2, v3}, Lcom/bytedance/msdk/ox/iw/dq;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serverBidding\u54cd\u5e94\u56de\u6765..........\u5f00\u59cb\u4ece\u5934\u5f00\u59cb\u8bf7\u6c42waterFallConfig  \u4ee3\u7801\u4f4d\u603b\u6570\u91cf\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(I)V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "serverBidding\u54cd\u5e94\u5931\u8d25\u4e86.......... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->d(I)V

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v4, v2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/no/no;)I

    move-result v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->no:Lcom/bytedance/msdk/ox/iw/d/dq;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/iw/d/dq;->dq()V

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object v2

    iget-wide v3, p3, Lcom/bytedance/msdk/core/p/d;->ig:D

    iget-wide v5, p3, Lcom/bytedance/msdk/core/p/d;->q:D

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/msdk/core/o/dq;->dq(DDLjava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p3, :cond_b

    iget-boolean p1, p3, Lcom/bytedance/msdk/core/p/d;->ox:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/d;->dq()Lcom/bytedance/msdk/core/f/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/core/f/d;->d(I)V

    :cond_b
    :goto_3
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/p/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/p/d;)V

    return-void
.end method

.method private ox(I)V
    .locals 3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/bytedance/msdk/ox/mn/s;->dq(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->uh()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level is first level normal ad and ParallelNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, p1, v1

    invoke-direct {p0, v2}, Lcom/bytedance/msdk/ox/ox/dq/d;->p(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->p(I)V

    return-void
.end method

.method private ox(Lcom/bytedance/msdk/core/no/no;I)V
    .locals 1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->ir()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    invoke-static {p2}, Lcom/bytedance/msdk/ia/i;->dq(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private ox(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
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

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->mn:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/dq/d;->ji()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/bytedance/msdk/core/s/d/ig;-><init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/s/d/ig;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private p(I)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u7ecf\u89e6\u53d1\u8fc7destroy\u64cd\u4f5c..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "\u7b2c "

    if-lt p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5c42\u6ca1\u6709\u5e7f\u544a\u53ef\u4ee5\u8bf7\u6c42..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v4, v3}, Lcom/bytedance/msdk/ox/s/dq/dq;->ox(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    return-void

    :cond_4
    invoke-static {v3}, Lcom/bytedance/msdk/ox/mn/s;->d(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/dq/dq;->d()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u542fserverBidding exchange \u8bf7\u6c42...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(I)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/ox/s/dq/dq;->d(I)V

    invoke-direct {p0, v3, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(II)V

    invoke-static {v3}, Lcom/bytedance/msdk/ox/mn/s;->ox(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v3}, Lcom/bytedance/msdk/ox/mn/s;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5c42 ClientBidding,ServerBidding \u5e7f\u544a\uff0clevelSort\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u540c\u65f6\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    return-void

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u7ecf\u89e6\u53d1\u8fc7\u6210\u529f\u3001\u5931\u8d25\u56de\u8c03..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/core/p/iw;->dq()Lcom/bytedance/msdk/core/p/s;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/msdk/core/p/mn;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ce()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->p:J

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    new-instance v6, Lcom/bytedance/msdk/ox/ox/dq/d$3;

    invoke-direct {v6, p0}, Lcom/bytedance/msdk/ox/ox/dq/d$3;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;)V

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/core/p/mn;->dq(Ljava/lang/String;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/core/no/no;I)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/bytedance/msdk/core/no/no;I)Z
    .locals 6

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result p2

    const-string v1, "TTMediationSDK"

    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u89e6\u53d1\u603b\u8d85\u65f6\u6216\u5168\u90e8\u4ee3\u7801\u4f4d\u54cd\u5e94\u7ed3\u675f.....totalTimeout\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  allWtfFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->ia()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/d/dq;->d(Lcom/bytedance/msdk/core/no/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u603b\u52a0\u8f7d\u65f6\u95f4\u8d85\u65f6.......isCallback:true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/bytedance/msdk/ia/d/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ig:Z

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 p2, 0x2713

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    :goto_1
    return v0

    :cond_4
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->ia()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5168\u90e8\u5e7f\u544a\u5b8c\u6210\u54cd\u5e94..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 p2, 0x4e25

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    :goto_3
    return v0

    :cond_7
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->q()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42\u5e7f\u544a\u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_8
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->ox()Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result p2

    if-nez p2, :cond_10

    :cond_a
    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->jy()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->fw()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V1 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_b
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->kk()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->o()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->cd()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a&Bidding\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V2 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_c
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->jy()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->fw()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/ox/iw/dq/p;->dq(Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/ox/iw/dq/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v5, p2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :goto_4
    invoke-interface {v2, v3, p2, v4}, Lcom/bytedance/msdk/ox/iw/dq/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/d/s;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V3 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_f
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->kk()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->o()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->cd()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "p\u5c42&\u666e\u901a&Bidding\u5c42\u5e7f\u544a \u5df2\u7ecf\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6 V4 ........."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_5
    return v0
.end method

.method public dq()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onAdVideoCache....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->p()V

    return-void
.end method

.method public dq(I)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/iw/d/s;->dq(Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/ox/iw/d/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->no:Lcom/bytedance/msdk/ox/iw/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    new-instance v3, Lcom/bytedance/msdk/ox/iw/d/d;

    new-instance v4, Lcom/bytedance/msdk/ox/ox/dq/d$6;

    invoke-direct {v4, p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d$6;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;I)V

    invoke-direct {v3, v2, v4}, Lcom/bytedance/msdk/ox/iw/d/d;-><init>(Lcom/bytedance/msdk/core/no/d;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/msdk/ox/iw/d/dq;->dq(Landroid/os/Handler;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/iw/d/d;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/p/iw;->dq()Lcom/bytedance/msdk/core/p/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(I)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bytedance/msdk/core/no/o;->p:Z

    new-instance v1, Lcom/bytedance/msdk/core/p/ox;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/p/ox;-><init>()V

    iput-object p2, v1, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p3, v1, Lcom/bytedance/msdk/core/p/ox;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    iput-object v3, v1, Lcom/bytedance/msdk/core/p/ox;->p:Lcom/bytedance/msdk/core/no/d;

    iput-boolean p4, v1, Lcom/bytedance/msdk/core/p/ox;->iw:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/bytedance/msdk/core/p/ox;->s:I

    iget-object p4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p4}, Lcom/bytedance/msdk/ox/s/dq/d;->i()Ljava/util/Map;

    move-result-object p4

    new-instance v2, Lcom/bytedance/msdk/ox/ox/dq/d$7;

    invoke-direct {v2, p0, p2, p3}, Lcom/bytedance/msdk/ox/ox/dq/d$7;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;)V

    invoke-interface {v0, p4, p1, v1, v2}, Lcom/bytedance/msdk/core/p/s;->dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/core/p/ox;Lcom/bytedance/msdk/core/p/s$dq;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V
    .locals 8

    if-nez p2, :cond_0

    move-object v1, p0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/bytedance/msdk/api/dq;->ox:I

    iget-object v7, p1, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {p1, p2}, Lcom/bytedance/msdk/core/mn/mn;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->ox:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/bytedance/msdk/ox/iw/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/dq;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p1, p2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/no/no;)I

    move-result p1

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/core/no/no;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->s(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->iw(I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(I)I

    move-result v0

    invoke-direct {p0, p2, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(Lcom/bytedance/msdk/core/no/no;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onAdFailed levelSort "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5e7f\u544a\u5168\u90e8\u54cd\u5e94\u7ed3\u675f&\u4e0d\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6\uff0c\u76f4\u63a5\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a nextIdx\uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/no;I)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u8bf7\u6c42\u4e2d"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb \u67d0\u4e00\u5c42\u7ea7\u7684waterFallConfig\u8bf7\u6c42 WaterFallConfig:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/ox/d/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/d/d;->d(I)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(I)V

    iget-object p2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/msdk/ox/s/d/d;->dq(J)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/d;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/p;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/p;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/iw;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/iw;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/s;

    invoke-direct {v0, p2}, Lcom/bytedance/msdk/ox/ox/d/s;-><init>(Ljava/util/List;)V

    iget-object p2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/msdk/ox/ox/d/s;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/ox/s/d/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 10

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mp()Lcom/bytedance/msdk/ox/s/dq/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->mn:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->kk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->mn(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ox/mn/s;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ox/mn/s;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->ia(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->kk(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->o:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->j()J

    move-result-wide v1

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->le()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ia:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iget-object v7, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ig()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a num:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v3}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    :goto_2
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/core/f/d;->d(I)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->wp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/d;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/d;->d(Ljava/lang/String;)Lcom/bytedance/msdk/api/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/api/d;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/api/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/api/d;->p(Ljava/lang/String;)Lcom/bytedance/msdk/api/d;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/bytedance/msdk/api/d;->dq(I)Lcom/bytedance/msdk/api/d;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/bytedance/msdk/api/d;->s(Ljava/lang/String;)Lcom/bytedance/msdk/api/d;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/bytedance/msdk/api/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->wp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/d$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d$5;-><init>(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 1
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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/d;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/bytedance/msdk/core/o/p;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V

    invoke-static {p1, p2}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/no;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->mn:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-static {v0, p2, v2}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Ljava/util/List;)V

    iget-object v0, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0, p2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/no/no;)I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result v2

    const-string v5, "TTMediationSDK"

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    iget-object v6, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->ox:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/bytedance/msdk/ox/iw/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/dq;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8fd4\u56de\u7684\u666e\u901a\u5e7f\u544a\u88abserver Bidding\u8fc7\u6ee4\u4e86......slotId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->kk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_3
    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v2, p1, v3}, Lcom/bytedance/msdk/ox/mn/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Z)V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(ILjava/lang/String;)V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(Ljava/util/List;)V

    :cond_4
    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/bytedance/msdk/api/dq;

    const/16 v3, 0x271c

    const-string v6, "load ad timeout !!!"

    invoke-direct {v2, v3, v6}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    :goto_1
    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/core/no/no;I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->iw(I)I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->c()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(I)I

    move-result p1

    invoke-direct {p0, p2, v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(Lcom/bytedance/msdk/core/no/no;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onAdLoaded levelSort: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5e7f\u544a\u5168\u90e8\u54cd\u5e94\u7ed3\u675f&\u4e0d\u6ee1\u8db3\u8fd4\u56de\u6761\u4ef6\uff0c\u76f4\u63a5\u8bf7\u6c42\u4e0b\u4e00\u5c42\u5e7f\u544a nextIdx\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ig:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->s()V

    return-void
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->ig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/d/dq;->dq(Lcom/bytedance/msdk/core/no/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

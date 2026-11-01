.class public Lcom/bytedance/msdk/ox/ox/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/d/dq$dq;


# instance fields
.field private d:Lcom/bytedance/msdk/ox/s/d/d;

.field private dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/ox/ox/d/dq;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/ox/ox/d/dq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/s;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    return-object v0
.end method

.method public dq()Lcom/bytedance/msdk/ox/s/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->d:Lcom/bytedance/msdk/ox/s/d/d;

    return-object v0
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/d/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/ox/ox/d/dq;

    invoke-interface {p1, p0}, Lcom/bytedance/msdk/ox/ox/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/ox/s/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/s;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/s;->d:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/s;->dq:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/s$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/ox/d/s$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/s;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

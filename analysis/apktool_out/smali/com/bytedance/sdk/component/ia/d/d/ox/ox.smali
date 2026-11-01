.class public Lcom/bytedance/sdk/component/ia/d/d/ox/ox;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static ig:I = 0xa

.field private static mp:I = 0xc8


# instance fields
.field private volatile cd:I

.field private volatile d:Z

.field protected dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

.field private final f:Ljava/lang/String;

.field private final fw:Ljava/lang/String;

.field private volatile gh:Ljava/lang/String;

.field private final i:Lcom/bytedance/sdk/component/ia/dq/s;

.field private final ia:J

.field private volatile iw:I

.field private final jy:Ljava/lang/String;

.field private k:Lcom/bytedance/sdk/component/ia/d/dq/d;

.field private final kk:J

.field private final le:Lcom/bytedance/sdk/component/ia/d/d/d;

.field private final mn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final no:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Landroid/os/Handler;

.field private final ox:Ljava/lang/Object;

.field private p:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/d/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;",
            "Lcom/bytedance/sdk/component/ia/dq/s;",
            "Lcom/bytedance/sdk/component/ia/d/d/d;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ia:J

    const-wide v2, 0x12a05f200L

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->kk:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    const-string v0, "after_upload"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->q:Ljava/lang/String;

    const-string v0, "dispatch_new_event"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->jy:Ljava/lang/String;

    const-string v0, "notify_least_once"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->f:Ljava/lang/String;

    const-string v0, "prepare_upload"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->fw:Ljava/lang/String;

    iput v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->cd:I

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->gh:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/dq/ox;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/ox;-><init>(Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;-><init>(Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/d/d;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->p:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->cd:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->gh:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/p;->ig()Lcom/bytedance/sdk/component/ia/dq/ia;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/p;->ig()Lcom/bytedance/sdk/component/ia/dq/ia;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/ia;->p()I

    move-result p1

    sput p1, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ig:I

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ig:I

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    const-string v0, "max_size_dispatch"

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;ZLjava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "prepared upload cancel meet delay before init set\u3002"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->kk()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "prepared upload cancel meet busy:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    invoke-static {v2}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sget-object p1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->dq()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->p:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Z)V

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "new_busy"

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    iput v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    const-string v2, "new_error"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    iput v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    goto :goto_0

    :cond_1
    const-string v0, "new_event"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->jy()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    iget v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/ia/d/dq/s;->dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(ILcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->ia(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/ia/d/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/dq;->no()I

    move-result v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/dq;->o()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    iput v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    iget p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    sget-object p2, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->ia()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p2, v2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne v1, v2, :cond_1

    iput v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/dq;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)V

    return-void

    :cond_1
    if-ne v1, p2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ia()V

    iput p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 p2, 0x3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/dq;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)V

    :cond_2
    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;ILcom/bytedance/sdk/component/ia/dq/s;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/d;

    if-nez v0, :cond_0

    const-string p1, "adLogEvent is null"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    const-string v0, "_error"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "PADLT"

    if-gt v1, v4, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result p2

    if-ne p2, v4, :cond_2

    const-string p2, "highPriority"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    const-string p1, "Single high priority \uff08 applog \uff09"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v5, p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result p2

    if-ne p2, v3, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->d()B

    move-result p2

    if-ne p2, v2, :cond_3

    const-string p2, "version_v3_single_directly"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p2, "singleOptimize"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result p2

    if-ne p2, v4, :cond_5

    const-string p2, "Stats batch report \uff08 stats \uff09"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v5, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    const-string p2, "stats_directly"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result p2

    if-ne p2, v2, :cond_6

    const-string p2, "adType_v3_directly"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result p2

    if-ne p2, v3, :cond_7

    const-string p2, "Single high priority \uff08 stats \uff09"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v5, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    const-string p2, "other_directly"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    :goto_0
    const-string v1, "Batch report\uff08 local or stats \uff09"

    iget-object v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v5, v1, v4}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x4

    if-ne p2, v1, :cond_a

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->d()B

    move-result p2

    if-ne p2, v2, :cond_9

    const-string p2, "version_v3_batch"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p2, "batchOptimize"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p2, "batchRead"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/util/List;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->p:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iget v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    iget-object v5, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox:Ljava/lang/Object;

    iget-object v6, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->k:Lcom/bytedance/sdk/component/ia/d/dq/d;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;Lcom/bytedance/sdk/component/ia/d/dq/d;)V

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no()V

    :cond_0
    return-void
.end method

.method private dq(I)Z
    .locals 1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->p:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ia/dq/d;

    instance-of v3, v2, Lcom/bytedance/sdk/component/ia/d/p/dq;

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    goto :goto_1

    :cond_0
    const-string v2, "event == null"

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private iw()V
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    instance-of v3, v1, Lcom/bytedance/sdk/component/ia/d/p/dq;

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mn()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush once begin; timeoutCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const-string v1, "batch_once"

    invoke-direct {p0, v2, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sget-object v1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->s()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private kk()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private mn()V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->kk()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/d;->d()V

    const-string v0, "exit log thread"

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method private no()V
    .locals 7

    const-string v0, "after_upload"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v2, v2, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v2, v2, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    const-wide v2, 0x12a05f200L

    cmp-long v6, v4, v2

    if-gez v6, :cond_4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2faf080

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v2, v2, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v2, v2, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "afterUpload meet notifyRunOnce flush memory db again"

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sget-object v2, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->p()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    const-string v2, "continue"

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(ILjava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_1
    const-string v1, "afterUpload wait serverBusy"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    :goto_2
    :try_start_2
    const-string v1, "afterUpload wait timeout"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wait exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    monitor-exit v0

    goto :goto_6

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    :goto_6
    return-void
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget v1, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->mp:I

    int-to-long v3, v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ig()Lcom/bytedance/sdk/component/ia/dq/ia;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ig()Lcom/bytedance/sdk/component/ia/dq/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/ia;->ox()J

    move-result-wide v3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    return-void
.end method

.method private ox(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v1, v1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    const-string v2, "needUpload check"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    const-string v1, "prepare_upload"

    const-string v2, "_opt"

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    iget v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->cd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->gh:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lcom/bytedance/sdk/component/ia/d/dq/s;->dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v4, v5}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    const/4 v2, -0x3

    invoke-interface {v0, v2, p1}, Lcom/bytedance/sdk/component/ia/d/dq/s;->dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->k:Lcom/bytedance/sdk/component/ia/d/dq/d;

    const-string p1, "flush_memory_db or batch_once meet repeat, so force delete"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    const-string v2, "_delete"

    invoke-static {v2, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "prepare upload result -> need true, size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iget v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw:I

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;I)V

    goto :goto_2

    :cond_5
    const-string p1, "prepare upload result -> need true, no event need upload"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const-string p1, "prepare upload result -> need false"

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->r:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "loop  needupload:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s()V

    const/4 v0, 0x1

    const-string v1, "busy_error"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(ILjava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "quit"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/d/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    return-object v0
.end method

.method public dq(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " check"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify runOnce check: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ia/d/p/dq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq;->d(I)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ia/d/p/dq;->ox(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    const-string p1, "notify_least_once"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ignore_result_dispatch"

    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;ZLjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "other thread handler is null\uff0cignore is true"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->s:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    const-string p1, "dispatch_new_event"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d:Z

    return-void
.end method

.method public dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ia/dq/p;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq:Lcom/bytedance/sdk/component/ia/d/dq/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/s;->dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "AdThread NET IS NOT AVAILABLE!!!"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->no:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "timeout_dispatch"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->p()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->iw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->i:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :goto_1
    return v0
.end method

.method public onLooperPrepared()V
    .locals 2

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->le:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d:Z

    return v0
.end method

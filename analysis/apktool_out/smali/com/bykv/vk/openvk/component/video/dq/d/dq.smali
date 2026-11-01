.class abstract Lcom/bykv/vk/openvk/component/video/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/d/no;


# static fields
.field private static final mp:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

.field protected volatile dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

.field protected volatile ia:Ljava/lang/String;

.field public final ig:J

.field protected volatile iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;",
            ">;"
        }
    .end annotation
.end field

.field private jy:I

.field protected volatile kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

.field protected volatile mn:Ljava/lang/String;

.field protected volatile no:Z

.field protected volatile o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

.field protected final ox:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final p:Ljava/util/concurrent/atomic/AtomicLong;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected s:Lcom/bykv/vk/openvk/component/video/dq/d/p/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->no:Z

    sget-object v1, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ig:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->jy:I

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->jy:I

    return p0
.end method


# virtual methods
.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/s/ox;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/s/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/s/ox;->d()Lcom/bykv/vk/openvk/component/video/dq/d/s/d;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p1, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    iput-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->dq:I

    const-string v4, "HEAD"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    iput p4, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->dq:I

    :cond_0
    iget-object p4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw:Ljava/util/List;

    const-string v4, "Range"

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Connection"

    iget-object v7, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Proxy-Connection"

    iget-object v7, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Host"

    iget-object v7, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    iget-object v5, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-boolean p2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->iw:Z

    if-eqz p2, :cond_4

    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object p2

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    move-result-object p3

    iget-object p4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    if-nez p4, :cond_5

    const/4 p4, 0x1

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_6

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d()Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    move-result-object v4

    :goto_2
    if-eqz p4, :cond_7

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d()Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    move-result-object p2

    :goto_3
    if-nez v4, :cond_8

    if-eqz p2, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    iget p3, p1, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->d:I

    invoke-virtual {v4, p3}, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->dq(I)J

    move-result-wide p3

    iput-wide p3, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->ox:J

    :cond_9
    if-eqz p2, :cond_a

    iget p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->d:I

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->dq(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->p:J

    :cond_a
    iput-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/d/s/s;->s:Ljava/util/Map;

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->no:Z

    if-eqz p1, :cond_b

    iput-boolean v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->no:Z

    const/4 p1, 0x0

    return-object p1

    :cond_b
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/s/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/s;)Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public dq(II)V
    .locals 4

    if-lez p1, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->mn:I

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    if-ne v1, v2, :cond_4

    :cond_1
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/16 p2, 0x64

    if-le p1, p2, :cond_2

    const/16 p1, 0x64

    :cond_2
    monitor-enter p0

    :try_start_0
    iget p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->jy:I

    if-gt p1, p2, :cond_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->jy:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq;)V

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    instance-of v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;-><init>()V

    throw v0
.end method

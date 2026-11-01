.class final Lcom/bytedance/sdk/component/ox/d/dq/s/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

.field private iw:I

.field private mn:Z

.field private final ox:Lcom/bytedance/sdk/component/ox/dq/p;

.field private final p:Z

.field private final s:Lcom/bytedance/sdk/component/ox/dq/ox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/ox/d/dq/s/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/p;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->p:Z

    new-instance p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;-><init>(Lcom/bytedance/sdk/component/ox/dq/ox;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

    const/16 p1, 0x4000

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    return-void
.end method

.method private d(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-interface {v0, v1, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/component/ox/dq/p;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->ia(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->d(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">> CONNECTION %s"

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/dq/iw;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->ia()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dq(IBLcom/bytedance/sdk/component/ox/dq/ox;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    if-lez p4, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    :cond_0
    return-void
.end method

.method public dq(IIBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(Lcom/bytedance/sdk/component/ox/dq/p;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    const-string p1, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized dq(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;->dq(Ljava/util/List;)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    iget p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    int-to-long v3, p3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr p3, v2

    const/4 v2, 0x5

    invoke-virtual {p0, p1, p3, v2, v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-interface {p2, p3, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    if-lez v5, :cond_1

    sub-long/2addr v0, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->mn:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iget p2, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->mn:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_2

    iget v0, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->mn:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iget p2, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->mn:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    array-length p1, p3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->ox()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->ox()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;->dq(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->mn(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(ZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(ZILcom/bytedance/sdk/component/ox/dq/ox;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IBLcom/bytedance/sdk/component/ox/dq/ox;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->mn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$d;->dq(Ljava/util/List;)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    iget p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, v5}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IIBB)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox:Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-interface {p1, p3, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d(IJ)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->iw:I

    return v0
.end method

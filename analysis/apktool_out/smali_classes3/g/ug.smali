.class public final Lg/ug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Lg/che;


# instance fields
.field public final b:Lg/gfw;

.field public final c:Lg/che;

.field public d:J

.field public final e:Lg/amr;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Ljava/net/Socket;

.field public h:J

.field public final i:Lg/gfw;

.field public final j:Ljava/lang/String;

.field public k:J

.field public final l:Lg/bmr;

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:J

.field public final r:Lg/ayg;

.field public final s:Lg/dvj;

.field public final t:Lg/gfw;

.field public final u:Ljava/util/LinkedHashMap;

.field public v:J

.field public final w:Lg/djf;

.field public x:Lg/che;

.field public y:J

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/che;

    invoke-direct {v0}, Lg/che;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lg/che;->e(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lg/che;->e(II)V

    sput-object v0, Lg/ug;->a:Lg/che;

    return-void
.end method

.method public constructor <init>(Lg/daw;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/daw;->g:Ljava/lang/Object;

    check-cast v0, Lg/ayg;

    iput-object v0, p0, Lg/ug;->r:Lg/ayg;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lg/daw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lg/ug;->j:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lg/ug;->p:I

    iget-object v0, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast v0, Lg/amr;

    iput-object v0, p0, Lg/ug;->e:Lg/amr;

    invoke-virtual {v0}, Lg/amr;->l()Lg/gfw;

    move-result-object v2

    iput-object v2, p0, Lg/ug;->b:Lg/gfw;

    invoke-virtual {v0}, Lg/amr;->l()Lg/gfw;

    move-result-object v2

    iput-object v2, p0, Lg/ug;->t:Lg/gfw;

    invoke-virtual {v0}, Lg/amr;->l()Lg/gfw;

    move-result-object v0

    iput-object v0, p0, Lg/ug;->i:Lg/gfw;

    sget-object v0, Lg/bmr;->p:Lg/bmr;

    iput-object v0, p0, Lg/ug;->l:Lg/bmr;

    new-instance v0, Lg/che;

    invoke-direct {v0}, Lg/che;-><init>()V

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, Lg/che;->e(II)V

    iput-object v0, p0, Lg/ug;->c:Lg/che;

    sget-object v0, Lg/ug;->a:Lg/che;

    iput-object v0, p0, Lg/ug;->x:Lg/che;

    invoke-virtual {v0}, Lg/che;->c()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lg/ug;->m:J

    iget-object v0, p1, Lg/daw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lg/ug;->g:Ljava/net/Socket;

    new-instance v0, Lg/djf;

    iget-object v2, p1, Lg/daw;->d:Ljava/lang/Object;

    check-cast v2, Lg/ago;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, Lg/djf;-><init>(Lg/ago;)V

    iput-object v0, p0, Lg/ug;->w:Lg/djf;

    new-instance v0, Lg/dvj;

    new-instance v2, Lg/gvn;

    iget-object p1, p1, Lg/daw;->b:Ljava/lang/Object;

    check-cast p1, Lg/deb;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, Lg/gvn;-><init>(Lg/deb;)V

    invoke-direct {v0, p0, v2}, Lg/dvj;-><init>(Lg/ug;Lg/gvn;)V

    iput-object v0, p0, Lg/ug;->s:Lg/dvj;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg/ug;->f:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p1, "source"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "sink"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "socket"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "connectionName"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized aa(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lg/ug;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lg/ug;->q:J

    iget-wide p1, p0, Lg/ug;->n:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lg/ug;->c:Lg/che;

    invoke-virtual {p1}, Lg/che;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lg/ug;->ae(IJ)V

    iget-wide p1, p0, Lg/ug;->n:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lg/ug;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ab(I)Lg/btb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/btb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ac(J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/ug;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lg/ug;->v:J

    iget-wide v4, p0, Lg/ug;->y:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lg/ug;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ad(I)Lg/btb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/btb;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ae(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lg/bcg;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lg/bcg;-><init>(Ljava/lang/String;Lg/ug;IJ)V

    iget-object p1, v4, Lg/ug;->b:Lg/gfw;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v2, p2, p3}, Lg/gfw;->l(Lg/fyg;J)V

    return-void
.end method

.method public final af(Lg/amc;Lg/amc;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/erq;->c:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lg/ug;->aj(Lg/amc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lg/btb;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    check-cast p1, [Lg/btb;

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lg/btb;->x(Lg/amc;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lg/ug;->w:Lg/djf;

    invoke-virtual {p1}, Lg/djf;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lg/ug;->g:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lg/ug;->b:Lg/gfw;

    invoke-virtual {p1}, Lg/gfw;->j()V

    iget-object p1, p0, Lg/ug;->t:Lg/gfw;

    invoke-virtual {p1}, Lg/gfw;->j()V

    iget-object p1, p0, Lg/ug;->i:Lg/gfw;

    invoke-virtual {p1}, Lg/gfw;->j()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ag(IZLg/clq;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-object p4, p0, Lg/ug;->w:Lg/djf;

    invoke-virtual {p4, p2, p1, p3, v0}, Lg/djf;->m(ZILg/clq;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v3, p0, Lg/ug;->d:J

    iget-wide v5, p0, Lg/ug;->m:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    iget-object v3, p0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v5, v3

    :try_start_1
    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lg/ug;->w:Lg/djf;

    iget v3, v3, Lg/djf;->b:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lg/ug;->d:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lg/ug;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lg/ug;->w:Lg/djf;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lg/djf;->m(ZILg/clq;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final ah(Ljava/io/IOException;)V
    .locals 1

    sget-object v0, Lg/amc;->PROTOCOL_ERROR:Lg/amc;

    invoke-virtual {p0, v0, v0, p1}, Lg/ug;->af(Lg/amc;Lg/amc;Ljava/io/IOException;)V

    return-void
.end method

.method public final ai(ILg/amc;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lg/bge;

    const/4 v7, 0x2

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lg/bge;-><init>(Ljava/lang/String;Lg/ug;ILjava/lang/Object;I)V

    iget-object p1, v4, Lg/ug;->b:Lg/gfw;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lg/gfw;->l(Lg/fyg;J)V

    return-void
.end method

.method public final aj(Lg/amc;)V
    .locals 4

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/ug;->w:Lg/djf;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lg/ug;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lg/ug;->z:Z

    iget v1, p0, Lg/ug;->o:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object v2, p0, Lg/ug;->w:Lg/djf;

    sget-object v3, Lg/erq;->c:[B

    invoke-virtual {v2, v1, p1, v3}, Lg/djf;->i(ILg/amc;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lg/amc;->NO_ERROR:Lg/amc;

    sget-object v1, Lg/amc;->CANCEL:Lg/amc;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg/ug;->af(Lg/amc;Lg/amc;Ljava/io/IOException;)V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lg/ug;->w:Lg/djf;

    invoke-virtual {v0}, Lg/djf;->flush()V

    return-void
.end method

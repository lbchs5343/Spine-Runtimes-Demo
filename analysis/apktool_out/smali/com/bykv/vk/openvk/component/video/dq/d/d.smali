.class Lcom/bykv/vk/openvk/component/video/dq/d/d;
.super Lcom/bykv/vk/openvk/component/video/dq/d/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;,
        Lcom/bykv/vk/openvk/component/video/dq/d/d$d;
    }
.end annotation


# instance fields
.field private volatile cd:Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

.field private final f:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

.field private volatile fw:Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;

.field private final jy:I

.field final mp:Ljava/lang/Object;

.field final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;)V
    .locals 2

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->p:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V

    iget v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->mn:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->jy:I

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    iput-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->iw:Ljava/util/List;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw:Ljava/util/List;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->ia:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->q:Ljava/lang/Object;

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->ox(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->jy:I

    if-lez v3, :cond_0

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v3

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    long-to-int v5, v1

    iget v6, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->jy:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    iget-object v9, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    const/4 v10, 0x0

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/bykv/vk/openvk/component/video/dq/d/s;->s:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    const/4 v9, 0x0

    :goto_0
    invoke-static {v6, v9, v7}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;ZZ)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;)I

    move-result v9

    if-eqz v4, :cond_5

    iget v11, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    if-eq v11, v9, :cond_5

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_4

    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", previousInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    iget p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    :goto_1
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lcom/bykv/vk/openvk/component/video/dq/d/ia;

    sget-boolean v9, Lcom/bykv/vk/openvk/component/video/dq/d/s;->p:Z

    if-eqz v9, :cond_7

    const-string v9, "rwd"

    goto :goto_2

    :cond_7
    const-string v9, "rw"

    :goto_2
    invoke-direct {v4, v0, v9}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq(J)V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_8

    const-string v0, "preload start from: "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v8, v4

    goto/16 :goto_6

    :cond_8
    :goto_3
    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    if-lez v1, :cond_a

    invoke-virtual {v4, v0, v10, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq([BII)V

    add-int/2addr v5, v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw p1

    :cond_9
    :goto_5
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {p0, p1, v5}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(II)V

    :cond_a
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->jy:I

    if-lez v1, :cond_b

    if-lt v5, v1, :cond_b

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    return-void

    :cond_b
    :try_start_4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox()V

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    return-void

    :catchall_3
    move-exception p1

    move-object v8, v4

    const/4 v7, 0x0

    goto :goto_6

    :cond_d
    :try_start_6
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    :cond_f
    throw p1
.end method

.method private o()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->d()Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    return v1

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->cd:Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

    return v1

    :catch_1
    move-exception v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->fw:Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    return v1

    :catch_2
    move-exception v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->d()V

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto :goto_0

    :catch_3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public ia()Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->fw:Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;

    return-object v0
.end method

.method public kk()Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->cd:Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

    return-object v0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->dq(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/d;->o()Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    nop

    :goto_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/d$d;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d;)V

    :cond_0
    return-void
.end method

.class public Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;


# instance fields
.field private final d:Ljava/lang/Object;

.field private volatile dq:J

.field private volatile ia:Z

.field private volatile iw:J

.field private kk:Ljava/io/RandomAccessFile;

.field private volatile mn:Z

.field private final o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private ox:Ljava/io/File;

.field private p:Ljava/io/File;

.field private s:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->iw:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn:Z

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    :try_start_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s:J

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error using file "

    aput-object v1, v0, p1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, " as disc cache"

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "CSJ_MediaDLPlay"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s:J

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private iw()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    const-string v1, "CSJ_MediaDLPlay"

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "complete: isCompleted "

    aput-object v8, v5, v4

    aput-object v6, v5, v3

    aput-object v7, v5, v2

    invoke-static {v1, v5}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v1, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    const-string v1, "CSJ_MediaDLPlay"

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "complete: rename "

    aput-object v8, v5, v4

    aput-object v6, v5, v3

    aput-object v7, v5, v2

    invoke-static {v1, v5}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error renaming file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "CSJ_MediaDLPlay"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static synthetic kk(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->iw()V

    return-void
.end method

.method public static synthetic mn(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->iw:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private s()J
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic s(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn:Z

    return-void
.end method

.method public dq(J[BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-gez v7, :cond_1

    const-string v3, "CSJ_MediaDLPlay"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read:  read "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string v7, "CSJ_MediaDLPlay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v9, "read: wait at "

    aput-object v9, v6, v0

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "  file size = "

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v5, v6, v8

    invoke-static {v7, v6}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x21

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    const-wide/16 v6, 0x21

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_2

    return v3

    :cond_2
    const/16 v4, 0x4e20

    if-ge v1, v4, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    return v2

    :goto_3
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public dq()V
    .locals 6

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->ox()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->ox()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig;->d()Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    const-string v1, "v_cache"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->r()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->i()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "RANGE, bytes="

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, " file hash="

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object v2, v3, v1

    const-string v1, "CSJ_MediaDLPlay"

    invoke-static {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s:J

    const-string v5, "-"

    invoke-static {v3, v4, v5, v2}, Lg/tn;->f(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->o:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V

    return-void
.end method

.method public ox()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :cond_1
    :try_start_0
    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v5, -0x80000000

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    :try_start_1
    const-string v3, "CSJ_MediaDLPlay"

    const-string v4, "totalLength: wait"

    invoke-static {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d:Ljava/lang/Object;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x4e20

    if-le v2, v3, :cond_1

    const-wide/16 v1, -0x1

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string v0, "CSJ_MediaDLPlay"

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "totalLength= "

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq:J

    return-wide v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

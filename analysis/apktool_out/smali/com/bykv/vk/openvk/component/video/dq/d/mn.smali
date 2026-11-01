.class Lcom/bykv/vk/openvk/component/video/dq/d/mn;
.super Lcom/bykv/vk/openvk/component/video/dq/d/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;,
        Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;,
        Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;
    }
.end annotation


# instance fields
.field private volatile f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

.field private volatile fw:Z

.field private final jy:Lcom/bykv/vk/openvk/component/video/dq/d/p;

.field private final mp:Ljava/net/Socket;

.field private final q:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;)V
    .locals 2

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->fw:Z

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->ox:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->p:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->q:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->jy:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    return-void
.end method

.method private d(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v2, v2, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)[B

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->dq([BII)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)Lcom/bykv/vk/openvk/component/video/dq/d/p;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->jy:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    return-object p0
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Ljava/io/File;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/p;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->dq([BII)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_2

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0, p3, p4}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)[B

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to get header, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;-><init>()V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->d(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    iget-object v4, p4, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/kk;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d$d;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/d;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

    new-instance v3, Lcom/bytedance/sdk/component/o/ia;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Lcom/bytedance/sdk/component/o/ia;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;

    const-string v4, "processCacheNetWorkConcurrent"

    invoke-direct {v2, p0, v4, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn;Ljava/lang/String;Lcom/bytedance/sdk/component/o/ia;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_7

    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v4, "fire download in process cache task"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move-object v3, v0

    :cond_7
    :goto_1
    const/16 v2, 0x2000

    new-array v2, v2, [B

    :try_start_0
    new-instance v4, Lcom/bykv/vk/openvk/component/video/dq/d/ia;

    const-string v5, "r"

    invoke-direct {v4, p2, v5}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq(J)V

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->s:I

    if-lez p2, :cond_8

    iget p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->s:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_9

    :cond_8
    iget p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    :goto_2
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result p2

    if-ge p2, p1, :cond_10

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq([B)I

    move-result p2

    if-gtz p2, :cond_f

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/d;->kk()Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/d;->ia()Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    throw v0

    :cond_a
    throw v0

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    iget-object v0, p2, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    monitor-exit v0

    goto :goto_7

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_d
    :goto_6
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_e

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string p2, "download task has finished!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal state download task has finished, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {p3, v2, v1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d([BII)V

    :goto_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    goto :goto_2

    :cond_10
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_11

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    :cond_11
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    if-eqz v3, :cond_12

    :try_start_5
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_8
    return-void

    :catchall_3
    move-exception p1

    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    :cond_13
    if-eqz v3, :cond_14

    :try_start_6
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_a
    throw p1
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/p;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/kk$ox;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/kk$ox;->dq:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->d(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->ox(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;
        }
    .end annotation

    const-string v0, "TAG_PROXY_ProxyTask"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->dq()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->d()Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;

    move-result-object v1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/p; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_2
    move-exception v1

    sget-boolean v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->fw:Z

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto :goto_0

    :catch_3
    move-exception p1

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :catch_4
    move-exception v2

    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->d()V

    :cond_4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_0

    const-string v1, "Canceled"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto :goto_0

    :catch_5
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-boolean p3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result p2

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_0
    invoke-static {p1, v1, v1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v1, v1, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v1, v1, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-static {p1, p3, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object p3

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result p2

    invoke-static {p3, p2}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p2, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rawKey: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    throw p2
.end method

.method private ia()Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;
    .locals 5

    const-string v0, "TAG_PROXY_ProxyTask"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->dq(Ljava/io/InputStream;)Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_0
    sget-object v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    :goto_0
    if-nez v3, :cond_2

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_1

    const-string v2, "cache is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->ox:Ljava/lang/String;

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget-object v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->mn:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->d:Ljava/util/List;

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw:Ljava/util/List;

    sget-boolean v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->toString()Ljava/lang/String;

    :cond_3
    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->p:I

    invoke-direct {v3, v2, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/kk$p; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_1
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    sget-boolean v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v3, :cond_4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    goto :goto_3

    :goto_2
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    sget-boolean v3, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    :cond_6
    :goto_3
    return-object v1
.end method

.method private kk()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->f:Lcom/bykv/vk/openvk/component/video/dq/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    :cond_0
    return-void
.end method

.method private ox(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/p;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->fw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->ox(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v5, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v5, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-virtual {v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Ljava/io/File;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->p(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V

    return-void
.end method

.method private p(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/p;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq;,
            Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->kk()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v3, v3, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->s:I

    const-string v4, "GET"

    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v6, v4}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;ZZ)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ", rawKey: "

    if-nez v4, :cond_d

    :try_start_1
    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v8, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object v4

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "TAG_PROXY_ProxyTask"

    if-eqz v4, :cond_2

    :try_start_2
    iget v10, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    if-eq v10, v8, :cond_2

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    :goto_0
    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Content-Length not match, old length: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", new length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentUrl: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", previousInfo: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->s:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->dq()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    sget-object v2, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v2, p2

    invoke-virtual {p1, p2, v6, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->dq([BII)V

    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->p(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->fw:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v7, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v7, v7, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v7, v7, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-static {v3, v2, v4, v7}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/ia;

    const-string v4, "rwd"

    invoke-direct {v2, p2, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v2, v7, v8}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq(J)V
    :try_end_4
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ia$dq; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v5, v2

    goto/16 :goto_9

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v2, v5

    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v5

    :goto_2
    sget-boolean v4, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->length()J

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_4
    :try_start_6
    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    move-object v2, v5

    :cond_6
    :goto_3
    :try_start_7
    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v7

    invoke-virtual {p2, v4, v7}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object p2

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_4

    :cond_7
    iget p2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    :goto_4
    const/16 v4, 0x2000

    new-array v4, v4, [B

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v8, 0x0

    :goto_5
    :try_start_8
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_b

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    if-lez v10, :cond_a

    invoke-virtual {p1, v4, v6, v10}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/2addr v8, v10

    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2, v4, v6, v10}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v10

    :try_start_a
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "append to cache file error in network task!!! "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    :goto_6
    move v6, v8

    goto :goto_9

    :cond_8
    :goto_7
    move-object v2, v5

    goto :goto_8

    :catchall_4
    move-exception p1

    move-object v5, v2

    goto :goto_6

    :cond_9
    :goto_8
    :try_start_c
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;->d()I

    move-result v10

    invoke-virtual {p0, p2, v10}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(II)V

    :cond_a
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s()V

    goto :goto_5

    :cond_b
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    :cond_c
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    :cond_d
    :try_start_d
    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/d/ox/ox;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_9
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->p()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/io/Closeable;)V

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/dq/d/ia;->dq()V

    :cond_e
    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    throw p1
.end method


# virtual methods
.method public dq()V
    .locals 0

    invoke-super {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->kk()V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "TAG_PROXY_ProxyTask"

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->ia()Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->q:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    if-eqz v2, :cond_1

    invoke-interface {v2, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)V

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->dq(Ljava/lang/String;)V

    sget v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ia:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    iget-object v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;

    iget v4, v4, Lcom/bykv/vk/openvk/component/video/dq/d/kk$dq;->dq:I

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->query(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->ox(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v2, v2, Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;->ox:I

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->jy:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    move-result v3

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZLjava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;)Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/dq/d/ox/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->jy:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->mp:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->q:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    if-eqz v0, :cond_5

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;->d(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)V

    :cond_5
    :goto_1
    return-void
.end method

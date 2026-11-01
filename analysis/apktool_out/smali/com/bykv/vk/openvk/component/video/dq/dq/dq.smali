.class public Lcom/bykv/vk/openvk/component/video/dq/dq/dq;
.super Landroid/media/MediaDataSource;


# static fields
.field public static final dq:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/component/video/dq/dq/dq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;

.field private ox:J

.field private final p:Landroid/content/Context;

.field private final s:Lcom/bykv/vk/openvk/component/video/api/ox/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->ox:J

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-direct {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lcom/bykv/vk/openvk/component/video/dq/dq/dq;
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    sget-object p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "close: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "SdkMediaDataSource"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;->d()V

    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq()Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object v0
.end method

.method public getSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->ox:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;->ox()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->ox:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->ox:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkMediaDataSource"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->ox:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/ox;->dq(J[BII)I

    move-result p1

    const-string p2, "readAt: position = "

    const-string p3, "  buffer.length ="

    invoke-static {v1, v2, p2, p3}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  offset = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " size ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  current = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SdkMediaDataSource"

    invoke-static {p3, p2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

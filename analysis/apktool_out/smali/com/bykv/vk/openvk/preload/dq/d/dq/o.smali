.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/o;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final dq:Lcom/bykv/vk/openvk/preload/dq/i;


# instance fields
.field private final d:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/o$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/o$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->d:Ljava/text/DateFormat;

    return-void
.end method

.method private declared-synchronized d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->d:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->d:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Date;

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/sql/Date;)V

    return-void
.end method

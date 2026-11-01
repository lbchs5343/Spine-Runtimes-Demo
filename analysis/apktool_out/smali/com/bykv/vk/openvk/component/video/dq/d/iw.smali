.class public Lcom/bykv/vk/openvk/component/video/dq/d/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/d/iw$dq;
    }
.end annotation


# static fields
.field private static volatile p:Lcom/bykv/vk/openvk/component/video/dq/d/iw;


# instance fields
.field private volatile d:I

.field private volatile dq:Ljava/net/ServerSocket;

.field private final ia:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/mn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ig:Ljava/lang/Runnable;

.field private volatile iw:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

.field private final kk:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

.field private volatile mn:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

.field private final mp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile no:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

.field private volatile o:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

.field private final ox:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/iw$1;

    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;

    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ig:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/iw;I)I
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d:I

    return p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;
    .locals 2

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    if-nez v0, :cond_1

    const-class v0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/iw;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq:Ljava/net/ServerSocket;

    return-object p1
.end method

.method public static synthetic dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static synthetic ia(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-object p0
.end method

.method private ia()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "Ping"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "OK\n"

    sget-object v3, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    const-string v0, "ProxyServer"

    const-string v1, "answerPing: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    throw v1
.end method

.method private iw()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq()V

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic iw(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn()Z

    move-result p0

    return p0
.end method

.method public static synthetic kk(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    return-object p0
.end method

.method private kk()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "MTI3LjAuMC4x"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic mn(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private mn()Z
    .locals 4

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$dq;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d:I

    invoke-direct {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw$dq;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/bytedance/sdk/component/o/ia;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/o/ia;-><init>(Ljava/util/concurrent/Callable;II)V

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ProxyServer"

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "Ping error"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s()V

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "pingTest: "

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_1

    const-string v1, "Ping OK!"

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s()V

    return v0
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s()V

    return-void
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public static synthetic s(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d:I

    return p0
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/ServerSocket;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->iw()V

    return-void
.end method


# virtual methods
.method public d()Lcom/bykv/vk/openvk/component/video/dq/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->o:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    return-object v0
.end method

.method public varargs dq(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p4, :cond_a

    array-length v0, p4

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    aget-object p1, p4, v1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    if-nez v0, :cond_2

    aget-object p1, p4, v1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->iw:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    :goto_0
    if-nez v0, :cond_4

    aget-object p1, p4, v1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    aget-object p1, p4, v1

    return-object p1

    :cond_5
    invoke-static {p4}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    aget-object p1, p4, v1

    return-object p1

    :cond_6
    if-eqz p2, :cond_7

    move-object p2, p3

    goto :goto_1

    :cond_7
    invoke-static {p3}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p3, p2, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/kk;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    aget-object p1, p4, v1

    return-object p1

    :cond_8
    const-string p3, ":"

    const-string p4, "https://"

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?f=1&"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "s"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->iw:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    return-void
.end method

.method public dq(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ox()Lcom/bykv/vk/openvk/component/video/dq/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->no:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    return-object v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/o/p/ox;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ig:Ljava/lang/Runnable;

    const-string v2, "r/ProxyServer"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const-string v1, "csj_proxy_server"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    :cond_0
    return-void
.end method

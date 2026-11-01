.class public final Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;
.super Ljava/lang/Object;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final dq:[B

.field private static final ox:[Ljava/lang/String;

.field private static final p:Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;


# instance fields
.field private ia:[B

.field private final iw:Ljava/util/concurrent/CountDownLatch;

.field private mn:[B

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq:[B

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->d:[Ljava/lang/String;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->ox:[Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->iw:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->ox()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1

    :catch_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static dq()Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;

    return-object v0
.end method

.method private static dq([B[[BI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    add-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    if-ltz v5, :cond_0

    aget-byte v7, v0, v5

    if-eq v7, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_2
    add-int v10, v7, v9

    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v10, v7

    move/from16 v11, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    const/4 v14, 0x0

    goto :goto_4

    :cond_2
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    :goto_4
    add-int v15, v7, v13

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-nez v9, :cond_4

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-eq v13, v6, :cond_4

    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_3

    array-length v14, v1

    sub-int/2addr v14, v8

    if-eq v11, v14, :cond_4

    add-int/lit8 v11, v11, 0x1

    const/4 v9, -0x1

    const/4 v9, 0x1

    const/4 v12, -0x1

    goto :goto_3

    :cond_3
    move v9, v14

    goto :goto_3

    :cond_4
    if-gez v9, :cond_5

    :goto_5
    move v2, v5

    goto :goto_0

    :cond_5
    if-lez v9, :cond_6

    :goto_6
    add-int/lit8 v4, v10, 0x1

    goto :goto_0

    :cond_6
    sub-int v8, v6, v13

    aget-object v9, v1, v11

    array-length v9, v9

    sub-int/2addr v9, v12

    :goto_7
    add-int/lit8 v11, v11, 0x1

    array-length v12, v1

    if-ge v11, v12, :cond_7

    aget-object v12, v1, v11

    array-length v12, v12

    add-int/2addr v9, v12

    goto :goto_7

    :cond_7
    if-ge v9, v8, :cond_8

    goto :goto_5

    :cond_8
    if-le v9, v8, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/ox;->s:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v7, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method private dq([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->d()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->iw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->mn:[B

    if-eqz v0, :cond_d

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    array-length v0, p1

    new-array v3, v0, [[B

    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    aget-object v5, p1, v4

    sget-object v6, Lcom/bytedance/sdk/component/ox/d/dq/ox;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    const/4 v4, 0x0

    if-ge p1, v0, :cond_3

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->mn:[B

    invoke-static {v5, v3, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_3
    if-le v0, v2, :cond_5

    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v6, 0x0

    :goto_4
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_5

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq:[B

    aput-object v7, p1, v6

    iget-object v7, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->mn:[B

    invoke-static {v7, p1, v6}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_7

    :goto_6
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->ia:[B

    invoke-static {p1, v3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v4, p1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    const-string p1, "!"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    if-nez v5, :cond_9

    if-nez v7, :cond_9

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->ox:[Ljava/lang/String;

    return-object p1

    :cond_9
    if-eqz v5, :cond_a

    const-string p1, "\\."

    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_a
    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->d:[Ljava/lang/String;

    :goto_8
    if-eqz v7, :cond_b

    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->d:[Ljava/lang/String;

    :goto_9
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_c

    return-object p1

    :cond_c
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_a

    :cond_d
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private ox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/ox/dq/o;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/InputStream;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/ox/dq/o;-><init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/s;->dq([B)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/s;->dq([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    monitor-enter p0

    :try_start_1
    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->mn:[B

    iput-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->ia:[B

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->iw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/ia/dq;->dq([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    array-length v0, v0

    array-length v2, v2

    :goto_0
    sub-int/2addr v0, v2

    goto :goto_1

    :cond_1
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

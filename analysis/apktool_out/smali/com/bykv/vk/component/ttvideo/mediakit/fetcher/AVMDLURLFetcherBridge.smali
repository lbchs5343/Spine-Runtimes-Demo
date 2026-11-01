.class public Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLURLFetcherBridge"

.field private static fetcherMaker:Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;


# instance fields
.field public fileKey:Ljava/lang/String;

.field private handle:J

.field isFinish:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field newURL:Ljava/lang/String;

.field public oldURL:Ljava/lang/String;

.field public rawKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->rawKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->fileKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->oldURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    return-void
.end method

.method private static native _notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static setFetcherMaker(Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;

    :cond_0
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    return v0
.end method

.method public onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    array-length p1, p4

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p4, p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->isFinish:Z

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    invoke-static {v0, v1, p2, p3, p1}, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "----start release fetcher:%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v3, 0x0

    :try_start_0
    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string v1, "****end call release:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public start(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    :try_start_0
    iput-object p3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->rawKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->fileKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->oldURL:Ljava/lang/String;

    sget-object p1, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->fetcherMaker:Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;

    invoke-interface {p1, p3, p4, p5}, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLFetcherMakerInterface;->getFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherInterface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_1
    :try_start_1
    invoke-interface {p1, p3, p4, p5, p0}, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherInterface;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherListener;)I

    move-result p2

    const/4 p5, 0x0

    if-lez p2, :cond_4

    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherInterface;->getURLs()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->handle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_5

    aget-object p1, p1, p5

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->newURL:Ljava/lang/String;

    invoke-static {v0, v1, p3, p4, p1}, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->_notifyFetcherResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, -0x2

    return p1

    :cond_4
    if-gez p2, :cond_5

    :try_start_2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, -0x3

    return p1

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return p5

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/fetcher/AVMDLURLFetcherBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_6
    :goto_3
    return v1
.end method

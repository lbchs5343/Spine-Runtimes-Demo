.class public Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLHttpExcutor"

.field private static okHttpClient:Lcom/bytedance/sdk/component/d/dq/ig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRangeHeader(JJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->formRangeStrBySize(JJ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "bytes="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static excute(Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;I)Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLResponse;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->toOkHttpHeaders(Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;)Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/iw;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->getOkHttpClient()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    const-string v6, "http open cost time:%d url:%s"

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    aget-object p1, v2, p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLResponse;

    invoke-direct {p1, p0, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLResponse;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;Lcom/bytedance/sdk/component/d/dq/f;Lcom/bytedance/sdk/component/d/dq/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "request exception is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVMDLHttpExcutor"

    invoke-static {v0, p1}, Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static formRangeStrByPos(JJ)Ljava/lang/String;
    .locals 5

    const-string v0, "-"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    cmp-long v4, p2, v1

    if-lez v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz v3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-gez v3, :cond_2

    cmp-long p0, p2, v1

    if-lez p0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formRangeStrBySize(JJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    add-long/2addr p2, p0

    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_0
    const-wide/16 p2, -0x1

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->formRangeStrByPos(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getOkHttpClient()Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 9

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lcom/bytedance/sdk/component/d/dq/ig;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoader;->getConfig()Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoaderConfigure;

    move-result-object v1

    const-wide/16 v2, 0x2710

    if-eqz v1, :cond_2

    iget v4, v1, Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOpenTimeOut:I

    if-lez v4, :cond_0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRWTimeOut:I

    if-lez v1, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    :cond_1
    move-wide v7, v4

    move-wide v4, v2

    move-wide v2, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_1
    new-instance v1, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>()V

    sget-object v6, Lcom/bytedance/sdk/component/d/dq/mp;->d:Lcom/bytedance/sdk/component/d/dq/mp;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Ljava/util/List;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v6}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lcom/bytedance/sdk/component/d/dq/ig;

    :cond_3
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lcom/bytedance/sdk/component/d/dq/ig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static toOkHttpHeaders(Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;)Lcom/bytedance/sdk/component/d/dq/iw;
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/iw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/iw$dq;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->headers:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/d/dq/iw$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/iw$dq;

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->reqOff:J

    iget-wide v3, p0, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLRequest;->size:J

    invoke-static {v1, v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/mediakit/downloader/AVMDLHttpExcutor;->buildRangeHeader(JJ)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "Range"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/component/d/dq/iw$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/iw$dq;

    :cond_1
    const-string p0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/component/d/dq/iw$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/iw$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/iw$dq;->dq()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object p0

    return-object p0
.end method

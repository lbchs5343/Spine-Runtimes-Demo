.class public Lcom/bytedance/sdk/component/ig/d/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/s/dq;


# static fields
.field public static volatile d:I

.field public static volatile dq:I

.field public static volatile ox:I

.field public static volatile p:I

.field private static s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ig/d/d/dq;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dq()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ig/d/d/dq;->s:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public dq(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    .locals 18

    move-object/from16 v0, p2

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v3

    const-wide/32 v4, 0x7fffffff

    if-eqz v3, :cond_0

    move-wide v1, v4

    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result v3

    if-lez v3, :cond_1

    int-to-long v1, v3

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-ltz v3, :cond_1

    move-wide v9, v4

    goto :goto_0

    :cond_1
    move-wide v9, v1

    :goto_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getCacheInfoByFilePath(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;

    move-result-object v1

    const-string v2, "TTVideoPreloadImp"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v13, 0x4

    new-array v8, v13, [Ljava/lang/Object;

    const-string v11, "TTMediaPlayer execVideoPreload: sourceType = "

    aput-object v11, v8, v3

    const/4 v14, 0x1

    aput-object v6, v8, v14

    const-string v6, " preloadSize = "

    const/4 v15, 0x2

    aput-object v6, v8, v15

    const/16 v16, 0x3

    aput-object v7, v8, v16

    invoke-static {v2, v8}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    const/4 v6, 0x6

    if-eqz v1, :cond_5

    cmp-long v7, v9, v4

    if-nez v7, :cond_3

    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig()J

    move-result-wide v7

    cmp-long v11, v4, v7

    if-gez v11, :cond_2

    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    cmp-long v11, v4, v7

    if-ltz v11, :cond_4

    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    cmp-long v7, v4, v9

    if-ltz v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v5, "TTVideoPreloadImp"

    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v11, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "TTMediaPlayer execVideoPreload: cacheInfo.mCacheSizeFromZero = "

    aput-object v12, v11, v3

    aput-object v7, v11, v14

    const-string v7, " cacheInfo.mMediaSize = "

    aput-object v7, v11, v15

    aput-object v1, v11, v16

    const-string v1, " sourceType = "

    aput-object v1, v11, v13

    aput-object v8, v11, v2

    invoke-static {v5, v11}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk(I)V

    const/4 v1, 0x6

    new-instance v6, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/component/ig/d/d/dq$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p3

    invoke-direct {v4, v5, v0, v7}, Lcom/bytedance/sdk/component/ig/d/d/dq$1;-><init>(Lcom/bytedance/sdk/component/ig/d/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    invoke-virtual {v6, v4}, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;->setCallBackListener(Lcom/bykv/vk/component/ttvideo/IPreLoaderItemCallBackListener;)V

    const-string v4, "TTVideoPreloadImp"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const-string v17, "TTMediaPlayer execVideoPreload start: fileName = "

    aput-object v17, v12, v3

    aput-object v7, v12, v14

    const-string v7, " url ="

    aput-object v7, v12, v15

    aput-object v8, v12, v16

    const-string v7, " isH265="

    aput-object v7, v12, v13

    aput-object v9, v12, v2

    const-string v2, " presize="

    aput-object v2, v12, v1

    const/4 v1, 0x7

    aput-object v10, v12, v1

    const-string v1, " path="

    const/16 v2, 0x8

    aput-object v1, v12, v2

    const/16 v1, 0x9

    aput-object v11, v12, v1

    invoke-static {v4, v12}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/bytedance/sdk/component/ig/d/d/dq;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/bytedance/sdk/component/ig/d/d/dq;->dq:I

    add-int/2addr v2, v14

    sput v2, Lcom/bytedance/sdk/component/ig/d/d/dq;->dq:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->addTask(Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;)V

    const-string v1, "TTVideoPreloadImp"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    const-string v4, "TTMediaPlayer execVideoPreload end: fileName = "

    aput-object v4, v2, v3

    aput-object v0, v2, v14

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

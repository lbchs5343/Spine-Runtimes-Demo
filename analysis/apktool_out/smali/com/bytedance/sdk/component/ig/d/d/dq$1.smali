.class Lcom/bytedance/sdk/component/ig/d/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/IPreLoaderItemCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/d/d/dq;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field final synthetic ox:Lcom/bytedance/sdk/component/ig/d/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/d/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->ox:Lcom/bytedance/sdk/component/ig/d/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preloadItemInfo(Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;)V
    .locals 14

    invoke-static {}, Lcom/bytedance/sdk/component/ig/d/d/dq;->dq()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    move-result v1

    const-string v2, "TTVideoPreloadImp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "TTMediaPlayer execVideoPreload: callback key ="

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-string v3, "  fileHash ="

    const/4 v9, 0x2

    aput-object v3, v6, v9

    const/4 v3, 0x3

    aput-object v4, v6, v3

    invoke-static {v2, v6}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    if-eq v1, v9, :cond_5

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    move-result p1

    invoke-interface {v1, v4, p1}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    :cond_2
    sget p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->p:I

    add-int/2addr p1, v7

    sput p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->p:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    move-result p1

    const-string v6, "error"

    invoke-interface {v1, v4, p1, v6}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    :cond_4
    sget p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->ox:I

    add-int/2addr p1, v7

    sput p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->ox:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/bytedance/sdk/component/ig/d/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    move-result p1

    invoke-interface {v1, v4, p1}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    :cond_6
    sget p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->d:I

    add-int/2addr p1, v7

    sput p1, Lcom/bytedance/sdk/component/ig/d/d/dq;->d:I

    :goto_0
    const-string p1, "TTVideoPreloadImp"

    sget v1, Lcom/bytedance/sdk/component/ig/d/d/dq;->dq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/bytedance/sdk/component/ig/d/d/dq;->d:I

    sget v6, Lcom/bytedance/sdk/component/ig/d/d/dq;->ox:I

    add-int/2addr v4, v6

    sget v6, Lcom/bytedance/sdk/component/ig/d/d/dq;->p:I

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v6, Lcom/bytedance/sdk/component/ig/d/d/dq;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v10, Lcom/bytedance/sdk/component/ig/d/d/dq;->ox:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/bytedance/sdk/component/ig/d/d/dq;->p:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "preloadItemInfo:  preTime = "

    aput-object v13, v12, v8

    aput-object v1, v12, v7

    const-string v1, "  callback ="

    aput-object v1, v12, v9

    aput-object v4, v12, v3

    const-string v1, "  callback2 ="

    aput-object v1, v12, v5

    aput-object v6, v12, v2

    const-string v1, "  callback3="

    const/4 v2, 0x6

    aput-object v1, v12, v2

    const/4 v1, 0x7

    aput-object v10, v12, v1

    const-string v1, "  callback5 ="

    const/16 v2, 0x8

    aput-object v1, v12, v2

    const/16 v1, 0x9

    aput-object v11, v12, v1

    invoke-static {p1, v12}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/VideoLiveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayCacheSyncRunner"
.end annotation


# static fields
.field static final CacheThreadshold:J = 0x1388L

.field static final LongDelay:J = 0x1f4L

.field static final ShortDelay:J = 0x12cL


# instance fields
.field mIsLiveIO:Z

.field mMdlTaskSessionId:Ljava/lang/String;

.field private final mVideoLiveManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/component/ttvideo/VideoLiveManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->this$0:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mIsLiveIO:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mVideoLiveManagerRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mMdlTaskSessionId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mIsLiveIO:Z

    return-void
.end method

.method private getPlayCache()J
    .locals 10

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mVideoLiveManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$1300(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    move-result-object v3

    const/16 v4, 0x49

    invoke-interface {v3, v4, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->getLongOption(IJ)J

    move-result-wide v3

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$1300(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    move-result-object v0

    const/16 v5, 0x48

    invoke-interface {v0, v5, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->getLongOption(IJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-ltz v0, :cond_2

    return-wide v3

    :cond_2
    cmp-long v0, v5, v7

    if-ltz v0, :cond_3

    return-wide v5

    :cond_3
    return-wide v1
.end method

.method private nextround(J)V
    .locals 5

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mVideoLiveManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->this$0:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mMdlTaskSessionId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mIsLiveIO:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;-><init>(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Ljava/lang/String;Z)V

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$7500(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mVideoLiveManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mMdlTaskSessionId:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$7300(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mMdlTaskSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$7400(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$LivePlayerState;

    move-result-object v1

    sget-object v2, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$LivePlayerState;->PLAYED:Lcom/bykv/vk/component/ttvideo/VideoLiveManager$LivePlayerState;

    const-wide/16 v3, 0x1f4

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->nextround(J)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->getPlayCache()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-nez v7, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->nextround(J)V

    return-void

    :cond_2
    iget-boolean v5, p0, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->mIsLiveIO:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;->getDataLoader()Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;

    move-result-object v5

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$7300(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Ljava/lang/String;

    move-result-object v6

    long-to-int v7, v1

    const/16 v8, 0x1c2f

    invoke-virtual {v5, v8, v6, v7}, Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;->setInt64ValueByStrKey(ILjava/lang/String;I)V

    :cond_3
    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->access$7300(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;)Ljava/lang/String;

    const-wide/16 v5, 0x1388

    cmp-long v0, v1, v5

    if-lez v0, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->nextround(J)V

    return-void

    :cond_4
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$PlayCacheSyncRunner;->nextround(J)V

    :cond_5
    :goto_0
    return-void
.end method

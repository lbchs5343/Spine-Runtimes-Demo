.class public Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;
.super Lcom/bytedance/sdk/component/o/p/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/o/p/d<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/bykv/vk/openvk/component/video/dq/s/d$d;

.field private ox:J


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/s/d$d;J)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/p/d;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->d:Lcom/bykv/vk/openvk/component/video/dq/s/d$d;

    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->ox:J

    return-void
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->dq([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public varargs dq([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    aget-object p1, p1, v2

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->ox:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 p1, 0x3

    invoke-virtual {v1, v2, v3, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    const-string v1, "MediaUtils"

    const-string v2, "MediaUtils doInBackground : "

    invoke-static {v1, v2, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->d:Lcom/bykv/vk/openvk/component/video/dq/s/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/s/d$d;->dq(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;->dq(Landroid/graphics/Bitmap;)V

    return-void
.end method

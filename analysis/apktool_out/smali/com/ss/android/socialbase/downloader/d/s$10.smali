.class Lcom/ss/android/socialbase/downloader/d/s$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/s;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/d/s;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/s$10;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/d/s$10;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$10;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/s$10;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/d/s;->dq(Lcom/ss/android/socialbase/downloader/d/s;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

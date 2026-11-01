.class Lcom/ss/android/socialbase/downloader/kk/mn$12$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn$12;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/kk/mn$12;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/kk/mn$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->ox:Lcom/ss/android/socialbase/downloader/kk/mn$12;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->d:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->ox:Lcom/ss/android/socialbase/downloader/kk/mn$12;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/kk/mn$12;->dq:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/kk/mn$12$2;->d:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

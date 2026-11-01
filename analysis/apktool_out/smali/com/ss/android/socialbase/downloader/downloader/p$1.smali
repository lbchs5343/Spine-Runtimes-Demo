.class Lcom/ss/android/socialbase/downloader/downloader/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/downloader/mp;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/downloader/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/p;Lcom/ss/android/socialbase/downloader/downloader/mp;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/p$1;->ox:Lcom/ss/android/socialbase/downloader/downloader/p;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/p$1;->dq:Lcom/ss/android/socialbase/downloader/downloader/mp;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/p$1;->d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/p$1;->dq:Lcom/ss/android/socialbase/downloader/downloader/mp;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/p$1;->d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-void
.end method

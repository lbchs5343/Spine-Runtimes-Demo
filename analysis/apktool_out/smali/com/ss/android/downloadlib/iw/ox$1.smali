.class Lcom/ss/android/downloadlib/iw/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/iw/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/socialbase/appdownloader/ox/kk;

.field final synthetic p:Lcom/ss/android/downloadlib/iw/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/iw/ox;ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/iw/ox$1;->p:Lcom/ss/android/downloadlib/iw/ox;

    iput p2, p0, Lcom/ss/android/downloadlib/iw/ox$1;->dq:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/iw/ox$1;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p4, p0, Lcom/ss/android/downloadlib/iw/ox$1;->ox:Lcom/ss/android/socialbase/appdownloader/ox/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget v0, p0, Lcom/ss/android/downloadlib/iw/ox$1;->dq:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ss/android/downloadlib/iw/ox$1;->p:Lcom/ss/android/downloadlib/iw/ox;

    iget-object v2, p0, Lcom/ss/android/downloadlib/iw/ox$1;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, p0, Lcom/ss/android/downloadlib/iw/ox$1;->ox:Lcom/ss/android/socialbase/appdownloader/ox/kk;

    invoke-static {v1, v2, v0, v3}, Lcom/ss/android/downloadlib/iw/ox;->dq(Lcom/ss/android/downloadlib/iw/ox;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/ox/kk;)V

    return-void
.end method

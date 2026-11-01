.class Lcom/ss/android/downloadlib/iw/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/iw/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/guide/install/dq;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic ox:Lcom/ss/android/downloadlib/iw/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/iw/dq$2;->ox:Lcom/ss/android/downloadlib/iw/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/iw/dq$2;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p3, p0, Lcom/ss/android/downloadlib/iw/dq$2;->d:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/dq$2;->ox:Lcom/ss/android/downloadlib/iw/dq;

    iget-object v1, p0, Lcom/ss/android/downloadlib/iw/dq$2;->dq:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v2, p0, Lcom/ss/android/downloadlib/iw/dq$2;->d:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/iw/dq;->dq(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V

    return-void
.end method

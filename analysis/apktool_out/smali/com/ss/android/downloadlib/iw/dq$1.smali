.class Lcom/ss/android/downloadlib/iw/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/iw/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/iw/dq;

.field final synthetic dq:Lcom/ss/android/socialbase/appdownloader/ox/kk;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/socialbase/appdownloader/ox/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/iw/dq$1;->d:Lcom/ss/android/downloadlib/iw/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/iw/dq$1;->dq:Lcom/ss/android/socialbase/appdownloader/ox/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/dq$1;->dq:Lcom/ss/android/socialbase/appdownloader/ox/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/ox/kk;->dq()V

    return-void
.end method

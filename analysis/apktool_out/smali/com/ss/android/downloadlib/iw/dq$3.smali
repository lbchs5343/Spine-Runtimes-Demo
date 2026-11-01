.class Lcom/ss/android/downloadlib/iw/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/guide/install/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/iw/dq;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/iw/dq;

.field final synthetic dq:Lcom/ss/android/downloadlib/guide/install/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/iw/dq;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/iw/dq$3;->d:Lcom/ss/android/downloadlib/iw/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/iw/dq$3;->dq:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/iw/dq$3;->dq:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/dq;->dq()V

    return-void
.end method

.class Lcom/ss/android/socialbase/downloader/impls/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/impls/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p$2;->dq:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p$2;->dq:Lcom/ss/android/socialbase/downloader/impls/p;

    new-instance v1, Lcom/ss/android/socialbase/downloader/d/s;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/d/s;-><init>()V

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/p;->dq(Lcom/ss/android/socialbase/downloader/impls/p;Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/downloader/r;

    const-string v0, "DefaultDownloadCache"

    const-string v1, "rebind error,use backup sqlDownloadCache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

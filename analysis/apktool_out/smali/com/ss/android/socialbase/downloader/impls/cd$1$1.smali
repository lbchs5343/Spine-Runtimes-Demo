.class Lcom/ss/android/socialbase/downloader/impls/cd$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/cd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/impls/cd$1;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/cd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$1$1;->dq:Lcom/ss/android/socialbase/downloader/impls/cd$1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string p1, "RetryScheduler"

    const-string v0, "network onAvailable: "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$1$1;->dq:Lcom/ss/android/socialbase/downloader/impls/cd$1;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/impls/cd$1;->dq:Lcom/ss/android/socialbase/downloader/impls/cd;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/impls/cd;IZ)V

    return-void
.end method

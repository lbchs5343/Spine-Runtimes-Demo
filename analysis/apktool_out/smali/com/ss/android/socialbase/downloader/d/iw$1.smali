.class Lcom/ss/android/socialbase/downloader/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/d/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/d/iw;->iw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/iw;)Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;->dq()V

    :cond_0
    return-void
.end method

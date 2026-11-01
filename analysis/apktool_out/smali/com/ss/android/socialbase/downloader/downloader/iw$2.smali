.class Lcom/ss/android/socialbase/downloader/downloader/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/iw;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/downloader/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/iw$2;->dq:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/iw$2;->dq:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/iw;->ox(Lcom/ss/android/socialbase/downloader/downloader/iw;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/iw;->kk()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveFileAsTargetName onFailed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/iw$2;->dq:Lcom/ss/android/socialbase/downloader/downloader/iw;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.class Lcom/ss/android/socialbase/appdownloader/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/iw;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/appdownloader/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p$4;->dq:Lcom/ss/android/socialbase/appdownloader/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p$4;->dq:Lcom/ss/android/socialbase/appdownloader/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/p;->d(Lcom/ss/android/socialbase/appdownloader/p;)Lcom/ss/android/socialbase/appdownloader/ox/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p$4;->dq:Lcom/ss/android/socialbase/appdownloader/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/p;->d(Lcom/ss/android/socialbase/appdownloader/p;)Lcom/ss/android/socialbase/appdownloader/ox/ia;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ox/ia;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_0
    return-void
.end method

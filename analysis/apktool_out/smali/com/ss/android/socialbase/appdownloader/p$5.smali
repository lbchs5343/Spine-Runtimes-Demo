.class Lcom/ss/android/socialbase/appdownloader/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/iw;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:I

.field final synthetic p:Z

.field final synthetic s:Lcom/ss/android/socialbase/appdownloader/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/p;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->s:Lcom/ss/android/socialbase/appdownloader/p;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iput p4, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->ox:I

    iput-boolean p5, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->cd()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notification permission denied, start download :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->s:Lcom/ss/android/socialbase/appdownloader/p;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->ox:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->p:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/p;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    return-void
.end method

.method public dq()V
    .locals 4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->cd()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notification permission granted, start download :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->s:Lcom/ss/android/socialbase/appdownloader/p;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->d:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->ox:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/p$5;->p:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Lcom/ss/android/socialbase/appdownloader/p;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    return-void
.end method

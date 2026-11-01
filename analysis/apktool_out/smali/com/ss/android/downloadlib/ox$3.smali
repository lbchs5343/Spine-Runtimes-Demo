.class Lcom/ss/android/downloadlib/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic iw:Lcom/ss/android/downloadlib/ox;

.field final synthetic ox:J

.field final synthetic p:D

.field final synthetic s:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/ox;Lcom/ss/android/downloadad/api/dq/d;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox$3;->iw:Lcom/ss/android/downloadlib/ox;

    iput-object p2, p0, Lcom/ss/android/downloadlib/ox$3;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/ox$3;->d:J

    iput-wide p5, p0, Lcom/ss/android/downloadlib/ox$3;->ox:J

    iput-wide p7, p0, Lcom/ss/android/downloadlib/ox$3;->p:D

    iput-object p9, p0, Lcom/ss/android/downloadlib/ox$3;->s:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox$3;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->d(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/ox$3;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/ss/android/downloadlib/ox$3;->ox:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/ox$3;->p:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "install_no_enough_space"

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/p;->dq(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/ox$3;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const-string v3, "clean_space_install"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox$3;->s:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-wide v1, p0, Lcom/ss/android/downloadlib/ox$3;->p:D

    double-to-long v1, v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/ox$3;->d:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox$3;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->mn(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method

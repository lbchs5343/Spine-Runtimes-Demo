.class public Lcom/ss/android/socialbase/downloader/impls/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/mp;


# instance fields
.field private final d:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private final dq:Lcom/ss/android/socialbase/downloader/impls/dq;

.field private final ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

.field private final p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->n()Lcom/ss/android/socialbase/downloader/impls/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->e()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->kx()Lcom/ss/android/socialbase/downloader/downloader/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->h()Lcom/ss/android/socialbase/downloader/downloader/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string v0, "service_alive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/f;->p:Z

    return-void
.end method


# virtual methods
.method public cd(I)Lcom/ss/android/socialbase/downloader/depend/op;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->ia(I)Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->wn()Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/f;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V

    :cond_0
    return-void
.end method

.method public d(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(ILjava/util/List;)V

    return-void
.end method

.method public d(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(IZ)V

    :cond_0
    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/jy;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->q(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/dq;->d()V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->s(I)Z

    :cond_0
    return-void
.end method

.method public dq(II)V
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/depend/er;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p1}, Lcom/ss/android/socialbase/downloader/depend/er;->dq(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIII)V

    return-void
.end method

.method public dq(IIIJ)V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIIJ)V

    return-void
.end method

.method public dq(IIJ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    return-void
.end method

.method public dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V

    :cond_0
    return-void
.end method

.method public dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;ZZ)V

    :cond_0
    return-void
.end method

.method public dq(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(IJ)V

    :cond_0
    return-void
.end method

.method public dq(ILandroid/app/Notification;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/depend/kx;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(ILcom/ss/android/socialbase/downloader/depend/kx;)V

    :cond_0
    return-void
.end method

.method public dq(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(ILjava/util/List;)V

    return-void
.end method

.method public dq(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(IZ)Z

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/er;)V
    .locals 0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Lcom/ss/android/socialbase/downloader/depend/er;)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/p/dq;->dq(Lcom/ss/android/socialbase/downloader/depend/wp;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dq(ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq(Z)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x2000000

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/f;->d(IZ)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/f;->p(IZ)V

    :cond_2
    return v0
.end method

.method public f(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->iw(I)Z

    move-result p1

    return p1
.end method

.method public fw(I)Lcom/ss/android/socialbase/downloader/depend/kx;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->kk(I)Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public gh(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->o(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->p(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ig(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->no(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iw(I)I
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->p(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    return p1
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox()V

    return-void
.end method

.method public jy(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(I)V

    return-void
.end method

.method public kk(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public mn()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public mn(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->dq(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public mp(I)I
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(I)I

    move-result p1

    return p1
.end method

.method public no(I)V
    .locals 0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq(I)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->mp(I)V

    :cond_0
    return-void
.end method

.method public ox(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ox(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->iw(I)Z

    :cond_0
    return-void
.end method

.method public ox(IZ)V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq(IZ)V

    return-void
.end method

.method public ox()Z
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->l()Z

    move-result v0

    return v0
.end method

.method public ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->mn(I)Z

    :cond_0
    return-void
.end method

.method public p(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/dq;->ox(IZ)V

    :cond_0
    return-void
.end method

.method public q(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->s(I)Z

    move-result p1

    return p1
.end method

.method public s(I)J
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->ox(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public s(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->dq:Lcom/ss/android/socialbase/downloader/impls/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f;->d:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->p()Z

    move-result v0

    return v0
.end method

.method public startService()V
    .locals 0

    return-void
.end method

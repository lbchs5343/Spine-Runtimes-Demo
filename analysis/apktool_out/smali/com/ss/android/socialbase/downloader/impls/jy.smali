.class public Lcom/ss/android/socialbase/downloader/impls/jy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/mp;
.implements Lcom/ss/android/socialbase/downloader/downloader/q;


# static fields
.field private static final dq:Ljava/lang/String; = "jy"


# instance fields
.field private volatile d:Lcom/ss/android/socialbase/downloader/downloader/kk;

.field private ox:Lcom/ss/android/socialbase/downloader/downloader/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/downloader/jy<",
            "Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/ss/android/socialbase/downloader/downloader/mp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->h()Lcom/ss/android/socialbase/downloader/downloader/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq(Lcom/ss/android/socialbase/downloader/downloader/q;)V

    return-void
.end method


# virtual methods
.method public cd(I)Lcom/ss/android/socialbase/downloader/depend/op;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->cd(I)Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/jy;->dq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/jy;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IILcom/ss/android/socialbase/downloader/depend/kk;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(ILjava/util/List;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public d(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(IZ)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->d(Ljava/util/List;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string v2, "isServiceForeground, aidlService is null"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string v2, "aidlService.isServiceForeground"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/kk;->iw()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public d(I)Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(II)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIII)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IIIJ)V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIIJ)V

    return-void

    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    move-wide v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IIJ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(IIJ)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;Z)V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(IILcom/ss/android/socialbase/downloader/depend/kk;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/iw;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IILcom/ss/android/socialbase/downloader/depend/kk;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(ILandroid/app/Notification;)V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string p2, "startForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string v1, "aidlService.startForeground, id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/depend/kx;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(ILcom/ss/android/socialbase/downloader/depend/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/kk$dq;->dq(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/kk;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/jy$1;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/downloader/impls/jy$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/jy;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/jy;->dq(Lcom/ss/android/socialbase/downloader/depend/er;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/depend/er;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/er;)Lcom/ss/android/socialbase/downloader/depend/ce;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Lcom/ss/android/socialbase/downloader/depend/ce;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->d(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Ljava/util/List;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(ZZ)V
    .locals 1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string p2, "stopForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/jy;->dq:Ljava/lang/String;

    const-string v0, "aidlService.stopForeground"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->f(I)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->f(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public fw(I)Lcom/ss/android/socialbase/downloader/depend/kx;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->fw(I)Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public gh(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->gh(I)Lcom/ss/android/socialbase/downloader/depend/mn;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/mn;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->ia(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ia()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    return-void
.end method

.method public ig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->no(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public iw(I)I
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->iw(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/mp;->iw()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/kk;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public jy(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->jy(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->jy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->kk(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->kk(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn(I)Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->mn(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public mp(I)I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/p;->dq()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->d(I)I

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->mp(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public no(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/jy;->dq(I)V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->o(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ox(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->ox(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ox(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/kk;->p(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->ox(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/kk;->d()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->p(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public q(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/mp;->q(I)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->q(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public s(I)J
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->s(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/kk;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->p:Lcom/ss/android/socialbase/downloader/downloader/mp;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/mp;->s()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->d:Lcom/ss/android/socialbase/downloader/downloader/kk;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/kk;->p()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public startService()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/jy;->ox:Lcom/ss/android/socialbase/downloader/downloader/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/jy;->startService()V

    :cond_0
    return-void
.end method

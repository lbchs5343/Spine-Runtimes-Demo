.class public Lcom/ss/android/downloadlib/d/ox;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->ox()V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/dq/d;->ig(Z)V

    :cond_1
    invoke-interface {p1}, Lcom/ss/android/downloadlib/guide/install/dq;->dq()V

    const-string v0, "AppInstallOptimiseHelper-->isAppForegroundSecond:::"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppInstallOptimiseHelper"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/d/ox$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/d/ox$1;-><init>(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/guide/install/dq;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    :cond_2
    return-void
.end method

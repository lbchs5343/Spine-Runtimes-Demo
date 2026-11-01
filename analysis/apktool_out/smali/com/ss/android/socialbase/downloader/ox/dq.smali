.class public Lcom/ss/android/socialbase/downloader/ox/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/ox/dq$dq;
    }
.end annotation


# static fields
.field private static d:Lcom/ss/android/socialbase/downloader/ox/dq$dq; = null

.field private static dq:I = 0x4


# direct methods
.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Downloader-"

    invoke-static {v0, p0}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DownloaderLogger"

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(I)V
    .locals 0

    sput p0, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 p2, 0x3

    if-gt p1, p2, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq()Z
    .locals 2

    sget v0, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/ox/dq;->dq:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/ss/android/socialbase/downloader/ox/dq;->d:Lcom/ss/android/socialbase/downloader/ox/dq$dq;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

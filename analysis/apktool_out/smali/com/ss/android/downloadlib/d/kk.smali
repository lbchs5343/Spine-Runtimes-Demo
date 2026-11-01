.class public Lcom/ss/android/downloadlib/d/kk;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/ss/android/downloadad/api/dq/dq;)Z
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ig()Lcom/ss/android/download/api/config/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ig()Lcom/ss/android/download/api/config/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v1, "invoke_app_form_background_switch"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/ss/android/downloadad/api/dq/dq;->fw()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

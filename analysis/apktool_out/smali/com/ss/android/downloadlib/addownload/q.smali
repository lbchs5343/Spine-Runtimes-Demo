.class public Lcom/ss/android/downloadlib/addownload/q;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field private static dq:Lcom/ss/android/downloadlib/addownload/dq/p;


# direct methods
.method public static d()Lcom/ss/android/downloadlib/addownload/dq/ox;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/q;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-object v0
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/dq/p;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/q;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object v0
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/q;->d:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadlib/addownload/dq/p;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/q;->dq:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-void
.end method

.method public static dq(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/p/ia;ZLcom/ss/android/downloadlib/addownload/dq/ox;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p0

    const-string p1, "tryReverseWifi nativeModel null"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p0

    const-string p1, "tryReverseWifi info null"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    if-eqz p4, :cond_2

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->ox(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->d(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v2

    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "switch_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-eqz p4, :cond_3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v4

    const-string v5, "cancel_pause_reserve_wifi_switch_status"

    invoke-virtual {v4, v5, v3, p0}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v4

    const-string v5, "pause_reserve_wifi_switch_status"

    invoke-virtual {v4, v5, v3, p0}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    :goto_2
    if-nez v2, :cond_4

    return v0

    :cond_4
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/q;->dq(I)Z

    move-result p2

    if-nez p2, :cond_5

    return v0

    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    :cond_6
    if-nez p4, :cond_8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->hasPauseReservedOnWifi()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    return v0

    :cond_8
    :goto_3
    new-instance p1, Lcom/ss/android/downloadlib/addownload/q$1;

    invoke-direct {p1, v1, p4, p0, p3}, Lcom/ss/android/downloadlib/addownload/q$1;-><init>(IZLcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/p/ia;)V

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)V

    if-eqz p4, :cond_9

    if-eqz p5, :cond_9

    new-instance p1, Lcom/ss/android/downloadlib/addownload/q$2;

    invoke-direct {p1, p0, p5}, Lcom/ss/android/downloadlib/addownload/q$2;-><init>(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/q;->dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    :cond_9
    if-eqz p4, :cond_a

    const-string p1, "\u5220\u9664"

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(Lcom/ss/android/downloadad/api/dq/dq;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d(Lcom/ss/android/downloadad/api/dq/dq;)V

    :goto_4
    const/4 p0, 0x1

    return p0
.end method

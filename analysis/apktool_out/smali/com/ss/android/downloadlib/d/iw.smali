.class public Lcom/ss/android/downloadlib/d/iw;
.super Ljava/lang/Object;


# static fields
.field private static dq:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/downloadlib/d/iw;->dq:Landroid/os/Handler;

    return-void
.end method

.method private static d(Lcom/ss/android/downloadad/api/dq/d;I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/d/iw;->kk(Lcom/ss/android/downloadad/api/dq/d;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/d/iw$2;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/downloadlib/d/iw$2;-><init>(Lcom/ss/android/downloadad/api/dq/d;I)V

    int-to-long p0, v0

    invoke-virtual {v1, v2, p0, p1}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static d(Lcom/ss/android/downloadad/api/dq/d;)Z
    .locals 1

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_opt_install_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadad/api/dq/d;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/d/iw;->d(Lcom/ss/android/downloadad/api/dq/d;I)V

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/ia;)V
    .locals 4

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

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/dq/d;->ig(Z)V

    :cond_2
    invoke-interface {p1, v0}, Lcom/ss/android/downloadlib/d/ia;->dq(Z)V

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/ss/android/downloadlib/d/iw;->o(Lcom/ss/android/downloadad/api/dq/d;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/d/iw;->d(Lcom/ss/android/downloadad/api/dq/d;I)V

    if-eqz v1, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/d/iw$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/ss/android/downloadlib/d/iw$1;-><init>(Lcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/d/ia;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    return-void
.end method

.method public static dq(Lcom/ss/android/downloadad/api/dq/d;)Z
    .locals 1

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_opt_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static ia(Lcom/ss/android/downloadad/api/dq/d;)J
    .locals 3

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_check_timeout"

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic iw(Lcom/ss/android/downloadad/api/dq/d;)J
    .locals 2

    invoke-static {p0}, Lcom/ss/android/downloadlib/d/iw;->ia(Lcom/ss/android/downloadad/api/dq/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static kk(Lcom/ss/android/downloadad/api/dq/d;)I
    .locals 2

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_check_delay"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic mn(Lcom/ss/android/downloadad/api/dq/d;)I
    .locals 0

    invoke-static {p0}, Lcom/ss/android/downloadlib/d/iw;->o(Lcom/ss/android/downloadad/api/dq/d;)I

    move-result p0

    return p0
.end method

.method private static o(Lcom/ss/android/downloadad/api/dq/d;)I
    .locals 2

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_check_count"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static ox(Lcom/ss/android/downloadad/api/dq/d;)Z
    .locals 1

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_opt_invoke_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Lcom/ss/android/downloadad/api/dq/d;)Z
    .locals 1

    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_opt_dialog_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->d(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Lcom/ss/android/downloadad/api/dq/d;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0xbb8

    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/s;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p0

    const-string v0, "app_link_opt_back_time_limit"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    return-wide v0
.end method

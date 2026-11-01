.class public Lcom/ss/android/downloadlib/addownload/p/no;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/ss/android/downloadlib/addownload/p/no;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/p/kk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p/o;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/p/o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p/ig;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/p/ig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p/iw;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/p/iw;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p/dq;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/p/dq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/p/no;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/no;->dq:Lcom/ss/android/downloadlib/addownload/p/no;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/addownload/p/no;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/addownload/p/no;->dq:Lcom/ss/android/downloadlib/addownload/p/no;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/p/no;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/p/no;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/p/no;->dq:Lcom/ss/android/downloadlib/addownload/p/no;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/android/downloadlib/addownload/p/no;->dq:Lcom/ss/android/downloadlib/addownload/p/no;

    return-object v0
.end method


# virtual methods
.method public dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;)V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/o;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->gh()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v2, "pause_optimise_switch"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/no;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/addownload/p/kk;

    if-nez v1, :cond_5

    instance-of v3, v2, Lcom/ss/android/downloadlib/addownload/p/ig;

    if-eqz v3, :cond_4

    :cond_5
    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/p/kk;->dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_6
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void

    :cond_7
    :goto_2
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void

    :cond_8
    :goto_3
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void
.end method

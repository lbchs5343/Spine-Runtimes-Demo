.class final Lcom/ss/android/socialbase/downloader/network/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/dq/d;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/network/o;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->d:Lcom/ss/android/socialbase/downloader/network/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->d:Lcom/ss/android/socialbase/downloader/network/o;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/o;->dq(Ljava/util/Map;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v2, v3, v1, v1}, Lcom/ss/android/socialbase/downloader/network/dq/d;->dq(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/dq/ox;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    new-instance v4, Lcom/ss/android/socialbase/downloader/network/dq/ox;

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/network/dq/ox;-><init>(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->dq()V

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/network/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/network/dq/dq;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/dq/ox;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v4

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->kk()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/dq/d$2;->d:Lcom/ss/android/socialbase/downloader/network/o;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/network/o;->dq(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-void

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_5
    return-void

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/dq/ox;->ox()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    throw v0
.end method

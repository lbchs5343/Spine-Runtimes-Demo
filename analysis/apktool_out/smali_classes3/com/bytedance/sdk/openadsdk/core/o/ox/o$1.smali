.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/download/DownloadStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V
    .locals 8

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-wide v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v4, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v6, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v7

    const-string v1, "onDownloadActive"

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v5, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->ox()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/dq;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onDownloadFailed(Lcom/ss/android/download/api/model/DownloadShortInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-wide v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v5, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v7, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v8

    const-string v2, "onDownloadFailed"

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v1, :cond_1

    iget-wide v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v4, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v6, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDownloadFinished(Lcom/ss/android/download/api/model/DownloadShortInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-wide v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v5, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v7, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v8

    const-string v2, "onDownloadFinished"

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v1, :cond_1

    iget-wide v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-object p1, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDownloadPaused(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V
    .locals 8

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-wide v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v4, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v6, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v7

    const-string v1, "onDownloadPaused"

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object v5, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDownloadStart(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "onIdle"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq()V

    :cond_1
    return-void
.end method

.method public onIdle()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "onIdle"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq()V

    :cond_1
    return-void
.end method

.method public onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-wide v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v5, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v8

    const-string v2, "onInstalled"

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

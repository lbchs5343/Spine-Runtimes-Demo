.class public abstract Lcom/ss/android/socialbase/downloader/notification/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field protected dq:Landroid/app/Notification;

.field private ia:I

.field private iw:I

.field private kk:Z

.field private mn:J

.field private ox:J

.field private p:J

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->d:I

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->ox:J

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->p:J

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->d:I

    return v0
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    return-void
.end method

.method public dq(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    iget p4, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    if-ne p4, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->ox:J

    return-void
.end method

.method public dq(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->ox:J

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->p:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/dq;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public dq(Landroid/app/Notification;)V
    .locals 3

    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->d:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->d:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/notification/d;->dq(IILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->d:I

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->s:Ljava/lang/String;

    return-void
.end method

.method public ia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->kk:Z

    return v0
.end method

.method public iw()J
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->mn:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->mn:J

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->mn:J

    return-wide v0
.end method

.method public declared-synchronized mn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->ia:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->ia:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->p:J

    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/dq;->iw:I

    return v0
.end method

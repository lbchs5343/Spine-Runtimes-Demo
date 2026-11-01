.class public Lcom/ss/android/socialbase/downloader/kk/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/kk/s$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/ss/android/socialbase/downloader/kk/s$dq;

.field private dq:Lcom/ss/android/socialbase/downloader/kk/s$dq;

.field private ox:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->p:I

    return-void
.end method

.method private dq()Lcom/ss/android/socialbase/downloader/kk/s$dq;
    .locals 3

    iget v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->ox:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/kk/s;->p:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/kk/s;->d:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/kk/s$dq;->p:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/kk/s$dq;->p:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->d:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    if-eqz v0, :cond_0

    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->ox:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->ox:I

    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/s$dq;-><init>(Lcom/ss/android/socialbase/downloader/kk/s$1;)V

    return-object v0
.end method

.method private dq(J)Lcom/ss/android/socialbase/downloader/kk/s$dq;
    .locals 7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->dq:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->ox:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eq v0, v1, :cond_1

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    sub-long/2addr v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public d(JJ)J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->dq:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/kk/s;->dq(J)Lcom/ss/android/socialbase/downloader/kk/s$dq;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-wide v1

    :cond_1
    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->dq:J

    iget-wide v5, p1, Lcom/ss/android/socialbase/downloader/kk/s$dq;->dq:J

    sub-long/2addr v3, v5

    iget-wide p1, p1, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    cmp-long v0, p3, p1

    if-lez v0, :cond_2

    div-long/2addr v3, p3

    monitor-exit p0

    return-wide v3

    :cond_2
    monitor-exit p0

    return-wide v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(JJ)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/s;->dq:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->dq:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->ox:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    if-eqz v2, :cond_2

    iget-wide v2, v2, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    iput-wide p1, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->dq:J

    iput-wide p3, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/kk/s;->dq()Lcom/ss/android/socialbase/downloader/kk/s$dq;

    move-result-object v2

    iput-wide p1, v2, Lcom/ss/android/socialbase/downloader/kk/s$dq;->dq:J

    iput-wide p3, v2, Lcom/ss/android/socialbase/downloader/kk/s$dq;->d:J

    if-eqz v0, :cond_3

    iput-object v0, v2, Lcom/ss/android/socialbase/downloader/kk/s$dq;->ox:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/kk/s$dq;->p:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    :cond_3
    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/kk/s;->dq:Lcom/ss/android/socialbase/downloader/kk/s$dq;

    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/ss/android/socialbase/downloader/iw/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/ia/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/iw/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private d:I

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/iw/no;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/iw/no;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()J
    .locals 10

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/no;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->d(Lcom/ss/android/socialbase/downloader/iw/no;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->ox(Lcom/ss/android/socialbase/downloader/iw/no;)Lcom/ss/android/socialbase/downloader/model/p;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->p(Lcom/ss/android/socialbase/downloader/iw/no;)Lcom/ss/android/socialbase/downloader/model/p;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/iw/no;->s(Lcom/ss/android/socialbase/downloader/iw/no;)J

    move-result-wide v8

    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-gtz v0, :cond_2

    monitor-exit v3

    return-wide v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->d:I

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/no;ZJJ)Lcom/ss/android/socialbase/downloader/iw/mp;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/iw/no;->dq(Lcom/ss/android/socialbase/downloader/iw/no;Lcom/ss/android/socialbase/downloader/iw/mp;)Z

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/iw/mp;->iw()V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->d:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/iw/no$1;->dq:Lcom/ss/android/socialbase/downloader/iw/no;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/iw/no;->iw(Lcom/ss/android/socialbase/downloader/iw/no;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long v0, v0, v8

    monitor-exit v3

    return-wide v0

    :cond_3
    monitor-exit v3

    return-wide v8

    :cond_4
    :goto_0
    monitor-exit v3

    return-wide v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return-wide v1
.end method

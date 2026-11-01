.class Lcom/ss/android/socialbase/downloader/iw/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/iw/s;


# instance fields
.field private final d:Lcom/ss/android/socialbase/downloader/model/s;

.field private final dq:Lcom/ss/android/socialbase/downloader/iw/kk;

.field private final ox:Lcom/ss/android/socialbase/downloader/iw/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/d;Lcom/ss/android/socialbase/downloader/iw/kk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/iw/ig;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/kk;)Lcom/ss/android/socialbase/downloader/model/s;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->d:Lcom/ss/android/socialbase/downloader/model/s;

    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/ia;

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/iw/ia;-><init>(Lcom/ss/android/socialbase/downloader/iw/s;Lcom/ss/android/socialbase/downloader/iw/s;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->ox:Lcom/ss/android/socialbase/downloader/iw/s;

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/iw/kk;)Lcom/ss/android/socialbase/downloader/model/s;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v2

    const-string v3, "flush_buffer_size_byte"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/s;

    move-result-object p1

    :try_start_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/iw/kk;->s()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/s;->dq(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x41e

    invoke-direct {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->d:Lcom/ss/android/socialbase/downloader/model/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/s;->d()V

    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->d:Lcom/ss/android/socialbase/downloader/model/s;

    iget-object v1, p1, Lcom/ss/android/socialbase/downloader/iw/dq;->dq:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/model/s;->dq([BII)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    iget p1, p1, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/iw/kk;->d(J)V

    return-void
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/iw/s;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->ox:Lcom/ss/android/socialbase/downloader/iw/s;

    return-object v0
.end method

.method public ox()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->d:Lcom/ss/android/socialbase/downloader/model/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/s;->ox()V

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->d:Lcom/ss/android/socialbase/downloader/model/s;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    return-void
.end method

.method public s()Lcom/ss/android/socialbase/downloader/iw/kk;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ig;->dq:Lcom/ss/android/socialbase/downloader/iw/kk;

    return-object v0
.end method

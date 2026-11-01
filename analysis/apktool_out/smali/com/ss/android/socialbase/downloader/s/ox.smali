.class public Lcom/ss/android/socialbase/downloader/s/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/s/d;


# instance fields
.field private final d:Lcom/ss/android/socialbase/downloader/iw/dq;

.field private final dq:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/ox;->dq:Ljava/io/InputStream;

    new-instance p1, Lcom/ss/android/socialbase/downloader/iw/dq;

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/iw/dq;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/s/ox;->d:Lcom/ss/android/socialbase/downloader/iw/dq;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/ox;->dq:Ljava/io/InputStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq([Ljava/io/Closeable;)V

    return-void
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/iw/dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/ox;->d:Lcom/ss/android/socialbase/downloader/iw/dq;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/s/ox;->dq:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->dq:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/ss/android/socialbase/downloader/iw/dq;->ox:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/s/ox;->d:Lcom/ss/android/socialbase/downloader/iw/dq;

    return-object v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 0

    return-void
.end method

.class Lcom/ss/android/socialbase/downloader/iw/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/iw/s;


# instance fields
.field private final d:Lcom/ss/android/socialbase/downloader/iw/s;

.field private final dq:Lcom/ss/android/socialbase/downloader/iw/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/iw/s;Lcom/ss/android/socialbase/downloader/iw/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/iw/ia;->dq:Lcom/ss/android/socialbase/downloader/iw/s;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/iw/ia;->d:Lcom/ss/android/socialbase/downloader/iw/s;

    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/socialbase/downloader/iw/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ia;->d:Lcom/ss/android/socialbase/downloader/iw/s;

    iput-object v0, p1, Lcom/ss/android/socialbase/downloader/iw/dq;->d:Lcom/ss/android/socialbase/downloader/iw/s;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/iw/ia;->dq:Lcom/ss/android/socialbase/downloader/iw/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/iw/s;->d(Lcom/ss/android/socialbase/downloader/iw/dq;)V

    return-void
.end method

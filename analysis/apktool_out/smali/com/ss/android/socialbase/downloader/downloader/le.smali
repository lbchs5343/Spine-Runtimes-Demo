.class Lcom/ss/android/socialbase/downloader/downloader/le;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/ox$dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/ss/android/socialbase/downloader/downloader/mp;
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/jy;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/jy;-><init>()V

    return-object v0
.end method

.method public dq()Lcom/ss/android/socialbase/downloader/downloader/jy;
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/q;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/q;-><init>()V

    return-object v0
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;)Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/downloader/d/iw;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/d/iw;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/downloader/ox$dq$dq;)V

    return-object v0
.end method

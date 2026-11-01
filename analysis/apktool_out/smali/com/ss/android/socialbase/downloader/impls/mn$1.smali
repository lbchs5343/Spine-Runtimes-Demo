.class Lcom/ss/android/socialbase/downloader/impls/mn$1;
.super Lcom/ss/android/socialbase/downloader/network/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/mn;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/enb;

.field final synthetic dq:Ljava/io/InputStream;

.field final synthetic ox:Lg/dnw;

.field final synthetic p:Lg/ehi;

.field final synthetic s:Lcom/ss/android/socialbase/downloader/impls/mn;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/mn;Ljava/io/InputStream;Lg/enb;Lg/dnw;Lg/ehi;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->s:Lcom/ss/android/socialbase/downloader/impls/mn;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->dq:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->d:Lg/enb;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->ox:Lg/dnw;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->p:Lg/ehi;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/s;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->d:Lg/enb;

    iget v0, v0, Lg/enb;->g:I

    return v0
.end method

.method public dq()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->dq:Ljava/io/InputStream;

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->d:Lg/enb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->ox:Lg/dnw;

    if-eqz v0, :cond_0

    check-cast v0, Lg/ib;

    iget-boolean v0, v0, Lg/ib;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->ox:Lg/dnw;

    check-cast v0, Lg/ib;

    invoke-virtual {v0}, Lg/ib;->cancel()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->p:Lg/ehi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ehi;->close()V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->ox:Lg/dnw;

    if-eqz v0, :cond_1

    check-cast v0, Lg/ib;

    iget-boolean v0, v0, Lg/ib;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/mn$1;->ox:Lg/dnw;

    check-cast v0, Lg/ib;

    invoke-virtual {v0}, Lg/ib;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

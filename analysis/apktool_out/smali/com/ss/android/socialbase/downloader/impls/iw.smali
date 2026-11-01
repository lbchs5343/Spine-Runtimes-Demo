.class public Lcom/ss/android/socialbase/downloader/impls/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/ia;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/mn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/ox;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/mn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->gh()Lg/fys;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lg/fzn;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lg/fzn;-><init>(I)V

    invoke-virtual {v1, p1}, Lg/fzn;->z(Ljava/lang/String;)V

    const-string p1, "HEAD"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/ox;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/ox;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/ox;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "name"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {p2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v3, Lg/ais;

    invoke-virtual {v3, v2, p2}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/fzn;->x()Lg/daw;

    move-result-object p1

    new-instance p2, Lg/ib;

    invoke-direct {p2, v0, p1}, Lg/ib;-><init>(Lg/fys;Lg/daw;)V

    invoke-virtual {p2}, Lg/ib;->t()Lg/enb;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg/enb;->close()V

    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/iw$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/iw$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/iw;Lg/enb;Lg/dnw;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

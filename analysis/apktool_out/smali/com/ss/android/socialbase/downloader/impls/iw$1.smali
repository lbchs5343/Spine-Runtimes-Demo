.class Lcom/ss/android/socialbase/downloader/impls/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/iw;->dq(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/dnw;

.field final synthetic dq:Lg/enb;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/iw;Lg/enb;Lg/dnw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->ox:Lcom/ss/android/socialbase/downloader/impls/iw;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->dq:Lg/enb;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->d:Lg/dnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->dq:Lg/enb;

    iget v0, v0, Lg/enb;->g:I

    return v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->dq:Lg/enb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->d:Lg/dnw;

    if-eqz v0, :cond_0

    check-cast v0, Lg/ib;

    iget-boolean v0, v0, Lg/ib;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/iw$1;->d:Lg/dnw;

    check-cast v0, Lg/ib;

    invoke-virtual {v0}, Lg/ib;->cancel()V

    :cond_0
    return-void
.end method

.class Lcom/ss/android/downloadlib/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/dq;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic ox:Lcom/ss/android/downloadlib/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/dq;Lcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->ox:Lcom/ss/android/downloadlib/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p3, p0, Lcom/ss/android/downloadlib/dq$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appBackForeground->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {p1}, Lcom/ss/android/downloadlib/d/iw;->ox(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {p1}, Lcom/ss/android/downloadlib/d/iw;->p(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->wn()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq()Lcom/ss/android/downloadlib/addownload/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/dq/d;->wn()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq()Lcom/ss/android/downloadlib/addownload/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    :cond_2
    return-void
.end method

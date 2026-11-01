.class public Lcom/ss/android/socialbase/downloader/model/p;
.super Ljava/lang/Object;


# instance fields
.field public final d:Lcom/ss/android/socialbase/downloader/network/mn;

.field public final dq:Ljava/lang/String;

.field public final ox:I

.field private p:J

.field private s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/mn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/p;->dq:Ljava/lang/String;

    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 3

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v2, "Accept-Ranges"

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/network/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->ox:I

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox(I)Z

    move-result v0

    return v0
.end method

.method public ia()J
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->p:J

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->p:J

    return-wide v0
.end method

.method public iw()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "last-modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "Last-Modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public kk()Z
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->ox(Lcom/ss/android/socialbase/downloader/network/mn;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/p;->ia()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(J)Z

    move-result v0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public no()J
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/p;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->kk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/p;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/p;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->s:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->s:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->s:J

    return-wide v0
.end method

.method public ox()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/p;->d:Lcom/ss/android/socialbase/downloader/network/mn;

    const-string v1, "Content-Range"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/network/mn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

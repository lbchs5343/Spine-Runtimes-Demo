.class public final Lcom/bytedance/sdk/component/ox/d/dq/p/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$iw;,
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$ox;,
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$s;,
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$dq;,
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;,
        Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

.field final dq:Lcom/bytedance/sdk/component/ox/d/k;

.field private iw:J

.field final ox:Lcom/bytedance/sdk/component/ox/dq/s;

.field final p:Lcom/bytedance/sdk/component/ox/dq/p;

.field s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/dq/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->iw:J

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    return-void
.end method

.method private mn()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->iw:J

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/s;->s(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->iw:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->iw:J

    return-object v0
.end method


# virtual methods
.method public d(J)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$s;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$s;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V

    return-void
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/dq/ox/no;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/bl$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->dq:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/wp;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->d:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(I)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->ox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v1

    if-eqz p1, :cond_2

    iget p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->d:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/n;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->ox(Lcom/bytedance/sdk/component/ox/d/bl;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d(J)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p1

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d(J)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object v1

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->iw()Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object p1
.end method

.method public dq(J)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;J)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(J)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/gh;)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$ox;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$ox;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;Lcom/bytedance/sdk/component/ox/d/gh;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/cd;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/op;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/kk;->dq(Lcom/bytedance/sdk/component/ox/d/kx;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/kx;->ox()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/kk;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/kk;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/ox/dq/r;->ox:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/kk;->dq(Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->iw()Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->s()Lcom/bytedance/sdk/component/ox/dq/r;

    return-void
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$iw;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$iw;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d()V

    :cond_0
    return-void
.end method

.method public p()Lcom/bytedance/sdk/component/ox/d/cd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd$dq;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

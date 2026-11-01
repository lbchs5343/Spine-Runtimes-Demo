.class public final Lg/gnj;
.super Lg/gnx;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/aju;

.field public b:J

.field public d:Z

.field public f:Z

.field public final g:J

.field public h:Z


# direct methods
.method public constructor <init>(Lg/aju;Lg/cpv;J)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gnj;->a:Lg/aju;

    invoke-direct {p0, p2}, Lg/gnx;-><init>(Lg/cpv;)V

    iput-wide p3, p0, Lg/gnj;->g:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gnj;->d:Z

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 8

    const-string p2, "expected "

    const-string p3, "sink"

    invoke-static {p1, p3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lg/gnj;->h:Z

    if-nez p3, :cond_5

    :try_start_0
    iget-object p3, p0, Lg/gnx;->j:Lg/cpv;

    const-wide/16 v0, 0x2000

    invoke-interface {p3, p1, v0, v1}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    iget-boolean p1, p0, Lg/gnj;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gnj;->d:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v2

    :cond_1
    iget-wide v4, p0, Lg/gnj;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v0

    iget-wide v6, p0, Lg/gnj;->g:J

    cmp-long p3, v6, v2

    if-eqz p3, :cond_3

    cmp-long p3, v4, v6

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes but received "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-wide v4, p0, Lg/gnj;->b:J

    cmp-long p2, v4, v6

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-wide v0

    :goto_2
    invoke-virtual {p0, p1}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lg/gnj;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gnj;->h:Z

    :try_start_0
    invoke-super {p0}, Lg/gnx;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lg/gnj;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final i(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3

    iget-boolean v0, p0, Lg/gnj;->f:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gnj;->f:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lg/gnj;->d:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lg/gnj;->d:Z

    :cond_1
    iget-object v2, p0, Lg/gnj;->a:Lg/aju;

    invoke-virtual {v2, v0, v1, p1}, Lg/aju;->h(ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

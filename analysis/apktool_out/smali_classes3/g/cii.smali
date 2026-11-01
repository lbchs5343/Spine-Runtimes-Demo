.class public final Lg/cii;
.super Lg/bfk;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/gnb;

.field public final b:Lg/eyn;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Lg/gnb;Lg/eyn;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/cii;->a:Lg/gnb;

    invoke-direct {p0, p1}, Lg/bfk;-><init>(Lg/gnb;)V

    iput-object p2, p0, Lg/cii;->b:Lg/eyn;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lg/cii;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cii;->j:Z

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 9

    iget-object p2, p0, Lg/cii;->a:Lg/gnb;

    iget-object p3, p2, Lg/gnb;->i:Ljava/lang/Object;

    check-cast p3, Lg/dsy;

    const-string v0, "sink"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/bfk;->g:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lg/cii;->j:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-wide v3, p0, Lg/cii;->i:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    :cond_1
    const-string v0, "expected chunk size and optional extensions but was \""

    cmp-long v7, v3, v1

    if-eqz v7, :cond_2

    invoke-interface {p3}, Lg/dsy;->ai()Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-interface {p3}, Lg/dsy;->q()J

    move-result-wide v3

    iput-wide v3, p0, Lg/cii;->i:J

    invoke-interface {p3}, Lg/dsy;->ai()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-wide v3, p0, Lg/cii;->i:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    const-string v3, ";"

    invoke-static {p3, v3, v4}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_8

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-wide v7, p0, Lg/cii;->i:J

    cmp-long p3, v7, v5

    if-nez p3, :cond_5

    iput-boolean v4, p0, Lg/cii;->j:Z

    iget-object p3, p2, Lg/gnb;->l:Ljava/lang/Object;

    check-cast p3, Lg/fmk;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/ais;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lg/ais;-><init>(I)V

    :goto_1
    iget-object v3, p3, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v3, Lg/dsy;

    iget-wide v4, p3, Lg/fmk;->b:J

    invoke-interface {v3, v4, v5}, Lg/dsy;->s(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p3, Lg/fmk;->b:J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p3, Lg/fmk;->b:J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lg/ais;->d()Lg/dvq;

    move-result-object p3

    iput-object p3, p2, Lg/gnb;->o:Ljava/lang/Object;

    iget-object p3, p2, Lg/gnb;->m:Ljava/lang/Object;

    check-cast p3, Lg/fys;

    invoke-static {p3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p3, p3, Lg/fys;->j:Lg/ao;

    iget-object v0, p2, Lg/gnb;->o:Ljava/lang/Object;

    check-cast v0, Lg/dvq;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/cii;->b:Lg/eyn;

    invoke-static {p3, v3, v0}, Lg/fyd;->b(Lg/ao;Lg/eyn;Lg/dvq;)V

    invoke-virtual {p0}, Lg/bfk;->h()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Lg/ais;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean p3, p0, Lg/cii;->j:Z

    if-nez p3, :cond_6

    :goto_3
    return-wide v1

    :cond_6
    iget-wide v3, p0, Lg/cii;->i:J

    const-wide/16 v5, 0x2000

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-super {p0, p1, v3, v4}, Lg/bfk;->c(Lg/clq;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    iget-wide p1, p0, Lg/cii;->i:J

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lg/cii;->i:J

    return-wide v3

    :cond_7
    iget-object p1, p2, Lg/gnb;->n:Ljava/lang/Object;

    check-cast p1, Lg/gba;

    invoke-virtual {p1}, Lg/gba;->w()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bfk;->h()V

    throw p1

    :cond_8
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lg/cii;->i:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lg/bfk;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/cii;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lg/erq;->c:[B

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, Lg/erq;->ab(Lg/cpv;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lg/cii;->a:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    invoke-virtual {v0}, Lg/gba;->w()V

    invoke-virtual {p0}, Lg/bfk;->h()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bfk;->g:Z

    return-void
.end method

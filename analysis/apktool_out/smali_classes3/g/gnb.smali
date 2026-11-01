.class public final Lg/gnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/axn;


# instance fields
.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/fys;Lg/gba;Lg/deb;Lg/ago;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gnb;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg/gnb;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg/gnb;->i:Ljava/lang/Object;

    iput-object p4, p0, Lg/gnb;->j:Ljava/lang/Object;

    new-instance p1, Lg/fmk;

    invoke-direct {p1, p3}, Lg/fmk;-><init>(Lg/dsy;)V

    iput-object p1, p0, Lg/gnb;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lg/enb;)Lg/cpv;
    .locals 8

    invoke-static {p1}, Lg/fyd;->a(Lg/enb;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lg/gnb;->p(J)Lg/qk;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p1}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    iget-object p1, p1, Lg/enb;->i:Lg/daw;

    iget-object p1, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast p1, Lg/eyn;

    iget v0, p0, Lg/gnb;->k:I

    if-ne v0, v3, :cond_1

    iput v2, p0, Lg/gnb;->k:I

    new-instance v0, Lg/cii;

    invoke-direct {v0, p0, p1}, Lg/cii;-><init>(Lg/gnb;Lg/eyn;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lg/gnb;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lg/erq;->z(Lg/enb;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v5}, Lg/gnb;->p(J)Lg/qk;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, Lg/gnb;->k:I

    if-ne p1, v3, :cond_4

    iput v2, p0, Lg/gnb;->k:I

    iget-object p1, p0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast p1, Lg/gba;

    invoke-virtual {p1}, Lg/gba;->w()V

    new-instance p1, Lg/gjh;

    invoke-direct {p1, p0}, Lg/bfk;-><init>(Lg/gnb;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lg/gnb;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lg/gba;
    .locals 1

    iget-object v0, p0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    invoke-interface {v0}, Lg/cbs;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    iget-object v0, v0, Lg/gba;->r:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/erq;->o(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    invoke-interface {v0}, Lg/cbs;->flush()V

    return-void
.end method

.method public e(Lg/daw;)V
    .locals 4

    iget-object v0, p0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    iget-object v0, v0, Lg/gba;->o:Lg/ego;

    iget-object v0, v0, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lg/daw;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast v2, Lg/eyn;

    iget-boolean v3, v2, Lg/eyn;->i:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lg/eyn;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lg/eyn;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/daw;->a:Ljava/lang/Object;

    check-cast p1, Lg/dvq;

    invoke-virtual {p0, p1, v0}, Lg/gnb;->q(Lg/dvq;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lg/enb;)J
    .locals 2

    invoke-static {p1}, Lg/fyd;->a(Lg/enb;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p1}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    invoke-static {p1}, Lg/erq;->z(Lg/enb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Z)Lg/hdt;
    .locals 10

    iget-object v0, p0, Lg/gnb;->l:Ljava/lang/Object;

    check-cast v0, Lg/fmk;

    iget v1, p0, Lg/gnb;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lg/gnb;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v1, Lg/dsy;

    iget-wide v4, v0, Lg/fmk;->b:J

    invoke-interface {v1, v4, v5}, Lg/dsy;->s(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lg/fmk;->b:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lg/fmk;->b:J

    invoke-static {v1}, Lg/awt;->x(Ljava/lang/String;)Lg/dsg;

    move-result-object v1

    iget v2, v1, Lg/dsg;->d:I

    new-instance v4, Lg/hdt;

    invoke-direct {v4}, Lg/hdt;-><init>()V

    iget-object v5, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v5, Lg/aqt;

    const-string v6, "protocol"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Lg/hdt;->j:Lg/aqt;

    iput v2, v4, Lg/hdt;->l:I

    iget-object v1, v1, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lg/hdt;->c:Ljava/lang/String;

    new-instance v1, Lg/ais;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lg/ais;-><init>(I)V

    :goto_1
    iget-object v5, v0, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v5, Lg/dsy;

    iget-wide v6, v0, Lg/fmk;->b:J

    invoke-interface {v5, v6, v7}, Lg/dsy;->s(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lg/fmk;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lg/fmk;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lg/ais;->d()Lg/dvq;

    move-result-object v0

    invoke-virtual {v4, v0}, Lg/hdt;->p(Lg/dvq;)V

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v2, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-ne v2, v0, :cond_3

    iput v3, p0, Lg/gnb;->k:I

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v2, :cond_4

    const/16 p1, 0xc8

    if-ge v2, p1, :cond_4

    iput v3, p0, Lg/gnb;->k:I

    return-object v4

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lg/gnb;->k:I

    return-object v4

    :cond_5
    invoke-virtual {v1, v5}, Lg/ais;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    iget-object v0, v0, Lg/gba;->o:Lg/ego;

    iget-object v0, v0, Lg/ego;->a:Lg/cbm;

    iget-object v0, v0, Lg/cbm;->a:Lg/eyn;

    invoke-virtual {v0}, Lg/eyn;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h(Lg/daw;J)Lg/evq;
    .locals 5

    iget-object p1, p1, Lg/daw;->a:Ljava/lang/Object;

    check-cast p1, Lg/dvq;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lg/gnb;->k:I

    if-ne p1, v2, :cond_0

    iput v1, p0, Lg/gnb;->k:I

    new-instance p1, Lg/fax;

    invoke-direct {p1, p0}, Lg/fax;-><init>(Lg/gnb;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lg/gnb;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    iget p1, p0, Lg/gnb;->k:I

    if-ne p1, v2, :cond_2

    iput v1, p0, Lg/gnb;->k:I

    new-instance p1, Lg/bfs;

    invoke-direct {p1, p0}, Lg/bfs;-><init>(Lg/gnb;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lg/gnb;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(J)Lg/qk;
    .locals 2

    iget v0, p0, Lg/gnb;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lg/gnb;->k:I

    new-instance v0, Lg/qk;

    invoke-direct {v0, p0, p1, p2}, Lg/qk;-><init>(Lg/gnb;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lg/gnb;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public q(Lg/dvq;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    const-string v1, "requestLine"

    invoke-static {p2, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lg/gnb;->k:I

    if-nez v1, :cond_1

    invoke-interface {v0, p2}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1}, Lg/dvq;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v3

    invoke-virtual {p1, v2}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v3

    invoke-interface {v3, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    const/4 p1, 0x1

    iput p1, p0, Lg/gnb;->k:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lg/gnb;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

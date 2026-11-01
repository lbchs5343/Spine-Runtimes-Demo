.class public final Lg/qk;
.super Lg/bfk;
.source "SourceFile"


# instance fields
.field public a:J

.field public final synthetic b:Lg/gnb;


# direct methods
.method public constructor <init>(Lg/gnb;J)V
    .locals 2

    iput-object p1, p0, Lg/qk;->b:Lg/gnb;

    invoke-direct {p0, p1}, Lg/bfk;-><init>(Lg/gnb;)V

    iput-wide p2, p0, Lg/qk;->a:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/bfk;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 6

    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/bfk;->g:Z

    if-nez p2, :cond_3

    iget-wide p2, p0, Lg/qk;->a:J

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x2000

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lg/bfk;->c(Lg/clq;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_2

    iget-wide v0, p0, Lg/qk;->a:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lg/qk;->a:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lg/bfk;->h()V

    :cond_1
    return-wide p1

    :cond_2
    iget-object p1, p0, Lg/qk;->b:Lg/gnb;

    iget-object p1, p1, Lg/gnb;->n:Ljava/lang/Object;

    check-cast p1, Lg/gba;

    invoke-virtual {p1}, Lg/gba;->w()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/bfk;->h()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 5

    iget-boolean v0, p0, Lg/bfk;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lg/qk;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

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

    iget-object v0, p0, Lg/qk;->b:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v0, Lg/gba;

    invoke-virtual {v0}, Lg/gba;->w()V

    invoke-virtual {p0}, Lg/bfk;->h()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bfk;->g:Z

    return-void
.end method

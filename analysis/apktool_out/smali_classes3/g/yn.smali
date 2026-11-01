.class public final Lg/yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public final synthetic a:Lg/aju;

.field public final synthetic b:Lg/ago;

.field public d:Z

.field public final synthetic f:Lg/dsy;


# direct methods
.method public constructor <init>(Lg/dsy;Lg/aju;Lg/ago;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yn;->f:Lg/dsy;

    iput-object p2, p0, Lg/yn;->a:Lg/aju;

    iput-object p3, p0, Lg/yn;->b:Lg/ago;

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 8

    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lg/yn;->f:Lg/dsy;

    const-wide/16 v0, 0x2000

    invoke-interface {p3, p1, v0, v1}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, -0x1

    iget-object p3, p0, Lg/yn;->b:Lg/ago;

    cmp-long v2, v6, v0

    if-nez v2, :cond_1

    iget-boolean p1, p0, Lg/yn;->d:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lg/yn;->d:Z

    invoke-virtual {p3}, Lg/ago;->close()V

    :cond_0
    return-wide v0

    :cond_1
    iget-object v3, p3, Lg/ago;->c:Lg/clq;

    iget-wide v0, p1, Lg/clq;->b:J

    sub-long v4, v0, v6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lg/clq;->i(Lg/clq;JJ)V

    invoke-virtual {p3}, Lg/ago;->i()Lg/cbs;

    return-wide v6

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-boolean p3, p0, Lg/yn;->d:Z

    if-nez p3, :cond_2

    iput-boolean p2, p0, Lg/yn;->d:Z

    iget-object p2, p0, Lg/yn;->a:Lg/aju;

    invoke-virtual {p2}, Lg/aju;->g()V

    :cond_2
    throw p1
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lg/yn;->d:Z

    if-nez v0, :cond_0

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
    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/yn;->d:Z

    iget-object v0, p0, Lg/yn;->a:Lg/aju;

    invoke-virtual {v0}, Lg/aju;->g()V

    :cond_0
    iget-object v0, p0, Lg/yn;->f:Lg/dsy;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/yn;->f:Lg/dsy;

    invoke-interface {v0}, Lg/cpv;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/bsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/brb;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/bsd;->b:Ljava/lang/String;

    iput-object p1, p0, Lg/bsd;->c:Landroid/content/Context;

    iput-wide p3, p0, Lg/bsd;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lg/dpe;)Lg/enb;
    .locals 7

    iget-object v0, p1, Lg/dpe;->c:Lg/daw;

    invoke-virtual {v0}, Lg/daw;->v()Lg/fzn;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-virtual {v0, v1, v2}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.8,en;q=0.6"

    invoke-virtual {v0, v1, v2}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lg/bsd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg/bsd;->c:Landroid/content/Context;

    invoke-static {v1}, Lg/acw;->bj(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Cache-Control"

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lg/bsd;->d:J

    cmp-long v1, v5, v3

    if-ltz v1, :cond_2

    sget-object v1, Lg/bjl;->a:Lg/bjl;

    const-string v3, "cacheControl"

    invoke-static {v1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bjl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Lg/ais;

    invoke-virtual {v1, v2}, Lg/ais;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "public, only-if-cached, max-stale="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "max-age=0"

    invoke-virtual {v0, v2, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lg/fzn;->x()Lg/daw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    throw p1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

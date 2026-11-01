.class public final Lg/aaq;
.super Lg/aiq;
.source "SourceFile"


# instance fields
.field public final _aw:Ljava/util/HashMap;

.field public final b:Lg/fou;

.field public final c:Lg/fou;

.field public final e:Lg/fou;

.field public final g:Lg/fou;

.field public final h:Lg/fou;


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 4

    invoke-direct {p0, p1}, Lg/aiq;-><init>(Lg/bsz;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/aaq;->_aw:Ljava/util/HashMap;

    new-instance p1, Lg/fou;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/aaq;->h:Lg/fou;

    new-instance p1, Lg/fou;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/aaq;->c:Lg/fou;

    new-instance p1, Lg/fou;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/aaq;->b:Lg/fou;

    new-instance p1, Lg/fou;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/aaq;->g:Lg/fou;

    new-instance p1, Lg/fou;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lg/fou;-><init>(Lg/gmr;Ljava/lang/String;J)V

    iput-object p1, p0, Lg/aaq;->e:Lg/fou;

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 0

    return-void
.end method

.method public final j(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9

    const-string v0, ""

    invoke-virtual {p0}, Lg/bgf;->_e()V

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lg/aaq;->_aw:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bmj;

    if-eqz v5, :cond_1

    iget-wide v6, v5, Lg/bmj;->c:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v5, Lg/bmj;->a:Ljava/lang/String;

    iget-boolean v1, v5, Lg/bmj;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object v5, v1, Lg/cyg;->e:Lg/dsd;

    sget-object v6, Lg/gad;->ax:Lg/tw;

    invoke-virtual {v5, p1, v6}, Lg/dsd;->o(Ljava/lang/String;Lg/tw;)J

    move-result-wide v5

    add-long/2addr v5, v2

    :try_start_0
    iget-object v2, v1, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v2}, Lg/xo;->i(Landroid/content/Context;)Lg/dez;

    move-result-object v2

    iget-boolean v3, v2, Lg/dez;->b:Z

    iget-object v2, v2, Lg/dez;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v7, Lg/bmj;

    invoke-direct {v7, v2, v3, v5, v6}, Lg/bmj;-><init>(Ljava/lang/String;ZJ)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    new-instance v7, Lg/bmj;

    invoke-direct {v7, v0, v3, v5, v6}, Lg/bmj;-><init>(Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v3, "Unable to get advertising id"

    invoke-virtual {v1, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lg/bmj;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1, v5, v6}, Lg/bmj;-><init>(Ljava/lang/String;ZJ)V

    :goto_2
    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, v7, Lg/bmj;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, v7, Lg/bmj;->a:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final k(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/bgf;->_e()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lg/aaq;->j(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "00000000-0000-0000-0000-000000000000"

    :goto_0
    invoke-static {}, Lg/dkq;->ap()Ljava/security/MessageDigest;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v1, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const-string p2, "%032X"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

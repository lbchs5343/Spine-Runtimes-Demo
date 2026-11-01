.class public final Lg/fqh;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public g:J

.field public h:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/List;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public final q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I


# direct methods
.method public constructor <init>(Lg/cyg;J)V
    .locals 2

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/fqh;->h:J

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fqh;->s:Ljava/lang/String;

    iput-wide p2, p0, Lg/fqh;->q:J

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/fqh;->t:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/fqh;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final w()V
    .locals 6

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1}, Lg/gmr;->as()Lg/rs;

    move-result-object v1

    sget-object v3, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v1, v3}, Lg/rs;->g(Lg/gxx;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v2, Lg/bgm;->o:Lg/dvb;

    const-string v3, "Analytics Storage consent is not granted"

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    iget-object v3, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v3}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "%032x"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->o:Lg/dvb;

    if-nez v1, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    const-string v3, "not null"

    :goto_1
    const-string v4, "Resetting session stitching token to "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    iput-object v1, p0, Lg/fqh;->k:Ljava/lang/String;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/fqh;->h:J

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/fqh;->o:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/fqh;->o:Ljava/lang/String;

    return-object v0
.end method

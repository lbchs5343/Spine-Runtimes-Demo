.class public final Lg/fcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/arm;
.implements Lcom/google/android/gms/internal/ads/zzym;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-wide p1, p0, Lg/fcw;->d:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lg/fcw;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fcw;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/fcw;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lg/fcw;->d:J

    iput-wide p5, p0, Lg/fcw;->e:J

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/internal/ads/zzacs;)J
    .locals 6

    iget-wide v0, p0, Lg/fcw;->e:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v4, p0, Lg/fcw;->e:J

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v4
.end method

.method public f(JZZ)Z
    .locals 6

    iget-object v0, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v0, Lg/rd;

    iget-object v1, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v1, Lg/cjv;

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    sget-object v2, Lg/blm;->a:Lg/blm;

    iget-object v2, v2, Lg/blm;->b:Lg/dvf;

    invoke-interface {v2}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dkg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->e:Lg/dsd;

    const/4 v3, 0x0

    sget-object v4, Lg/gad;->j:Lg/tw;

    invoke-virtual {v2, v3, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/cyg;->as()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v2, Lg/gmr;->k:Lg/fou;

    iget-object v3, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lg/fou;->g(J)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v2, Lg/gmr;->k:Lg/fou;

    iget-object v3, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lg/fou;->g(J)V

    :cond_1
    :goto_0
    iget-wide v2, p0, Lg/fcw;->d:J

    sub-long v2, p1, v2

    if-nez p3, :cond_3

    const-wide/16 v4, 0x3e8

    cmp-long p3, v2, v4

    if-ltz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    iget-wide v2, p0, Lg/fcw;->e:J

    sub-long v2, p1, v2

    iput-wide p1, p0, Lg/fcw;->e:J

    :cond_4
    iget-object p3, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p3, p3, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p3, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/dsd;->j()Z

    move-result v2

    iget-object v3, v1, Lg/cyg;->h:Lg/bcm;

    invoke-static {v3}, Lg/cyg;->aj(Lg/os;)V

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v2

    invoke-static {v2, p3, v4}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    if-nez p4, :cond_5

    iget-object p4, v1, Lg/cyg;->c:Lg/csp;

    invoke-static {p4}, Lg/cyg;->aj(Lg/os;)V

    const-string v1, "auto"

    const-string v2, "_e"

    invoke-virtual {p4, v1, v2, p3}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iput-wide p1, p0, Lg/fcw;->d:J

    invoke-virtual {v0}, Lg/emo;->i()V

    const-wide/32 p1, 0x36ee80

    invoke-virtual {v0, p1, p2}, Lg/emo;->j(J)V

    return v4
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzyl;
    .locals 1

    iget-object v0, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzym;
    .locals 2

    iget-object v0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v0, Lg/fcw;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzadq;
    .locals 5

    iget-wide v0, p0, Lg/fcw;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzada;

    iget-wide v1, p0, Lg/fcw;->d:J

    iget-object v3, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzada;-><init>(Lcom/google/android/gms/internal/ads/zzadc;J)V

    return-object v0
.end method

.method public zzg(J)V
    .locals 2

    iget-object v0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzadb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzadb;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzd([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lg/fcw;->e:J

    return-void
.end method

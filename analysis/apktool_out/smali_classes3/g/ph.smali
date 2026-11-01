.class public final Lg/ph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhi;
.implements Lcom/google/android/gms/internal/ads/zzfen;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "no_ads_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flow"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, p1, Lg/cbv;->d:Lg/mx;

    iget-object p1, p1, Lg/cbv;->b:Lg/akx;

    iget-object p1, p1, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/bli;

    invoke-direct {v2, v1}, Lg/bli;-><init>(Lg/mx;)V

    invoke-static {p0, p1, v0, v2}, Lg/mx;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lg/ciq;)V

    return-void
.end method


# virtual methods
.method public i()Lg/fsy;
    .locals 12

    iget-object v0, p0, Lg/ph;->e:Ljava/lang/Object;

    check-cast v0, Lg/gyk;

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lg/ph;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lg/ph;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lg/fsy;

    iget-object v0, p0, Lg/ph;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lg/ph;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lg/gyk;

    iget-object v0, p0, Lg/ph;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lg/ph;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lg/ph;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lg/ph;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, p0, Lg/ph;->g:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lg/fsy;-><init>(Ljava/lang/String;Lg/gyk;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j(Lg/gyk;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/ph;->e:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null registrationStatus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;
    .locals 1

    new-instance v0, Lg/gyq;

    invoke-direct {v0, p0, p1, p2}, Lg/gyq;-><init>(Lg/ph;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dzg;

    return-object p1
.end method

.method public synthetic zza(Lcom/google/android/gms/internal/ads/zzfbr;)Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 0

    iput-object p1, p0, Lg/ph;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzfek;
    .locals 1

    iget-object v0, p0, Lg/ph;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfek;

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/ads/zzfco;)Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 0

    iput-object p1, p0, Lg/ph;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzfeq;
    .locals 1

    iget-object v0, p0, Lg/ph;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfeq;

    return-object v0
.end method

.method public bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcpa;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 0

    iput-object p1, p0, Lg/ph;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 0

    iput-object p1, p0, Lg/ph;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 0

    iput-object p1, p0, Lg/ph;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 0

    iput-object p1, p0, Lg/ph;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public zzg()Lcom/google/android/gms/internal/ads/zzdhj;
    .locals 15

    iget-object v0, p0, Lg/ph;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdcf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdcf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/ph;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/ph;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhe;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/ph;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpa;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcpa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lg/fik;

    iget-object v0, p0, Lg/ph;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcpa;

    iget-object v0, p0, Lg/ph;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdhe;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcta;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzdta;-><init>()V

    iget-object v0, p0, Lg/ph;->a:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzdcf;

    iget-object v0, p0, Lg/ph;->b:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejg;->zza()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object v12

    iget-object v0, p0, Lg/ph;->e:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v0, p0, Lg/ph;->f:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v0, p0, Lg/ph;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/bxr;

    invoke-direct/range {v2 .. v14}, Lg/fik;-><init>(Lg/bxr;Lcom/google/android/gms/internal/ads/zzcpa;Lcom/google/android/gms/internal/ads/zzdhe;Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzfgu;Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzdta;Lcom/google/android/gms/internal/ads/zzdcf;Lcom/google/android/gms/internal/ads/zzcvw;Lcom/google/android/gms/internal/ads/zzeje;Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzfbr;)V

    return-object v2
.end method

.method public bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/ph;->zzg()Lcom/google/android/gms/internal/ads/zzdhj;

    move-result-object v0

    return-object v0
.end method

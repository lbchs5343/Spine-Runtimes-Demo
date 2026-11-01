.class public final Lcom/google/android/gms/internal/ads/zzenp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeni;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzenf;

.field public final b:Lcom/google/android/gms/internal/ads/zzfko;

.field public final c:Lcom/google/android/gms/internal/ads/zzffm;

.field public d:Lcom/google/android/gms/internal/ads/zzcsf;

.field public final e:Lcom/google/android/gms/internal/ads/zzchk;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzffm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->e:Lcom/google/android/gms/internal/ads/zzchk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenp;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenp;->c:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzz()Lcom/google/android/gms/internal/ads/zzfko;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->b:Lcom/google/android/gms/internal/ads/zzfko;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzenf;->zzd()Lcom/google/android/gms/internal/ads/zzems;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zzv(Lcom/google/android/gms/internal/ads/zzems;)Lcom/google/android/gms/internal/ads/zzffm;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenp;->d:Lcom/google/android/gms/internal/ads/zzcsf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsf;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lg/aeh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeng;Lcom/google/android/gms/internal/ads/zzenh;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->z:Lg/esy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenp;->f:Landroid/content/Context;

    invoke-static {v1}, Lg/esy;->ab(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzenp;->e:Lcom/google/android/gms/internal/ads/zzchk;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lg/aeh;->zzs:Lg/acl;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzenk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzenk;-><init>(Lcom/google/android/gms/internal/ads/zzenp;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzenl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzenl;-><init>(Lcom/google/android/gms/internal/ads/zzenp;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_2
    iget-boolean p2, p1, Lg/aeh;->zzf:Z

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzfgl;->zza(Landroid/content/Context;Z)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lg/aeh;->zzf:Z

    if-eqz p2, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzl()Lcom/google/android/gms/internal/ads/zzdvk;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzdvk;->zzo(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzenj;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzenj;->zza:I

    iget-object p3, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance p3, Landroid/util/Pair;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrv;->zza:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p3, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrv;->zzb:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    aput-object p3, v5, v3

    aput-object v0, v5, v2

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdrx;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenp;->c:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzffm;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzffm;->zzC(I)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzJ()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfkk;->zzf(Lcom/google/android/gms/internal/ads/zzffo;)I

    move-result p3

    const/16 v0, 0x8

    invoke-static {v1, p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/content/Context;IILg/aeh;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v9

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzffo;->zzn:Lg/fbj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    if-eqz p3, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzenf;->zzd()Lcom/google/android/gms/internal/ads/zzems;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/android/gms/internal/ads/zzems;->zzm(Lg/fbj;)V

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzh()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object p3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdhi;->zzf(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdhi;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzenf;->zzd()Lcom/google/android/gms/internal/ads/zzems;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/internal/ads/zzdcd;->zzk(Lg/eus;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdhi;->zze(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzenf;->zzc()Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdhi;->zzd(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdhi;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcpa;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdhi;->zzc(Lcom/google/android/gms/internal/ads/zzcpa;)Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdhi;->zzg()Lcom/google/android/gms/internal/ads/zzdhj;

    move-result-object v10

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdhj;->zzf()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzi(I)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p2, p1, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p1, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;

    :cond_5
    move-object v8, v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzy()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfin;->zzc()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchk;->zzD()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdhj;->zza()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsy;->zzj()Lg/dcy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsy;->zzi(Lg/dcy;)Lg/dcy;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lg/dcy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->d:Lcom/google/android/gms/internal/ads/zzcsf;

    new-instance v5, Lg/aqo;

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v5 .. v10}, Lg/aqo;-><init>(Lcom/google/android/gms/internal/ads/zzenp;Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzdhj;)V

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzcsf;->zze(Lcom/google/android/gms/internal/ads/zzgee;)V

    return v2
.end method

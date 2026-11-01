.class public final Lcom/google/android/gms/internal/ads/zzfcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeni;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffm;

.field public final b:Lcom/google/android/gms/internal/ads/zzems;

.field public final c:Lcom/google/android/gms/internal/ads/zzfdw;

.field public final d:Landroid/content/Context;

.field public e:Lcom/google/android/gms/internal/ads/zzbdi;

.field public f:Lg/dcy;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lcom/google/android/gms/internal/ads/zzchk;

.field public final i:Lcom/google/android/gms/internal/ads/zzfko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchk;Lcom/google/android/gms/internal/ads/zzems;Lcom/google/android/gms/internal/ads/zzfdw;Lcom/google/android/gms/internal/ads/zzffm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcw;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcw;->h:Lcom/google/android/gms/internal/ads/zzchk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfcw;->b:Lcom/google/android/gms/internal/ads/zzems;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfcw;->a:Lcom/google/android/gms/internal/ads/zzffm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfcw;->c:Lcom/google/android/gms/internal/ads/zzfdw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzz()Lcom/google/android/gms/internal/ads/zzfko;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcw;->i:Lcom/google/android/gms/internal/ads/zzfko;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcw;->f:Lg/dcy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lg/aeh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeng;Lcom/google/android/gms/internal/ads/zzenh;)Z
    .locals 14

    move-object/from16 v0, p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcw;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfcq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfcq;-><init>(Lcom/google/android/gms/internal/ads/zzfcw;)V

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfcw;->zza()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v5, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfcw;->h:Lcom/google/android/gms/internal/ads/zzchk;

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lg/aeh;->zzf:Z

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzchk;->zzl()Lcom/google/android/gms/internal/ads/zzdvk;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzdvk;->zzo(Z)V

    :cond_2
    move-object/from16 v3, p3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lg/eno;

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdrv;->zza:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, p1, Lg/aeh;->zzz:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdrv;->zzb:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lg/ti;->a:Lg/ti;

    iget-object v10, v10, Lg/ti;->v:Lg/czz;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/util/Pair;

    aput-object v7, v9, v1

    aput-object v8, v9, v5

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdrx;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfcw;->a:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzffm;->zzs(Lg/eno;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzffm;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzffm;->zzJ()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zzf(Lcom/google/android/gms/internal/ads/zzffo;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcw;->d:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v3, v1, v7, p1}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/content/Context;IILg/aeh;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhQ:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfcw;->b:Lcom/google/android/gms/internal/ads/zzems;

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzchk;->zzg()Lcom/google/android/gms/internal/ads/zzdgm;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zze(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdgm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzj(Lcom/google/android/gms/internal/ads/zzczj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzk(Lg/eus;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzd(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdgm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcw;->e:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;)V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzc(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzdgm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdgm;->zzf()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfcw;->c:Lcom/google/android/gms/internal/ads/zzfdw;

    if-eqz v8, :cond_4

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zze(Lcom/google/android/gms/internal/ads/zzcwm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzf(Lcom/google/android/gms/internal/ads/zzcya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzb(Lcom/google/android/gms/internal/ads/zzcwp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzchk;->zzg()Lcom/google/android/gms/internal/ads/zzdgm;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zze(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdgm;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzj(Lcom/google/android/gms/internal/ads/zzczj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zze(Lcom/google/android/gms/internal/ads/zzcwm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzf(Lcom/google/android/gms/internal/ads/zzcya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzb(Lcom/google/android/gms/internal/ads/zzcwp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zza(Lg/evo;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzl(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzk(Lg/eus;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzi(Lcom/google/android/gms/internal/ads/zzcyx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzc(Lcom/google/android/gms/internal/ads/zzcxc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzd(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdgm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcw;->e:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzc(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzdgm;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdgm;->zzf()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzdgn;->zzf()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfkl;->zzi(I)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v1, p1, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p1, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;

    :goto_2
    move-object v11, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzdgn;->zza()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcsy;->zzj()Lg/dcy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcsy;->zzi(Lg/dcy;)Lg/dcy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcw;->f:Lg/dcy;

    new-instance v8, Lg/fhp;

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v8 .. v13}, Lg/fhp;-><init>(Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzdgn;)V

    invoke-static {p1, v8, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return v5
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcw;->e:Lcom/google/android/gms/internal/ads/zzbdi;

    return-void
.end method

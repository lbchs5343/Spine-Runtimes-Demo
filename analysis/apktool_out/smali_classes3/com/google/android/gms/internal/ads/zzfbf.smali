.class public final Lcom/google/android/gms/internal/ads/zzfbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeni;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcze;

.field public final b:Lcom/google/android/gms/internal/ads/zzffm;

.field public c:Lcom/google/android/gms/internal/ads/zzenh;

.field public d:Lg/abz;

.field public final e:Lcom/google/android/gms/internal/ads/zzems;

.field public f:Lg/dcy;

.field public final g:Lcom/google/android/gms/internal/ads/zzemw;

.field public final h:Landroid/content/Context;

.field public final i:Landroid/widget/FrameLayout;

.field public j:Z

.field public final k:Lcom/google/android/gms/internal/ads/zzfko;

.field public final l:Ljava/util/concurrent/Executor;

.field public final m:Lcom/google/android/gms/internal/ads/zzdbk;

.field public final n:Lcom/google/android/gms/internal/ads/zzchk;

.field public o:Lcom/google/android/gms/internal/ads/zzbdi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/eno;Lcom/google/android/gms/internal/ads/zzchk;Lcom/google/android/gms/internal/ads/zzems;Lcom/google/android/gms/internal/ads/zzemw;Lcom/google/android/gms/internal/ads/zzffm;Lcom/google/android/gms/internal/ads/zzdbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->l:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbf;->n:Lcom/google/android/gms/internal/ads/zzchk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzems;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfbf;->g:Lcom/google/android/gms/internal/ads/zzemw;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfbf;->b:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzf()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzz()Lcom/google/android/gms/internal/ads/zzfko;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->k:Lcom/google/android/gms/internal/ads/zzfko;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfbf;->m:Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-virtual {p7, p3}, Lcom/google/android/gms/internal/ads/zzffm;->zzs(Lg/eno;)Lcom/google/android/gms/internal/ads/zzffm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->c:Lcom/google/android/gms/internal/ads/zzenh;

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfbb;-><init>(Lcom/google/android/gms/internal/ads/zzfbf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->l:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->c:Lcom/google/android/gms/internal/ads/zzenh;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzenh;->zza()V

    :cond_1
    return-void
.end method

.method public final zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfbf;->l:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    const-string v0, "Ad unit ID should not be null for banner ad."

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfbd;-><init>(Lcom/google/android/gms/internal/ads/zzfbf;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->zza()Z

    move-result v4

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbf;->b:Lcom/google/android/gms/internal/ads/zzffm;

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzffm;->zzS()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    return v3

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v9, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfbf;->n:Lcom/google/android/gms/internal/ads/zzchk;

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lg/aeh;->zzf:Z

    if-eqz v4, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzchk;->zzl()Lcom/google/android/gms/internal/ads/zzdvk;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzdvk;->zzo(Z)V

    :cond_2
    new-instance v4, Landroid/util/Pair;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdrv;->zza:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lg/aeh;->zzz:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzdrv;->zzb:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lg/ti;->a:Lg/ti;

    iget-object v12, v12, Lg/ti;->v:Lg/czz;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/util/Pair;

    aput-object v4, v11, v3

    aput-object v10, v11, v8

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdrx;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzffm;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzffm;->zzJ()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfkk;->zzf(Lcom/google/android/gms/internal/ads/zzffo;)I

    move-result v4

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfbf;->h:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v4, v11, v0}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/content/Context;IILg/aeh;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v4

    sget-object v12, Lcom/google/android/gms/internal/ads/zzbet;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzems;

    if-eqz v12, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzffm;->zzh()Lg/eno;

    move-result-object v5

    iget-boolean v5, v5, Lg/eno;->zzk:Z

    if-eqz v5, :cond_4

    if-eqz v14, :cond_3

    const/4 v0, 0x7

    invoke-static {v0, v13, v13}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzems;->zzdB(Lg/abz;)V

    :cond_3
    return v3

    :cond_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzhO:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfbf;->m:Lcom/google/android/gms/internal/ads/zzdbk;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzchk;->zze()Lcom/google/android/gms/internal/ads/zzcqg;

    move-result-object v3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzi(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzj(Lcom/google/android/gms/internal/ads/zzczj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzk(Lg/eus;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzf(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfbf;->o:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zze(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhe;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjj;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {v2, v9, v13}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Lcom/google/android/gms/internal/ads/zzdjj;Lg/ejp;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzd(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcri;

    invoke-direct {v2, v12, v6}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzdbk;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzg(Lcom/google/android/gms/internal/ads/zzcri;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpa;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzc(Lcom/google/android/gms/internal/ads/zzcpa;)Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()Lcom/google/android/gms/internal/ads/zzcqh;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzchk;->zze()Lcom/google/android/gms/internal/ads/zzcqg;

    move-result-object v3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzi(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzj(Lcom/google/android/gms/internal/ads/zzczj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zza(Lg/evo;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfbf;->g:Lcom/google/android/gms/internal/ads/zzemw;

    invoke-virtual {v2, v9, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zza(Lg/evo;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzl(Lcom/google/android/gms/internal/ads/zzdel;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzd(Lcom/google/android/gms/internal/ads/zzcxg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zze(Lcom/google/android/gms/internal/ads/zzcwm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzf(Lcom/google/android/gms/internal/ads/zzcya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzb(Lcom/google/android/gms/internal/ads/zzcwp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzk(Lg/eus;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2, v14, v7}, Lcom/google/android/gms/internal/ads/zzdcd;->zzi(Lcom/google/android/gms/internal/ads/zzcyx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzf(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfbf;->o:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zze(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhe;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdjj;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {v2, v9, v13}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Lcom/google/android/gms/internal/ads/zzdjj;Lg/ejp;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzd(Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcri;

    invoke-direct {v2, v12, v6}, Lcom/google/android/gms/internal/ads/zzcri;-><init>(Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzdbk;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzg(Lcom/google/android/gms/internal/ads/zzcri;)Lcom/google/android/gms/internal/ads/zzcqg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpa;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcqg;->zzc(Lcom/google/android/gms/internal/ads/zzcpa;)Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()Lcom/google/android/gms/internal/ads/zzcqh;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcqh;->zzj()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzfkl;->zzi(I)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v3, v0, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v0, v0, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;

    :cond_6
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->c:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcqh;->zzd()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsy;->zzj()Lg/dcy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcsy;->zzi(Lg/dcy;)Lg/dcy;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    new-instance v0, Lg/gkr;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v4

    move-object v4, v2

    move-object v2, v13

    invoke-direct/range {v0 .. v6}, Lg/gkr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {v9, v0, v7}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return v8
.end method

.method public final zzc()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzffm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->b:Lcom/google/android/gms/internal/ads/zzffm;

    return-object v0
.end method

.method public final zzm()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->m:Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcze;->zzd(I)V

    return-void
.end method

.method public final zzn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->m:Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcze;->zze(I)V

    return-void
.end method

.method public final zzo(Lg/dyo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->g:Lcom/google/android/gms/internal/ads/zzemw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzemw;->zza(Lg/dyo;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzcyy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->l:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->o:Lcom/google/android/gms/internal/ads/zzbdi;

    return-void
.end method

.method public final zzr()V
    .locals 6

    const-string v0, "Banner view provided from "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcpd;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzd()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzd()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already has a parent view. Removing its old parent."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzd()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzo()Lcom/google/android/gms/internal/ads/zzdas;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdas;->zza(Lcom/google/android/gms/internal/ads/zzems;)Lcom/google/android/gms/internal/ads/zzdas;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbf;->g:Lcom/google/android/gms/internal/ads/zzemw;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdas;->zzc(Lcom/google/android/gms/internal/ads/zzemw;)Lcom/google/android/gms/internal/ads/zzdas;

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzd()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfbf;->c:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzenh;->zzb(Ljava/lang/Object;)V

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->l:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzems;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfbc;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzfbc;-><init>(Lcom/google/android/gms/internal/ads/zzems;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zza()I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zza()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcze;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcze;->zze(I)V

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcze;->zzd(I)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->p()V

    invoke-static {}, Lg/agd;->h()Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zza()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:Lg/dcy;

    if-eqz v0, :cond_6

    const-string v0, "Show timer went off but there is an ongoing ad request."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    goto :goto_1

    :cond_6
    const-string v0, "No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zza()V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzt()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Landroid/view/View;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, "keyguard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/app/KeyguardManager;

    :cond_2
    invoke-static {v0, v2, v3}, Lg/esy;->p(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v0

    return v0
.end method

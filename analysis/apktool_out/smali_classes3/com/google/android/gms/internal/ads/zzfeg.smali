.class public final Lcom/google/android/gms/internal/ads/zzfeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeni;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffm;

.field public final b:Lcom/google/android/gms/internal/ads/zzfdw;

.field public final c:Lcom/google/android/gms/internal/ads/zzfck;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/gms/internal/ads/zzffg;

.field public f:Lg/dcy;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lcom/google/android/gms/internal/ads/zzchk;

.field public final i:Lcom/google/android/gms/internal/ads/zzfko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchk;Lcom/google/android/gms/internal/ads/zzfck;Lcom/google/android/gms/internal/ads/zzfdw;Lcom/google/android/gms/internal/ads/zzffm;Lcom/google/android/gms/internal/ads/zzffg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfeg;->h:Lcom/google/android/gms/internal/ads/zzchk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfeg;->c:Lcom/google/android/gms/internal/ads/zzfck;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfeg;->b:Lcom/google/android/gms/internal/ads/zzfdw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfeg;->a:Lcom/google/android/gms/internal/ads/zzffm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfeg;->e:Lcom/google/android/gms/internal/ads/zzffg;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzz()Lcom/google/android/gms/internal/ads/zzfko;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->i:Lcom/google/android/gms/internal/ads/zzfko;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfeg;Lcom/google/android/gms/internal/ads/zzfci;)Lcom/google/android/gms/internal/ads/zzdov;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfeg;->j(Lcom/google/android/gms/internal/ads/zzfci;)Lcom/google/android/gms/internal/ads/zzdov;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final j(Lcom/google/android/gms/internal/ads/zzfci;)Lcom/google/android/gms/internal/ads/zzdov;
    .locals 3

    check-cast p1, Lg/fuc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->h:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchk;->zzi()Lcom/google/android/gms/internal/ads/zzdov;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object p1, p1, Lg/fuc;->a:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->e:Lcom/google/android/gms/internal/ads/zzffg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzh(Lcom/google/android/gms/internal/ads/zzffg;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdov;->zzd(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdov;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcd;->zzn()Lcom/google/android/gms/internal/ads/zzdcf;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdov;->zzc(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdov;

    return-object v0
.end method

.method public final zza()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb(Lg/aeh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeng;Lcom/google/android/gms/internal/ads/zzenh;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwq;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwq;-><init>(Lg/aeh;Ljava/lang/String;)V

    move-object/from16 v1, p3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfeg;->g:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const-string v0, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfdz;-><init>(Lcom/google/android/gms/internal/ads/zzfeg;)V

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->f:Lg/dcy;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfeg;->c:Lcom/google/android/gms/internal/ads/zzfck;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzfck;->zzd()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzfck;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdow;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcvt;->zzh()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzi(I)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    iget-object v7, v7, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    iget-object v7, v7, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;

    move-object v11, v1

    goto :goto_0

    :cond_2
    move-object v11, v6

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    iget-boolean v1, v1, Lg/aeh;->zzf:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfeg;->d:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzfgl;->zza(Landroid/content/Context;Z)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v8, Lg/edt;->a:Lg/edt;

    iget-object v8, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    iget-boolean v1, v1, Lg/aeh;->zzf:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->h:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzl()Lcom/google/android/gms/internal/ads/zzdvk;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzdvk;->zzo(Z)V

    :cond_3
    new-instance v1, Landroid/util/Pair;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdrv;->zza:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    iget-wide v9, v9, Lg/aeh;->zzz:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdrv;->zzb:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lg/ti;->a:Lg/ti;

    iget-object v10, v10, Lg/ti;->v:Lg/czz;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/util/Pair;

    aput-object v1, v9, v2

    aput-object v8, v9, v14

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdrx;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zzb:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfeg;->a:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-static {}, Lg/eno;->zzd()Lg/eno;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzs(Lg/eno;)Lcom/google/android/gms/internal/ads/zzffm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzffm;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzffm;->zzJ()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfkk;->zzf(Lcom/google/android/gms/internal/ads/zzffo;)I

    move-result v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lg/aeh;

    invoke-static {v7, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzfjz;->zzb(Landroid/content/Context;IILg/aeh;)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v12

    new-instance v13, Lg/fuc;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Lg/fuc;->a:Lcom/google/android/gms/internal/ads/zzffo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcl;

    invoke-direct {v0, v13, v6}, Lcom/google/android/gms/internal/ads/zzfcl;-><init>(Lcom/google/android/gms/internal/ads/zzfci;Lcom/google/android/gms/internal/ads/zzbvx;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfea;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfea;-><init>(Lcom/google/android/gms/internal/ads/zzfeg;)V

    invoke-interface {v5, v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzfck;->zzc(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->f:Lg/dcy;

    new-instance v8, Lg/no;

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v8 .. v13}, Lg/no;-><init>(Lcom/google/android/gms/internal/ads/zzfeg;Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;Lg/fuc;)V

    invoke-static {v0, v8, v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return v14
.end method

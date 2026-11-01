.class public abstract Lcom/google/android/gms/internal/ads/zzchk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclo;


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzchk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcio;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzchk;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzchk;->a:Lcom/google/android/gms/internal/ads/zzchk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v3, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbef;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbbx;->zzd(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfgk;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfgk;

    move-result-object v5

    const v6, 0xe8813d8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p2}, Lcom/google/android/gms/internal/ads/zzfgk;->zzc(IZI)Lg/akx;

    move-result-object p2

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzfgk;->zzf(Lcom/google/android/gms/internal/ads/zzbpg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjj;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzchl;->zzf(Lg/akx;)Lcom/google/android/gms/internal/ads/zzchl;

    invoke-virtual {v5, p0}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzchl;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(J)Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzchn;

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzchn;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzcjj;->zzb(Lcom/google/android/gms/internal/ads/zzchn;)Lcom/google/android/gms/internal/ads/zzcjj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcke;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzcke;-><init>(Lcom/google/android/gms/internal/ads/zzcio;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzcjj;->zzc(Lcom/google/android/gms/internal/ads/zzcke;)Lcom/google/android/gms/internal/ads/zzcjj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjj;->zza()Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    iget-object v0, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzu(Landroid/content/Context;Lg/akx;)V

    iget-object v0, v2, Lg/ti;->t:Lcom/google/android/gms/internal/ads/zzbat;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbat;->zzi(Landroid/content/Context;)V

    iget-object v0, v2, Lg/ti;->z:Lg/esy;

    invoke-virtual {v0, p0}, Lg/esy;->ar(Landroid/content/Context;)V

    iget-object v0, v2, Lg/ti;->z:Lg/esy;

    invoke-virtual {v0, p0}, Lg/esy;->as(Landroid/content/Context;)V

    invoke-static {p0}, Lg/ffb;->bi(Landroid/content/Context;)V

    iget-object v0, v2, Lg/ti;->p:Lcom/google/android/gms/internal/ads/zzazg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzazg;->zzd(Landroid/content/Context;)V

    iget-object v0, v2, Lg/ti;->b:Lg/aga;

    invoke-virtual {v0, p0}, Lg/aga;->f(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zza()Lg/fli;

    move-result-object v0

    invoke-virtual {v0}, Lg/fli;->d()V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbyw;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyw;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaF:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Lcom/google/android/gms/internal/ads/zzbbr;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzech;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzecd;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/ads/zzecd;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzB()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzech;-><init>(Lcom/google/android/gms/internal/ads/zzecd;Lcom/google/android/gms/internal/ads/zzges;)V

    invoke-direct {v0, p0, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzedc;-><init>(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzech;)V

    iget-object p0, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object p0

    check-cast p0, Lg/cmo;

    invoke-virtual {p0}, Lg/cmo;->ax()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzedc;->zzb(Z)V

    :cond_2
    sput-object p1, Lcom/google/android/gms/internal/ads/zzchk;->a:Lcom/google/android/gms/internal/ads/zzchk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract b(Lcom/google/android/gms/internal/ads/zzeyv;)Lg/blr;
.end method

.method public abstract zzA()Lcom/google/android/gms/internal/ads/zzfma;
.end method

.method public abstract zzB()Lcom/google/android/gms/internal/ads/zzges;
.end method

.method public abstract zzC()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzD()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzE()Lcom/google/android/gms/internal/ads/zzbzo;
.end method

.method public final zzF()Lcom/google/android/gms/internal/ads/zzbzo;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzE()Lcom/google/android/gms/internal/ads/zzbzo;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza()Lg/fli;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/ads/zzckp;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/ads/zzcoq;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/ads/zzcqg;
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/ads/zzcze;
.end method

.method public abstract zzg()Lcom/google/android/gms/internal/ads/zzdgm;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/ads/zzdhi;
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/ads/zzdov;
.end method

.method public abstract zzj()Lcom/google/android/gms/internal/ads/zzdsm;
.end method

.method public abstract zzk()Lcom/google/android/gms/internal/ads/zzdtv;
.end method

.method public abstract zzl()Lcom/google/android/gms/internal/ads/zzdvk;
.end method

.method public abstract zzm()Lcom/google/android/gms/internal/ads/zzdwh;
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/ads/zzeea;
.end method

.method public abstract zzo()Lg/bgq;
.end method

.method public abstract zzp()Lg/my;
.end method

.method public abstract zzq()Lg/der;
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzbvx;I)Lcom/google/android/gms/internal/ads/zzexc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeyv;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzchk;->b(Lcom/google/android/gms/internal/ads/zzeyv;)Lg/blr;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzt()Lcom/google/android/gms/internal/ads/zzezt;
.end method

.method public abstract zzu()Lcom/google/android/gms/internal/ads/zzfbh;
.end method

.method public abstract zzv()Lcom/google/android/gms/internal/ads/zzfcy;
.end method

.method public abstract zzw()Lcom/google/android/gms/internal/ads/zzfem;
.end method

.method public abstract zzx()Lcom/google/android/gms/internal/ads/zzfgd;
.end method

.method public abstract zzy()Lcom/google/android/gms/internal/ads/zzfgn;
.end method

.method public abstract zzz()Lcom/google/android/gms/internal/ads/zzfko;
.end method

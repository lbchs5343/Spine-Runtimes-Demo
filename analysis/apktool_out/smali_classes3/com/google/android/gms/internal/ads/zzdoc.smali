.class public final Lcom/google/android/gms/internal/ads/zzdoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbkh;

.field public final b:Lcom/google/android/gms/internal/ads/zzeea;

.field public final c:Lcom/google/android/gms/internal/ads/zzdsm;

.field public final d:Lcom/google/android/gms/internal/ads/zzffs;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzdnp;

.field public final g:Lcom/google/android/gms/internal/ads/zzavc;

.field public h:Lg/dcy;

.field public final i:Lcom/google/android/gms/internal/ads/zzedp;

.field public final j:Lg/gfo;

.field public final k:Lcom/google/android/gms/internal/ads/zzflr;

.field public final l:Landroid/content/Context;

.field public final m:Lg/akx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->l:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->c:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->e:Lcom/google/android/gms/internal/ads/zzavc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->g:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->j:Lg/akx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->m:Lg/akx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->d:Lg/gfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->j:Lg/gfo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdnp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->f:Lcom/google/android/gms/internal/ads/zzdnp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbkh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->a:Lcom/google/android/gms/internal/ads/zzbkh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->b:Lcom/google/android/gms/internal/ads/zzedp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->i:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->a:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->k:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->i:Lcom/google/android/gms/internal/ads/zzdsm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->c:Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnz;->f:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->b:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnz;->h:Lcom/google/android/gms/internal/ads/zzffs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->d:Lcom/google/android/gms/internal/ads/zzffs;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzg(Ljava/lang/String;Lorg/json/JSONObject;)Lg/dcy;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnq;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzcnb;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lg/duw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x9

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lg/duw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lg/bli;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lg/bli;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzj(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lg/emr;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p2}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzk()V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdoc;->g:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdoc;->m:Lg/akx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdoc;->j:Lg/gfo;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdoc;->b:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdoc;->d:Lcom/google/android/gms/internal/ads/zzffs;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcfv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Lg/akx;Lg/gfo;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzk(Lcom/google/android/gms/internal/ads/zzgdo;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcam;->zza(Lg/dcy;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lg/fdy;

    const/16 v2, 0x1b

    invoke-direct {v1, p1, v2, p2}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzm(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 1

    new-instance v0, Lg/ebg;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/ebg;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final declared-synchronized zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->h:Lg/dcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lg/clx;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

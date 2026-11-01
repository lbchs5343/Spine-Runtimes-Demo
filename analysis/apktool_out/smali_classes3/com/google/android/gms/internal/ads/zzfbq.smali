.class public final Lcom/google/android/gms/internal/ads/zzfbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfck;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/internal/ads/zzcvt;

.field public final c:Lcom/google/android/gms/internal/ads/zzfck;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lcom/google/android/gms/internal/ads/zzfck;

.field public final f:Lcom/google/android/gms/internal/ads/zzfhy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfck;Lcom/google/android/gms/internal/ads/zzfck;Lcom/google/android/gms/internal/ads/zzfhy;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbq;->c:Lcom/google/android/gms/internal/ads/zzfck;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbq;->e:Lcom/google/android/gms/internal/ads/zzfck;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbq;->f:Lcom/google/android/gms/internal/ads/zzfhy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbq;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbq;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzfhl;Lcom/google/android/gms/internal/ads/zzfcl;)Lg/dcy;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zzc:Lcom/google/android/gms/internal/ads/zzcrq;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzf()Lcom/google/android/gms/internal/ads/zzfch;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zzc:Lcom/google/android/gms/internal/ads/zzcrq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcrq;->zzp()Lcom/google/android/gms/internal/ads/zzfch;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzf()Lcom/google/android/gms/internal/ads/zzfch;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfch;->zzl(Lcom/google/android/gms/internal/ads/zzfch;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zzc:Lcom/google/android/gms/internal/ads/zzcrq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzb()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsy;->zzl(Lcom/google/android/gms/internal/ads/zzfff;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbq;->c:Lcom/google/android/gms/internal/ads/zzfck;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfca;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfca;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzcvt;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Ljava/lang/Object;)Lg/dcy;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfbq;->zzf(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfbq;->zza()Lcom/google/android/gms/internal/ads/zzcvt;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zzb:Lcom/google/android/gms/internal/ads/zzfci;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfcj;->zza(Lcom/google/android/gms/internal/ads/zzfci;)Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbq;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzfbr;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzcvs;->zza(Lcom/google/android/gms/internal/ads/zzfbr;)Lcom/google/android/gms/internal/ads/zzcvs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvs;->zzh()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v5, v4, Lg/aeh;->zzs:Lg/acl;

    if-nez v5, :cond_0

    iget-object v4, v4, Lg/aeh;->zzx:Ljava/lang/String;

    if-eqz v4, :cond_1

    :cond_0
    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfbq;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lg/vv;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lg/vv;-><init>(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcl;Lg/aeh;Ljava/lang/String;Ljava/util/concurrent/Executor;Lg/gby;Lcom/google/android/gms/internal/ads/zzfhm;)V

    move-object v4, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbq;->e:Lcom/google/android/gms/internal/ads/zzfck;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-virtual {v5, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfbw;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v6

    move-object v5, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbn;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfbn;-><init>(Lcom/google/android/gms/internal/ads/zzfbq;Lcom/google/android/gms/internal/ads/zzfcl;Lg/vv;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbq;->d:Ljava/util/concurrent/Executor;

    invoke-static {v6, v0, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_1
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbq;->c:Lcom/google/android/gms/internal/ads/zzfck;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfca;

    invoke-virtual {v0, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzfca;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

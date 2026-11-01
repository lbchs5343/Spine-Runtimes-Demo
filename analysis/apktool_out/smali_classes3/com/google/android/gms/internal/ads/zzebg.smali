.class public final Lcom/google/android/gms/internal/ads/zzebg;
.super Lcom/google/android/gms/internal/ads/zzbve;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbwf;

.field public final b:Lcom/google/android/gms/internal/ads/zzeby;

.field public final c:Lcom/google/android/gms/internal/ads/zzclo;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzges;

.field public final g:Lcom/google/android/gms/internal/ads/zzfko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/zzeby;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzebv;Lcom/google/android/gms/internal/ads/zzfko;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbve;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebg;->f:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebg;->a:Lcom/google/android/gms/internal/ads/zzbwf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzebg;->b:Lcom/google/android/gms/internal/ads/zzeby;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebg;->c:Lcom/google/android/gms/internal/ads/zzclo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzebg;->d:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzebg;->g:Lcom/google/android/gms/internal/ads/zzfko;

    return-void
.end method

.method public static h(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzexc;)Lcom/google/android/gms/internal/ads/zzfix;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzear;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzear;-><init>(Lcom/google/android/gms/internal/ads/zzexc;Lcom/google/android/gms/internal/ads/zzbvx;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeas;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzeas;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfjl;->zze:Lcom/google/android/gms/internal/ads/zzfjl;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfix;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeax;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>()V

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzboi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object p2

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfkk;->zzd(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfka;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfjl;->zzg:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfkk;->zzc(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebd;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzebd;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzebd;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbvx;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeay;-><init>(Lcom/google/android/gms/internal/ads/zzebg;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    new-instance v0, Lg/ffr;

    const/16 v1, 0x13

    invoke-direct {v0, p3, v1, p2}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzi:Lcom/google/android/gms/internal/ads/zzfhj;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfhj;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfhj;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-static {}, Lg/akx;->forPackage()Lg/akx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebg;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebg;->g:Lcom/google/android/gms/internal/ads/zzfko;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbnz;->zzb(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebg;->c:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzclo;->zzr(Lcom/google/android/gms/internal/ads/zzbvx;I)Lcom/google/android/gms/internal/ads/zzexc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzexc;->zzc()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzebg;->h(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzexc;)Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzexc;->zzd()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object p2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v8

    invoke-static {v6, v1, v0, p2, v8}, Lcom/google/android/gms/internal/ads/zzebg;->i(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfjl;->zzz:Lcom/google/android/gms/internal/ads/zzfjl;

    const/4 v0, 0x2

    new-array v0, v0, [Lg/dcy;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Ljava/lang/Object;[Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeav;

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeav;-><init>(Lcom/google/android/gms/internal/ads/zzebg;Lg/dcy;Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-static {}, Lg/akx;->forPackage()Lg/akx;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzebg;->g:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzebg;->e:Landroid/content/Context;

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzbnz;->zzb(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzebg;->c:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzclo;->zzr(Lcom/google/android/gms/internal/ads/zzbvx;I)Lcom/google/android/gms/internal/ads/zzexc;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzbob;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbof;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    const-string v8, "google.afma.response.normalize"

    invoke-virtual {v3, v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzboi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbeu;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zzj:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Request contained a PoolKey but split request is disabled."

    invoke-static {v7}, Lg/agd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzebg;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebd;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v7, "Request contained a PoolKey but no matching parameters were found."

    invoke-static {v7}, Lg/agd;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    const/16 v7, 0x9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzebd;->zzd:Lcom/google/android/gms/internal/ads/zzfka;

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzexc;->zzd()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const-string v11, "ad_types"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzfkl;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfkl;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzebx;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zzg:Ljava/lang/String;

    invoke-direct {v10, v11, v9, v7}, Lcom/google/android/gms/internal/ads/zzebx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzbvx;->zzb:Lg/akx;

    iget-object v11, v11, Lg/akx;->afmaVersion:Ljava/lang/String;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzebu;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzebg;->a:Lcom/google/android/gms/internal/ads/zzbwf;

    invoke-direct {v12, v6, v11, v13, v2}, Lcom/google/android/gms/internal/ads/zzebu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwf;I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzexc;->zzc()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v2

    const/16 v11, 0xb

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 p2, 0x1

    const/16 v13, 0xa

    if-nez v8, :cond_3

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzebg;->h(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzexc;)Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v4

    invoke-static {v4, v2, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzebg;->i(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v3

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfjl;->zzi:Lcom/google/android/gms/internal/ads/zzfjl;

    new-array v8, v15, [Lg/dcy;

    aput-object v3, v8, v14

    aput-object v4, v8, p2

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Ljava/lang/Object;[Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeat;

    invoke-direct {v8, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzeat;-><init>(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvx;Lg/dcy;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/zzfkg;-><init>(Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v7

    invoke-static {v7, v9, v6}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/ads/zzfkk;->zzd(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfka;)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfjl;->zzk:Lcom/google/android/gms/internal/ads/zzfjl;

    const/4 v8, 0x3

    new-array v8, v8, [Lg/dcy;

    aput-object v4, v8, v14

    aput-object v3, v8, p2

    aput-object v7, v8, v15

    invoke-virtual {v2, v6, v8}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Ljava/lang/Object;[Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeau;

    invoke-direct {v6, v1, v7, v4, v3}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;Lg/dcy;Lg/dcy;Lg/dcy;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebw;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzebd;->zzb:Lorg/json/JSONObject;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzebd;->zza:Lcom/google/android/gms/internal/ads/zzbvz;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzebw;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvz;)V

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfjl;->zzi:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzfkg;-><init>(Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v1

    invoke-static {v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v3

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzfkk;->zzd(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfka;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfjl;->zzk:Lcom/google/android/gms/internal/ads/zzfjl;

    new-array v6, v15, [Lg/dcy;

    aput-object v1, v6, v14

    aput-object v3, v6, p2

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Ljava/lang/Object;[Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeaq;

    invoke-direct {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzeaq;-><init>(Lg/dcy;Lg/dcy;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v1

    :goto_2
    invoke-static {v1, v9, v11}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;
    .locals 6

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-static {}, Lg/akx;->forPackage()Lg/akx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebg;->g:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebg;->e:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbnz;->zzb(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbez;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebg;->c:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzclo;->zzr(Lcom/google/android/gms/internal/ads/zzbvx;I)Lcom/google/android/gms/internal/ads/zzexc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzexc;->zza()Lcom/google/android/gms/internal/ads/zzewc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbof;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzboi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    const/16 v2, 0x16

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzexc;->zzc()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfjl;->zzl:Lcom/google/android/gms/internal/ads/zzfjl;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkg;-><init>(Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeaz;

    invoke-direct {v4, v1, p1}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>(Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/android/gms/internal/ads/zzbvx;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfjl;->zzm:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfjh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzexc;->zzd()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const-string v3, "ad_types"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-static {v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzben;->zzg:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->b:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeaw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Lcom/google/android/gms/internal/ads/zzeby;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->f:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v0, p2, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzbvp;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebg;->zzb(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzebg;->m(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbvx;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzbvp;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrv;->zze:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-static {v2, v0, v1}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebg;->zzd(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzebg;->m(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbvx;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzbvp;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrv;->zze:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-static {v2, v0, v1}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebg;->zzc(Lcom/google/android/gms/internal/ads/zzbvx;I)Lg/dcy;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzebg;->m(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbvx;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzben;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->b:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeaw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Lcom/google/android/gms/internal/ads/zzeby;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->f:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v0, p2, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzebg;->zzj(Ljava/lang/String;)Lg/dcy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzebg;->m(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbvx;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbuz;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfb;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbvq;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebg;->c:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzclo;->zzF()Lcom/google/android/gms/internal/ads/zzbzo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuz;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    new-instance v1, Lg/fdy;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p1, v3}, Lg/fdy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;)Lg/dcy;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lg/cqq;

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzebg;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebd;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

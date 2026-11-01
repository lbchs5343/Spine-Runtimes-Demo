.class public final Lcom/google/android/gms/internal/ads/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfhc;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public final b:Lcom/google/android/gms/internal/ads/zzfhj;

.field public final c:Lg/bdk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfhj;->zzd:I

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    new-instance p1, Lg/bdk;

    invoke-direct {p1}, Lg/bdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhj;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgi:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zzb:Lcom/google/android/gms/internal/ads/zzfhg;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " PoolCollection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n\tPool does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v4, v3, Lg/bdk;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tNew pools created: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lg/bdk;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tPools removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lg/bdk;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tEntries added: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lg/bdk;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tNo entries retrieved: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lg/bdk;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfhm;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/bvs;

    invoke-virtual {v8}, Lg/bvs;->e()V

    iget-object v8, v8, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    const-string v8, "[O]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bvs;

    invoke-virtual {v7}, Lg/bvs;->e()V

    iget-object v7, v7, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    :goto_2
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zzd:I

    if-ge v7, v8, :cond_1

    const-string v8, "[ ]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bvs;

    iget-object v6, v6, Lg/bvs;->a:Lg/pa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Created: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v6, Lg/pa;->c:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " Last accessed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v6, Lg/pa;->f:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " Accesses: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lg/pa;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nEntries retrieved: Valid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lg/pa;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Stale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lg/pa;->d:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    :goto_3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zzc:I

    if-ge v5, v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfhj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    return-object v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfhm;)Lcom/google/android/gms/internal/ads/zzfhl;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bvs;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p1, Lg/bvs;->a:Lg/pa;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lg/pa;->f:J

    iget v3, v2, Lg/pa;->a:I

    add-int/2addr v3, v1

    iput v3, v2, Lg/pa;->a:I

    invoke-virtual {p1}, Lg/bvs;->e()V

    iget-object v3, p1, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    if-eqz v0, :cond_1

    iget v3, v2, Lg/pa;->b:I

    add-int/2addr v3, v1

    iput v3, v2, Lg/pa;->b:I

    iget-object v2, v2, Lg/pa;->e:Lcom/google/android/gms/internal/ads/zzfhz;

    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzfhz;->zza:Z

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v3, v2, Lg/bdk;->b:I

    add-int/2addr v3, v1

    iput v3, v2, Lg/bdk;->b:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, p1, Lg/bvs;->a:Lg/pa;

    iget-object p1, p1, Lg/pa;->e:Lcom/google/android/gms/internal/ads/zzfhz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhz;->zza()Lcom/google/android/gms/internal/ads/zzfhz;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzfhz;->zza:Z

    iput v2, p1, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb;->zzd()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza;->zza()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze;->zzb()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;

    move-result-object v3

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfhz;->zza:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;->zze(I)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbs$zzb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcvt;->zzb()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcsy;->zzc()Lcom/google/android/gms/internal/ads/zzdbt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbt;->zzi(Lcom/google/android/gms/internal/ads/zzbbs$zzb;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/af;->d()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v2, p1, Lg/bdk;->a:I

    add-int/2addr v2, v1

    iput v2, p1, Lg/bdk;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/af;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc(Lg/aeh;Ljava/lang/String;Lg/gby;)Lcom/google/android/gms/internal/ads/zzfhm;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zza:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbwa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwa;->zza()Lcom/google/android/gms/internal/ads/zzbwb;

    move-result-object v0

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbwb;->zzj:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfhn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zzf:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfhn;-><init>(Lg/aeh;Ljava/lang/String;ILjava/lang/String;Lg/gby;)V

    return-object v2
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfhm;Lcom/google/android/gms/internal/ads/zzfhl;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bvs;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->v:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzfhl;->zzd:J

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    new-instance v2, Lg/bvs;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfhj;->zzd:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfhj;->zze:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {v2, v3, v0}, Lg/bvs;-><init>(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfhj;->zzc:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfhj;->zzg:I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bvs;

    iget-object v6, v6, Lg/bvs;->a:Lg/pa;

    iget v6, v6, Lg/pa;->a:I

    if-ge v6, v3, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bvs;

    iget-object v3, v3, Lg/bvs;->a:Lg/pa;

    iget v3, v3, Lg/pa;->a:I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfhm;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bvs;

    iget-object v7, v7, Lg/bvs;->a:Lg/pa;

    iget-wide v7, v7, Lg/pa;->f:J

    cmp-long v9, v7, v5

    if-gez v9, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bvs;

    iget-object v4, v4, Lg/bvs;->a:Lg/pa;

    iget-wide v4, v4, Lg/pa;->f:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfhm;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bvs;

    iget-object v7, v7, Lg/bvs;->a:Lg/pa;

    iget-wide v7, v7, Lg/pa;->c:J

    cmp-long v9, v7, v5

    if-gez v9, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bvs;

    iget-object v4, v4, Lg/bvs;->a:Lg/pa;

    iget-wide v4, v4, Lg/pa;->c:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfhm;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v3, v0, Lg/bdk;->f:I

    add-int/2addr v3, v1

    iput v3, v0, Lg/bdk;->f:I

    iget-object v0, v0, Lg/bdk;->c:Lcom/google/android/gms/internal/ads/zzfhe;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfhe;->zzb:Z

    goto :goto_4

    :cond_a
    throw v4

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v0, p1, Lg/bdk;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Lg/bdk;->e:I

    iget-object p1, p1, Lg/bdk;->c:Lcom/google/android/gms/internal/ads/zzfhe;

    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzfhe;->zza:Z

    move-object v0, v2

    :cond_c
    iget-object p1, v0, Lg/bvs;->a:Lg/pa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lg/pa;->f:J

    iget v2, p1, Lg/pa;->a:I

    add-int/2addr v2, v1

    iput v2, p1, Lg/pa;->a:I

    invoke-virtual {v0}, Lg/bvs;->e()V

    iget-object p1, v0, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, v0, Lg/bvs;->c:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_d

    const/4 p1, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/af;->c:Lg/bdk;

    iget v3, v2, Lg/bdk;->d:I

    add-int/2addr v3, v1

    iput v3, v2, Lg/bdk;->d:I

    iget-object v1, v2, Lg/bdk;->c:Lcom/google/android/gms/internal/ads/zzfhe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfhe;->zza()Lcom/google/android/gms/internal/ads/zzfhe;

    move-result-object v2

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfhe;->zza:Z

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfhe;->zzb:Z

    iget-object v0, v0, Lg/bvs;->a:Lg/pa;

    iget-object v0, v0, Lg/pa;->e:Lcom/google/android/gms/internal/ads/zzfhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhz;->zza()Lcom/google/android/gms/internal/ads/zzfhz;

    move-result-object v1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzfhz;->zza:Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb;->zzd()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza;->zza()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg;->zzb()Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzfhe;->zza:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;->zze(Z)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfhe;->zzb:Z

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;->zzf(Z)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;->zzi(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzg$zza;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbbs$zzb$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbs$zzb;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfhl;->zza:Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcvt;->zzb()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcsy;->zzc()Lcom/google/android/gms/internal/ads/zzdbt;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzj(Lcom/google/android/gms/internal/ads/zzbbs$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/af;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzfhm;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bvs;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-virtual {p1}, Lg/bvs;->e()V

    iget-object p1, p1, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfhj;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

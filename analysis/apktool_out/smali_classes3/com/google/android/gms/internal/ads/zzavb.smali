.class public final Lcom/google/android/gms/internal/ads/zzavb;
.super Lcom/google/android/gms/internal/ads/zzava;
.source "SourceFile"


# direct methods
.method public static zzu(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauz;)Lcom/google/android/gms/internal/ads/zzavb;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzava;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzava;->ah:Z

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzava;->aj:J

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzauz;->a:Z

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzava;->an(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzawf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzauy;->a:Lcom/google/android/gms/internal/ads/zzawf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdv:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzavi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzava;->ai:Lcom/google/android/gms/internal/ads/zzavi;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzauy;->a:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawf;->zzk()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzdw:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzava;->ae:Lcom/google/android/gms/internal/ads/zzawo;

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzcL:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzava;->ad:Lcom/google/android/gms/internal/ads/zzawg;

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzcQ:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzavf;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzavf;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzava;->af:Lcom/google/android/gms/internal/ads/zzavf;

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzcM:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzauz;->c:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasb;->zzg()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzauz;->c:Lcom/google/android/gms/internal/ads/zzasb;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzatx;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzava;->af:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzatx;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzasb;Lcom/google/android/gms/internal/ads/zzavf;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzava;->ag:Lcom/google/android/gms/internal/ads/zzatx;

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzava;->ah:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzava;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauz;)V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ar(Lcom/google/android/gms/internal/ads/zzawf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasf;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawf;->zzk()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzava;->ak:Lcom/google/android/gms/internal/ads/zzauz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauz;->a:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p1

    move-object v5, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawf;->zza()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzava;->ar(Lcom/google/android/gms/internal/ads/zzawf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasf;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawx;

    const/16 v7, 0x18

    const-string v3, "I548ixRBwSg+qVTan0l7SrCz1ZaKKX3ZWtyXgu8y1OX29GkbAkB2rT1/ilUIPvFa"

    const-string v4, "lJ7kzsnnwzWch0Zt9duIk9QjvlIbpzkFDyarwE3sjFc="

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzawx;-><init>(Lcom/google/android/gms/internal/ads/zzawf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasf;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :goto_0
    invoke-super {p0, v2, p2, v5}, Lcom/google/android/gms/internal/ads/zzava;->ar(Lcom/google/android/gms/internal/ads/zzawf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasf;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

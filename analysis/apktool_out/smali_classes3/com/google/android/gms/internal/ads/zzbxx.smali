.class public final synthetic Lcom/google/android/gms/internal/ads/zzbxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbyc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbyc;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "matches"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbyc;->b:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbyc;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbyc;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzheh;

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v8, :cond_2

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find the corresponding resource object for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbyg;->zza(Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "threat_type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzheh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzheh;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->g:Z

    if-lez v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    or-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->g:Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :goto_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catch_0
    nop

    goto/16 :goto_8

    :cond_5
    :goto_3
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->g:Z

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhct;->zzn(I)Lcom/google/android/gms/internal/ads/zzhct;

    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_6
    :goto_4
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->g:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->l:Lcom/google/android/gms/internal/ads/zzbye;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbye;->zzg:Z

    if-nez v3, :cond_9

    :cond_7
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->c:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->l:Lcom/google/android/gms/internal/ads/zzbye;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbye;->zzf:Z

    if-nez v3, :cond_9

    :cond_8
    if-nez p1, :cond_e

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->l:Lcom/google/android/gms/internal/ads/zzbye;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbye;->zzd:Z

    if-eqz p1, :cond_e

    :cond_9
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzheh;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhei;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzhct;->zzc(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzhct;

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :cond_a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhct;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhct;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhct;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhct;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyg;->zzb()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhct;->zzl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhct;->zzk()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending SB report\n  url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  clickUrl: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  resources: \n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhct;->zzm()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhei;

    const-string v6, "    ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhei;->zzc()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhei;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbyg;->zza(Ljava/lang/String;)V

    :cond_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhes;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwy;->zzaV()[B

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbyc;->l:Lcom/google/android/gms/internal/ads/zzbye;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbye;->zzb:Ljava/lang/String;

    new-instance v5, Lg/bvv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbyc;->e:Landroid/content/Context;

    invoke-direct {v5, v0}, Lg/bvv;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4, v2, v3}, Lg/bvv;->c(ILjava/lang/String;Ljava/util/HashMap;[B)Lg/dlc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyg;->zzb()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbxz;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v0, v1, v2}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbya;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbya;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :goto_7
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    :cond_e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    return-object p1

    :goto_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbev;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_f
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzdum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/cbu;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/cbu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdum;->zza:Lg/cbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdum;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzdum;->zza:Lg/cbu;

    iget-object v3, v0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzdum;->zzb:Ljava/lang/String;

    const-string v10, "data"

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzdup;->i:Landroid/content/Context;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzdup;->l:Ljava/util/concurrent/Executor;

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    const/4 v15, 0x5

    invoke-static {v11, v15}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "initializer_settings"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "config"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v11, v15}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzfka;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v8, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zzbU:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v15, Lg/edt;->a:Lg/edt;

    iget-object v15, v15, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9

    move-object v15, v2

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v17, v4

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzdup;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v5, v1, v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object v1

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzdsw;->zzc(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzddk;->zzc(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v4, v2

    :try_start_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdug;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v18, v15

    move-object v15, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v11

    move-object v11, v6

    move-object v6, v0

    :try_start_5
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzdug;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcao;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfka;)V

    invoke-interface {v1, v2, v12}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/ha;

    invoke-direct/range {v2 .. v9}, Lg/ha;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcao;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "format"

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v20, v2

    :try_start_7
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    goto :goto_2

    :cond_0
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblz;

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzblz;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    goto :goto_1

    :catch_0
    :cond_1
    move-object/from16 v20, v2

    :catch_1
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v3, v6, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzdup;->a:Lcom/google/android/gms/internal/ads/zzdqd;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/internal/ads/zzdqd;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfgm;

    move-result-object v0

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzdup;->n:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzduk;
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v4, v6

    move-object/from16 v5, v20

    move-object v6, v0

    :try_start_a
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblt;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/util/List;)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    move-object v0, v2

    move-object v2, v5

    :try_start_b
    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzffv; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    :goto_3
    move-object/from16 v1, p0

    move-object v6, v11

    move-object v5, v15

    move-object/from16 v11, v17

    move-object/from16 v2, v18

    const/4 v4, 0x0

    const/4 v15, 0x5

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v15, v18

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v2, v20

    :goto_5
    :try_start_c
    const-string v4, "Failed to create Adapter."

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzmG:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :cond_2
    :goto_6
    invoke-virtual {v2, v4}, Lg/ha;->zze(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    :goto_7
    :try_start_d
    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_4

    :catch_9
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_4

    :cond_3
    move-object/from16 v18, v2

    move-object v15, v5

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzgei;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgeg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduh;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    move-object/from16 v15, v18

    :try_start_e
    invoke-direct {v1, v3, v15}, Lcom/google/android/gms/internal/ads/zzduh;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Lcom/google/android/gms/internal/ads/zzfka;)V

    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzgeg;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v15, v2

    :goto_8
    invoke-static {}, Lg/agd;->h()Z

    const-string v1, "MalformedJson"

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzddk;->zza(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v2, "AdapterInitializer.updateAdapterStatus"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzdup;->j:Lcom/google/android/gms/internal/ads/zzfko;

    invoke-interface {v15, v0}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :goto_9
    return-void
.end method

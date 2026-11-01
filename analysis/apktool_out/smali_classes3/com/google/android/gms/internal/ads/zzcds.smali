.class public final Lcom/google/android/gms/internal/ads/zzcds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;
    .locals 3

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Precache invalid numeric parameter \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzccf;

    const/4 v2, 0x3

    invoke-static {v2}, Lg/agd;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "google.afma.Notify_dt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precache GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->c(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->x:Lcom/google/android/gms/internal/ads/zzcdk;

    const-string v3, "abort"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdk;->zzd(Lcom/google/android/gms/internal/ads/zzccf;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Precache abort but no precache task running."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "src"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "periodicReportIntervalMs"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exoPlayerRenderingIntervalMs"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exoPlayerIdleIntervalMs"

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcce;

    const-string v8, "flags"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzcce;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzcce;->zzk:Z

    if-eqz v3, :cond_13

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const-string v13, "demuxed"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v15, v9, :cond_2

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object v11, v14

    goto :goto_1

    :catch_0
    const-string v9, "Malformed demuxed URL list for precache: "

    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lg/agd;->b(Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_3
    :goto_1
    if-nez v11, :cond_4

    new-array v11, v10, [Ljava/lang/String;

    aput-object v3, v11, v12

    :cond_4
    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdk;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcdj;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzccf;

    if-ne v9, v1, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcdj;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_2
    move-object v9, v8

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdk;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcdj;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzccf;

    if-ne v9, v1, :cond_8

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_9

    const-string v0, "Precache task is already running."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzccf;->zzj()Lg/gfo;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v0, "Precache requires a dependency provider."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v2, "player"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzccf;->zzA(I)V

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzccf;->zzy(I)V

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzccf;->zzx(I)V

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzccf;->zzj()Lg/gfo;

    move-result-object v4

    iget-object v4, v4, Lg/gfo;->b:Lcom/google/android/gms/internal/ads/zzcdc;

    if-lez v2, :cond_12

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzcce;->zzg:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbw;->zzu()I

    move-result v4

    if-ge v4, v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcea;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzcea;-><init>(Lcom/google/android/gms/internal/ads/zzccf;Lcom/google/android/gms/internal/ads/zzcce;)V

    goto :goto_4

    :cond_f
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzn:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdx;->zzi()I

    move-result v4

    :cond_10
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzcce;->zzb:I

    if-ge v4, v2, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(Lcom/google/android/gms/internal/ads/zzccf;Lcom/google/android/gms/internal/ads/zzcce;)V

    goto :goto_4

    :cond_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdv;-><init>(Lcom/google/android/gms/internal/ads/zzccf;)V

    goto :goto_4

    :cond_12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdu;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdu;-><init>(Lcom/google/android/gms/internal/ads/zzccf;)V

    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {v4, v1, v2, v3, v11}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzccf;Lcom/google/android/gms/internal/ads/zzcdr;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcdj;->zzb()Lg/dcy;

    goto :goto_6

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdk;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcdj;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzccf;

    if-ne v4, v1, :cond_14

    move-object v9, v3

    goto :goto_5

    :cond_15
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_1a

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzcdj;->b:Lcom/google/android/gms/internal/ads/zzcdr;

    :goto_6
    const-string v1, "minBufferMs"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdr;->zzs(I)V

    :cond_16
    const-string v1, "maxBufferMs"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdr;->zzr(I)V

    :cond_17
    const-string v1, "bufferForPlaybackMs"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdr;->zzp(I)V

    :cond_18
    const-string v1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcds;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzq(I)V

    :cond_19
    return-void

    :cond_1a
    const-string v0, "Precache must specify a source."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

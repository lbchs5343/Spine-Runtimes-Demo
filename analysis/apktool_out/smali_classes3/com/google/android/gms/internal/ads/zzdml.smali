.class public final Lcom/google/android/gms/internal/ads/zzdml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/google/android/gms/internal/ads/zzdmg;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdml;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdml;->b:Lcom/google/android/gms/internal/ads/zzdmg;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;
    .locals 8

    const-string p2, "custom_assets"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdml;->a:Ljava/util/concurrent/Executor;

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmk;

    const-string v4, "string_value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdmk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdml;->b:Lcom/google/android/gms/internal/ads/zzdmg;

    const-string v6, "image_value"

    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzdmg;->zze(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdmi;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzd(Ljava/lang/Iterable;)Lg/dcy;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdmj;-><init>()V

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

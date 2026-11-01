.class public final synthetic Lcom/google/android/gms/internal/ads/zzeht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzehv;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehv;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeht;->zza:Lcom/google/android/gms/internal/ads/zzehv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzc:Lcom/google/android/gms/internal/ads/zzfet;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeht;->zza:Lcom/google/android/gms/internal/ads/zzehv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzc:Lcom/google/android/gms/internal/ads/zzfet;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzffc;->zza:Lcom/google/android/gms/internal/ads/zzffo;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzcl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehv;->d:Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nsl"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsh;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehv;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzffc;->zza:Lcom/google/android/gms/internal/ads/zzffo;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(I)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzffc;->zza:Lcom/google/android/gms/internal/ads/zzffo;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzffc;->zza:Lcom/google/android/gms/internal/ads/zzffo;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    if-ge v5, v7, :cond_3

    if-ge v5, v3, :cond_2

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzehv;->g(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lorg/json/JSONObject;)Lg/dcy;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(I)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzehv;->g(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lorg/json/JSONObject;)Lg/dcy;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzehu;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehv;->e:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

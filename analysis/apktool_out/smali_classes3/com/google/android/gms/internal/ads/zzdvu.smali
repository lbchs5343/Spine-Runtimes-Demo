.class public final synthetic Lcom/google/android/gms/internal/ads/zzdvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdvv;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdvv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvu;->zza:Lcom/google/android/gms/internal/ads/zzdvv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvu;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvu;->zza:Lcom/google/android/gms/internal/ads/zzdvv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvu;->zzb:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdvv;->c:Lcom/google/android/gms/internal/ads/zzdvk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdvk;->zze()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "redirectUrl"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdvv;->d:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "window.inspectorInfo"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbmy;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

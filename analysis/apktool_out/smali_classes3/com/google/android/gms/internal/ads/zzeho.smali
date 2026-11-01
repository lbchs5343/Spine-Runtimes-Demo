.class public final Lcom/google/android/gms/internal/ads/zzeho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefd;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdqd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->a:Lcom/google/android/gms/internal/ads/zzdqd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzefe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzffv;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeho;->a:Lcom/google/android/gms/internal/ads/zzdqd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqd;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfgm;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegx;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefe;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzefe;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcxw;Ljava/lang/String;)V

    return-object v1
.end method

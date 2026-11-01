.class public final synthetic Lcom/google/android/gms/internal/ads/zzccr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzccx;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zza:Lcom/google/android/gms/internal/ads/zzccx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccr;->zza:Lcom/google/android/gms/internal/ads/zzccx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzccx;->q:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_0

    const-string v2, "ExoPlayerAdapter exception"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcbk;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

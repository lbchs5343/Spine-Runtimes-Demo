.class public final synthetic Lcom/google/android/gms/internal/ads/zzdul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdul;->zza:Lcom/google/android/gms/internal/ads/zzdup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zza:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zze()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzddk;->zze()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdup;->m:Z

    return-void
.end method

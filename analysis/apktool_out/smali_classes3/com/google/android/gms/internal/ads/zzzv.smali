.class public final synthetic Lcom/google/android/gms/internal/ads/zzzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/aks;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzabi;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzci;


# direct methods
.method public synthetic constructor <init>(Lg/aks;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->zza:Lg/aks;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzb:Lcom/google/android/gms/internal/ads/zzabi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzc:Lcom/google/android/gms/internal/ads/zzci;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzb:Lcom/google/android/gms/internal/ads/zzabi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzv;->zza:Lg/aks;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzc:Lcom/google/android/gms/internal/ads/zzci;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabi;->zzc(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzci;)V

    return-void
.end method

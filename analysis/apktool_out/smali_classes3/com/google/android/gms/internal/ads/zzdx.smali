.class public final synthetic Lcom/google/android/gms/internal/ads/zzdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeb;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzyt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeb;Lcom/google/android/gms/internal/ads/zzyt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zza:Lcom/google/android/gms/internal/ads/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzb:Lcom/google/android/gms/internal/ads/zzyt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zza:Lcom/google/android/gms/internal/ads/zzeb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzb:Lcom/google/android/gms/internal/ads/zzyt;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyt;->zza:Lcom/google/android/gms/internal/ads/zzyv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeb;->zza()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzyv;->zzi(Lcom/google/android/gms/internal/ads/zzyv;I)V

    return-void
.end method

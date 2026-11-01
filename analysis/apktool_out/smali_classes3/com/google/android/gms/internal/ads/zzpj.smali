.class public final synthetic Lcom/google/android/gms/internal/ads/zzpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpm;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpm;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpm;->b:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzn(Z)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsy;Lcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zza:Lcom/google/android/gms/internal/ads/zzcsy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zza:Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzi:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcsy;->a:Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzj;->zza(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzcen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgc;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgc;

.field public final synthetic zzb:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcen;->zza:Lcom/google/android/gms/internal/ads/zzgc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzces;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcen;->zza:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zza()Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzb:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfy;-><init>([B)V

    new-instance v3, Lg/gip;

    array-length v2, v2

    invoke-direct {v3, v1, v2, v0}, Lg/gip;-><init>(Lcom/google/android/gms/internal/ads/zzfy;ILcom/google/android/gms/internal/ads/zzgd;)V

    return-object v3
.end method

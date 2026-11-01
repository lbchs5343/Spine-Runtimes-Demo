.class public final synthetic Lcom/google/android/gms/internal/ads/zzjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/s;

.field public final synthetic zzb:I

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/s;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zza:Lcom/google/android/gms/internal/ads/s;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzc:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjx;->zza:Lcom/google/android/gms/internal/ads/s;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjx;->zzc:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s;->ac:[Lcom/google/android/gms/internal/ads/zzln;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzln;->zzb()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s;->j:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzlw;->zzI(IIZ)V

    return-void
.end method

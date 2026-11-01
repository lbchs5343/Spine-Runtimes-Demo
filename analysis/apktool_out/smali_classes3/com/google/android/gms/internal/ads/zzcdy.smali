.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzccf;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccf;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zza:Lcom/google/android/gms/internal/ads/zzccf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zza:Lcom/google/android/gms/internal/ads/zzccf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzc:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzccf;->zzv(ZJ)V

    return-void
.end method

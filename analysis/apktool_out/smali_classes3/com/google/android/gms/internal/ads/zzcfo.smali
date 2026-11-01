.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfs;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfs;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zza:Lcom/google/android/gms/internal/ads/zzcfs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zza:Lcom/google/android/gms/internal/ads/zzcfs;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzc:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfs;->u:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzccf;->zzv(ZJ)V

    return-void
.end method

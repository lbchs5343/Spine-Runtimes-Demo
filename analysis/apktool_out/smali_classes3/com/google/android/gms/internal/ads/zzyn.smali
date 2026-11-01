.class public final synthetic Lcom/google/android/gms/internal/ads/zzyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/bgs;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lg/bgs;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:Lg/bgs;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:Lg/bgs;

    iget-object v1, v0, Lg/bgs;->b:Lcom/google/android/gms/internal/ads/zzyq;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzyq;->zzY(IJJ)V

    return-void
.end method

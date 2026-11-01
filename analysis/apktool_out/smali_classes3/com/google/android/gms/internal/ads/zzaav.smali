.class public final synthetic Lcom/google/android/gms/internal/ads/zzaav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzabf;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabf;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaav;->zza:Lcom/google/android/gms/internal/ads/zzabf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaav;->zza:Lcom/google/android/gms/internal/ads/zzabf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaav;->zzd:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabf;->b:Lcom/google/android/gms/internal/ads/zzabg;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzabg;->zzp(Ljava/lang/String;JJ)V

    return-void
.end method

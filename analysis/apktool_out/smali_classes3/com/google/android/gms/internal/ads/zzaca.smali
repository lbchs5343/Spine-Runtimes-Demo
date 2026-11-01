.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzaca;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaca;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(IJJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Lcom/google/android/gms/internal/ads/zzaca;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaca;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:J

    return-void
.end method

.method public static zzd(JJ)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaca;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(IJJ)V

    return-object v0
.end method

.method public static zze(J)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaca;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(IJJ)V

    return-object v0
.end method

.method public static zzf(JJ)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaca;

    const/4 v1, -0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(IJJ)V

    return-object v0
.end method

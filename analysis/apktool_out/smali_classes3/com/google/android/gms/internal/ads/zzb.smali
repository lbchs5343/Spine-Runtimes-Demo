.class public final Lcom/google/android/gms/internal/ads/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zza;

.field public static final zza:Lcom/google/android/gms/internal/ads/zzb;


# instance fields
.field public final b:[Lcom/google/android/gms/internal/ads/zza;

.field public final zzb:I

.field public final zzc:J

.field public final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzb;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzb;-><init>([Lcom/google/android/gms/internal/ads/zza;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zza;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zza;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zza;->zzb(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzb;->a:Lcom/google/android/gms/internal/ads/zza;

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/ads/zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzb;->zzc:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzb;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzb;->b:[Lcom/google/android/gms/internal/ads/zza;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzb;->zzd:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/ads/zzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzb;->b:[Lcom/google/android/gms/internal/ads/zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzb;->b:[Lcom/google/android/gms/internal/ads/zza;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzb;->b:[Lcom/google/android/gms/internal/ads/zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=["

    const-string v1, "])"

    invoke-static {v0, v1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zza;
    .locals 1

    if-gez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzb;->a:Lcom/google/android/gms/internal/ads/zza;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzb;->b:[Lcom/google/android/gms/internal/ads/zza;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb(I)Z
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    sget p1, Lcom/google/android/gms/internal/ads/zza;->zzi:I

    const/4 p1, 0x0

    return p1
.end method

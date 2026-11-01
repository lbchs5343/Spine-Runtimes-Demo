.class public final Lcom/google/android/gms/internal/ads/zzadj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:Ljava/lang/String;

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zza:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzb:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 9

    const/high16 v0, -0x200000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_b

    ushr-int/lit8 v0, p1, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    ushr-int/lit8 v3, p1, 0x11

    and-int/2addr v3, v1

    if-eqz v3, :cond_b

    ushr-int/lit8 v4, p1, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_b

    ushr-int/lit8 v5, p1, 0xa

    and-int/2addr v5, v1

    if-eq v5, v1, :cond_b

    add-int/lit8 v4, v4, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zza:I

    rsub-int/lit8 v6, v3, 0x3

    sget-object v7, Lcom/google/android/gms/internal/ads/zzadk;->c:[Ljava/lang/String;

    aget-object v6, v7, v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzb:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzadk;->e:[I

    aget v5, v6, v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    :cond_1
    :goto_0
    ushr-int/lit8 v7, p1, 0x9

    and-int/2addr v7, v2

    const/16 v8, 0x480

    if-eq v3, v2, :cond_2

    if-eq v3, v6, :cond_4

    const/16 v8, 0x180

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0x240

    :cond_4
    :goto_1
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    if-ne v3, v1, :cond_6

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->f:[I

    aget v0, v0, v4

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->a:[I

    aget v0, v0, v4

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    mul-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v5

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    goto :goto_4

    :cond_6
    const/16 v8, 0x90

    if-ne v0, v1, :cond_8

    if-ne v3, v6, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->b:[I

    aget v0, v0, v4

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->d:[I

    aget v0, v0, v4

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    mul-int/lit16 v0, v0, 0x90

    div-int/2addr v0, v5

    add-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->g:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    if-ne v3, v2, :cond_9

    const/16 v8, 0x48

    :cond_9
    mul-int v8, v8, v0

    div-int/2addr v8, v5

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    :goto_4
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_a

    const/4 v6, 0x1

    :cond_a
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    return v2

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

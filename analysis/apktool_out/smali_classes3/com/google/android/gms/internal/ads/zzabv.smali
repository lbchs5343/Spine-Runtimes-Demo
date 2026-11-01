.class public final Lcom/google/android/gms/internal/ads/zzabv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:I

.field public final zzk:F

.field public final zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabv;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzabv;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzi:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzj:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzk:F

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzabv;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzabv;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v8

    invoke-static {v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzdd;->zze([BII)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    invoke-static {v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zze([BII)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length p0, p0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzf([BII)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzh:I

    add-int/lit8 v2, v2, 0x8

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzi:I

    add-int/lit8 v5, v5, 0x8

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzj:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzk:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzl:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzm:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzg:F

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzfo;->zza:I

    iget v12, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzc:I

    invoke-static {v11, v12, p0}, Lcom/google/android/gms/internal/ads/zzdd;->zzc(III)Ljava/lang/String;

    move-result-object p0

    move v11, v8

    move v12, v9

    move v13, v10

    move v8, v5

    move v9, v6

    move v10, v7

    move v5, v0

    move v6, v1

    move v7, v2

    :goto_2
    move-object v14, p0

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    const/16 v9, 0x10

    const/4 p0, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x10

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_2

    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzabv;-><init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Error parsing AVC config"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p0

    throw p0
.end method

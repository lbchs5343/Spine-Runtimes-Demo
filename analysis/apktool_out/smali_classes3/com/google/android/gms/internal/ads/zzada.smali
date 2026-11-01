.class public final Lcom/google/android/gms/internal/ads/zzada;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzadc;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadc;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->a:Lcom/google/android/gms/internal/ads/zzadc;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzada;->b:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->a:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzada;->a:Lcom/google/android/gms/internal/ads/zzadc;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Lcom/google/android/gms/internal/ads/zzadb;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzadb;->zza:[J

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzadb;->zzb:[J

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzadc;->zzb(J)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v9, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzd([JJZZ)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    aget-wide v11, v5, v6

    :goto_0
    if-ne v6, v10, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v7, v4, v6

    :goto_1
    iget v13, v3, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    const-wide/32 v14, 0xf4240

    mul-long v11, v11, v14

    const/16 v16, 0x1

    const/16 v17, -0x1

    int-to-long v9, v13

    div-long/2addr v11, v9

    new-instance v9, Lcom/google/android/gms/internal/ads/zzadr;

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzada;->b:J

    add-long/2addr v7, v14

    invoke-direct {v9, v11, v12, v7, v8}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    cmp-long v10, v7, v1

    if-eqz v10, :cond_3

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    aget-wide v1, v5, v6

    aget-wide v5, v4, v6

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    mul-long v1, v1, v18

    int-to-long v3, v3

    div-long/2addr v1, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadr;

    add-long/2addr v14, v5

    invoke-direct {v3, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v1

    :cond_3
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v1, v9, v9}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

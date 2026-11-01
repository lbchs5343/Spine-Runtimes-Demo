.class public final Lg/eta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzed;

.field public c:Lcom/google/android/gms/internal/ads/zzajh;

.field public d:Z

.field public e:Lg/akq;

.field public final f:Lcom/google/android/gms/internal/ads/zzadx;

.field public g:I

.field public h:I

.field public final i:Lg/jk;

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public final k:Lcom/google/android/gms/internal/ads/zzed;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzajh;Lg/akq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p2, p0, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object p3, p0, Lg/eta;->e:Lg/akq;

    new-instance v0, Lg/jk;

    invoke-direct {v0}, Lg/jk;-><init>()V

    iput-object v0, p0, Lg/eta;->i:Lg/jk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lg/eta;->k:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lg/eta;->j:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lg/eta;->b:Lcom/google/android/gms/internal/ads/zzed;

    iput-object p2, p0, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object p3, p0, Lg/eta;->e:Lg/akq;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    invoke-virtual {p0}, Lg/eta;->m()V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 4

    iget-object v0, p0, Lg/eta;->i:Lg/jk;

    const/4 v1, 0x0

    iput v1, v0, Lg/jk;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lg/jk;->j:J

    iput-boolean v1, v0, Lg/jk;->o:Z

    iput-boolean v1, v0, Lg/jk;->b:Z

    iput-boolean v1, v0, Lg/jk;->c:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lg/jk;->k:Lcom/google/android/gms/internal/ads/zzajf;

    iput v1, p0, Lg/eta;->g:I

    iput v1, p0, Lg/eta;->a:I

    iput v1, p0, Lg/eta;->l:I

    iput v1, p0, Lg/eta;->h:I

    iput-boolean v1, p0, Lg/eta;->d:Z

    return-void
.end method

.method public final n()Z
    .locals 5

    iget v0, p0, Lg/eta;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/eta;->g:I

    iget-boolean v0, p0, Lg/eta;->d:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lg/eta;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lg/eta;->l:I

    iget-object v3, p0, Lg/eta;->i:Lg/jk;

    iget-object v3, v3, Lg/jk;->q:[I

    iget v4, p0, Lg/eta;->a:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lg/eta;->a:I

    iput v2, p0, Lg/eta;->l:I

    return v2

    :cond_1
    return v1
.end method

.method public final o()I
    .locals 2

    iget-boolean v0, p0, Lg/eta;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:[I

    iget v1, p0, Lg/eta;->g:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eta;->i:Lg/jk;

    iget-object v0, v0, Lg/jk;->n:[Z

    iget v1, p0, Lg/eta;->g:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lg/eta;->q()Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final p(II)I
    .locals 11

    invoke-virtual {p0}, Lg/eta;->q()Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:I

    iget-object v3, p0, Lg/eta;->i:Lg/jk;

    if-eqz v2, :cond_1

    iget-object v0, v3, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajf;->zze:[B

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    array-length v2, v0

    iget-object v4, p0, Lg/eta;->b:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    move-object v0, v4

    :goto_0
    iget v4, p0, Lg/eta;->g:I

    iget-boolean v5, v3, Lg/jk;->b:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v3, Lg/jk;->f:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eq v6, v5, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v7, v2

    iget-object v8, p0, Lg/eta;->j:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    int-to-byte v7, v7

    aput-byte v7, v9, v1

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v7, p0, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v7, v8, v6, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    invoke-interface {v7, v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    if-nez v5, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x8

    iget-object v10, p0, Lg/eta;->k:Lcom/google/android/gms/internal/ads/zzed;

    if-nez v4, :cond_7

    int-to-byte p2, p2

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    aput-byte v1, v3, v1

    aput-byte v6, v3, v6

    aput-byte v1, v3, v8

    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v3, p2

    invoke-interface {v7, v10, v9, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_7
    add-int/2addr v2, v6

    iget-object p1, v3, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v8

    if-eqz p2, :cond_8

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    aget-byte p1, v0, v8

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v9

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    goto :goto_4

    :cond_8
    move-object v10, p1

    :goto_4
    invoke-interface {v7, v10, v3, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    add-int/2addr v2, v3

    return v2
.end method

.method public final q()Lcom/google/android/gms/internal/ads/zzajf;
    .locals 3

    iget-boolean v0, p0, Lg/eta;->d:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/eta;->i:Lg/jk;

    iget-object v1, v0, Lg/jk;->h:Lg/akq;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v1, v1, Lg/akq;->b:I

    iget-object v0, v0, Lg/jk;->k:Lcom/google/android/gms/internal/ads/zzajf;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaje;->zza(I)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zza:Z

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

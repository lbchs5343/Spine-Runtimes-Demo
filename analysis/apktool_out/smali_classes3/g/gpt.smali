.class public final Lg/gpt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:F

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:F

.field public j:Ljava/lang/CharSequence;

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/gpt;->e:J

    iput-wide v0, p0, Lg/gpt;->h:J

    const/4 v0, 0x2

    iput v0, p0, Lg/gpt;->c:I

    const v0, -0x800001

    iput v0, p0, Lg/gpt;->d:F

    const/4 v1, 0x1

    iput v1, p0, Lg/gpt;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lg/gpt;->k:I

    iput v0, p0, Lg/gpt;->a:F

    const/high16 v0, -0x80000000

    iput v0, p0, Lg/gpt;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lg/gpt;->i:F

    iput v0, p0, Lg/gpt;->b:I

    return-void
.end method


# virtual methods
.method public final l()Lcom/google/android/gms/internal/ads/zzcr;
    .locals 13

    iget v0, p0, Lg/gpt;->a:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, -0x800001

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/gpt;->c:I

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Lg/gpt;->g:I

    const/high16 v8, -0x80000000

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    iget v7, p0, Lg/gpt;->c:I

    if-eq v7, v11, :cond_5

    if-eq v7, v9, :cond_4

    if-eq v7, v4, :cond_5

    if-eq v7, v3, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    iget v12, p0, Lg/gpt;->c:I

    if-eq v12, v11, :cond_8

    if-eq v12, v10, :cond_7

    if-eq v12, v9, :cond_6

    if-eq v12, v4, :cond_8

    if-eq v12, v3, :cond_6

    const-string v3, "Unknown textAlignment: "

    const-string v4, "WebvttCueParser"

    invoke-static {v12, v3, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_7
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_8
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, p0, Lg/gpt;->d:F

    iget v4, p0, Lg/gpt;->f:I

    cmpl-float v9, v3, v6

    if-eqz v9, :cond_a

    if-nez v4, :cond_a

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_9

    cmpl-float v1, v3, v5

    if-lez v1, :cond_a

    :cond_9
    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_a
    if-nez v9, :cond_b

    if-nez v4, :cond_c

    goto :goto_3

    :cond_b
    move v6, v3

    :cond_c
    :goto_4
    invoke-virtual {v8, v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    iget v1, p0, Lg/gpt;->k:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(I)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(F)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzcr;->zzi(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v1, p0, Lg/gpt;->i:F

    if-eqz v7, :cond_10

    if-eq v7, v11, :cond_e

    if-ne v7, v10, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    cmpg-float v2, v0, v2

    if-gtz v2, :cond_f

    add-float/2addr v0, v0

    goto :goto_5

    :cond_f
    sub-float/2addr v5, v0

    add-float v0, v5, v5

    goto :goto_5

    :cond_10
    sub-float v0, v5, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v0, p0, Lg/gpt;->b:I

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzo(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget-object v0, p0, Lg/gpt;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcr;

    :cond_11
    return-object v8
.end method

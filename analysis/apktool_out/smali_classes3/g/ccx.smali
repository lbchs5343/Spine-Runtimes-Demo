.class public final Lg/ccx;
.super Lg/cbw;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:I

.field public final n:Lcom/google/android/gms/internal/ads/zzxp;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;IZ)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lg/cbw;-><init>(ILcom/google/android/gms/internal/ads/zzbw;I)V

    iput-object p4, p0, Lg/ccx;->n:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzE:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    cmpl-float v2, v1, p3

    if-eqz v2, :cond_2

    const/high16 v2, 0x4f000000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lg/ccx;->h:Z

    const/4 v1, -0x1

    if-eqz p6, :cond_3

    iget-object p6, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v2, p6, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    if-eq v2, v1, :cond_4

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    iget v2, p6, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    if-eq v2, v1, :cond_5

    if-ltz v2, :cond_3

    :cond_5
    iget v2, p6, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    cmpl-float v3, v2, p3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    :cond_6
    iget p6, p6, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    if-eq p6, v1, :cond_7

    if-ltz p6, :cond_3

    :cond_7
    const/4 p6, 0x1

    :goto_4
    iput-boolean p6, p0, Lg/ccx;->c:Z

    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p6

    iput-boolean p6, p0, Lg/ccx;->a:Z

    iget-object p6, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v2, p6, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    cmpl-float p3, v2, p3

    if-eqz p3, :cond_8

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p3, v2, p3

    if-ltz p3, :cond_8

    const/4 p3, 0x1

    goto :goto_5

    :cond_8
    const/4 p3, 0x0

    :goto_5
    iput-boolean p3, p0, Lg/ccx;->j:Z

    iget p3, p6, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    iput p3, p0, Lg/ccx;->e:I

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzad;->zza()I

    move-result p3

    iput p3, p0, Lg/ccx;->g:I

    iget-object p3, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p3, p3, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    sget-object p6, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    const p6, 0x7fffffff

    if-eqz p3, :cond_9

    if-nez p3, :cond_9

    const p3, 0x7fffffff

    goto :goto_6

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_6
    iput p3, p0, Lg/ccx;->m:I

    iget-object p3, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p3, p3, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    if-eqz p3, :cond_a

    and-int/2addr p3, p2

    if-eqz p3, :cond_b

    :cond_a
    const/4 p3, 0x1

    goto :goto_7

    :cond_b
    const/4 p3, 0x0

    :goto_7
    iput-boolean p3, p0, Lg/ccx;->k:Z

    const/4 p3, 0x0

    :goto_8
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzl:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge p3, v2, :cond_d

    iget-object v2, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzl:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move p6, p3

    goto :goto_9

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    iput p6, p0, Lg/ccx;->f:I

    and-int/lit16 p3, p5, 0x180

    const/16 p4, 0x80

    if-ne p3, p4, :cond_e

    const/4 p3, 0x1

    goto :goto_a

    :cond_e
    const/4 p3, 0x0

    :goto_a
    iput-boolean p3, p0, Lg/ccx;->b:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_f

    const/4 p3, 0x1

    goto :goto_b

    :cond_f
    const/4 p3, 0x0

    :goto_b
    iput-boolean p3, p0, Lg/ccx;->l:Z

    iget-object p3, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const/4 p6, 0x2

    if-nez p4, :cond_10

    :goto_c
    const/4 v3, 0x0

    goto :goto_f

    :cond_10
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_d

    :sswitch_0
    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    const/4 p4, 0x3

    goto :goto_e

    :sswitch_1
    const-string v2, "video/avc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    const/4 p4, 0x4

    goto :goto_e

    :sswitch_2
    const-string v2, "video/hevc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    const/4 p4, 0x2

    goto :goto_e

    :sswitch_3
    const-string v2, "video/av01"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    const/4 p4, 0x1

    goto :goto_e

    :sswitch_4
    const-string v2, "video/dolby-vision"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    const/4 p4, 0x0

    goto :goto_e

    :cond_11
    :goto_d
    const/4 p4, -0x1

    :goto_e
    if-eqz p4, :cond_15

    if-eq p4, p2, :cond_16

    if-eq p4, p6, :cond_14

    if-eq p4, v4, :cond_13

    if-eq p4, v3, :cond_12

    goto :goto_c

    :cond_12
    const/4 v3, 0x1

    goto :goto_f

    :cond_13
    const/4 v3, 0x2

    goto :goto_f

    :cond_14
    const/4 v3, 0x3

    goto :goto_f

    :cond_15
    const/4 v3, 0x5

    :cond_16
    :goto_f
    iput v3, p0, Lg/ccx;->i:I

    iget p4, p3, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_17

    :goto_10
    const/4 p2, 0x0

    goto :goto_11

    :cond_17
    iget-object p4, p0, Lg/ccx;->n:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v2, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    invoke-static {p5, v2}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_10

    :cond_18
    iget-boolean v2, p0, Lg/ccx;->h:Z

    if-nez v2, :cond_19

    iget-boolean p4, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzC:Z

    if-nez p4, :cond_19

    goto :goto_10

    :cond_19
    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p4

    if-eqz p4, :cond_1a

    iget-boolean p4, p0, Lg/ccx;->c:Z

    if-eqz p4, :cond_1a

    if-eqz v2, :cond_1a

    iget p3, p3, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    if-eq p3, v1, :cond_1a

    and-int/2addr p1, p5

    if-eqz p1, :cond_1a

    const/4 p2, 0x2

    :cond_1a
    :goto_11
    iput p2, p0, Lg/ccx;->d:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final s()I
    .locals 1

    iget v0, p0, Lg/ccx;->d:I

    return v0
.end method

.method public final bridge synthetic t(Lg/cbw;)Z
    .locals 2

    check-cast p1, Lg/ccx;

    iget-object v0, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    iget-object v1, p1, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ccx;->n:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxp;->zzF:Z

    iget-boolean v0, p0, Lg/ccx;->b:Z

    iget-boolean v1, p1, Lg/ccx;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lg/ccx;->l:Z

    iget-boolean p1, p1, Lg/ccx;->l:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

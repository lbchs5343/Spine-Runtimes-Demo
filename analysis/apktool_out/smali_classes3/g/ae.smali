.class public final Lg/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public final c:J

.field public d:[J

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzadx;

.field public g:I

.field public h:[I

.field public i:I

.field public final j:I

.field public k:I

.field public final l:I

.field public m:I


# direct methods
.method public constructor <init>(IIJILcom/google/android/gms/internal/ads/zzadx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x2

    :cond_0
    iput-wide p3, p0, Lg/ae;->c:J

    iput p5, p0, Lg/ae;->e:I

    iput-object p6, p0, Lg/ae;->f:Lcom/google/android/gms/internal/ads/zzadx;

    if-ne p2, v1, :cond_1

    const/high16 p3, 0x63640000

    goto :goto_0

    :cond_1
    const/high16 p3, 0x62770000

    :goto_0
    div-int/lit8 p4, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p4, p4, 0x30

    or-int/2addr p1, p4

    or-int/2addr p3, p1

    iput p3, p0, Lg/ae;->j:I

    if-ne p2, v1, :cond_2

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lg/ae;->l:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lg/ae;->b:J

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Lg/ae;->d:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lg/ae;->h:[I

    return-void
.end method


# virtual methods
.method public final n(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 5

    iget v0, p0, Lg/ae;->k:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lg/ae;->c:J

    const/4 v2, 0x1

    int-to-long v3, v2

    mul-long v0, v0, v3

    iget v3, p0, Lg/ae;->e:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    div-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lg/ae;->h:[I

    invoke-static {p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc([IIZZ)I

    move-result p1

    iget-object v0, p0, Lg/ae;->h:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzado;

    invoke-virtual {p0, p1}, Lg/ae;->o(I)Lcom/google/android/gms/internal/ads/zzadr;

    move-result-object p1

    invoke-direct {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lg/ae;->o(I)Lcom/google/android/gms/internal/ads/zzadr;

    move-result-object p2

    add-int/2addr p1, v2

    iget-object v0, p0, Lg/ae;->d:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    invoke-virtual {p0, p1}, Lg/ae;->o(I)Lcom/google/android/gms/internal/ads/zzadr;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzado;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadr;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lg/ae;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p1
.end method

.method public final o(I)Lcom/google/android/gms/internal/ads/zzadr;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadr;

    iget-object v1, p0, Lg/ae;->h:[I

    aget v1, v1, p1

    int-to-long v1, v1

    iget-wide v3, p0, Lg/ae;->c:J

    const/4 v5, 0x1

    int-to-long v5, v5

    mul-long v3, v3, v5

    iget v5, p0, Lg/ae;->e:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long v3, v3, v1

    iget-object v1, p0, Lg/ae;->d:[J

    aget-wide v5, v1, p1

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    return-object v0
.end method

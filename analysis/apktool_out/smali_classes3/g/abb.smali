.class public final Lg/abb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public final c:Lg/cxs;

.field public final d:Lcom/google/android/gms/internal/ads/zzed;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cxs;

    invoke-direct {v0}, Lg/cxs;-><init>()V

    iput-object v0, p0, Lg/abb;->c:Lg/cxs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    iput-object v0, p0, Lg/abb;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, -0x1

    iput v0, p0, Lg/abb;->e:I

    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 8

    iget-boolean v0, p0, Lg/abb;->b:Z

    iget-object v1, p0, Lg/abb;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lg/abb;->b:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    :goto_0
    iget-boolean v0, p0, Lg/abb;->b:Z

    const/4 v3, 0x1

    if-nez v0, :cond_a

    iget v0, p0, Lg/abb;->e:I

    iget-object v4, p0, Lg/abb;->c:Lg/cxs;

    if-gez v0, :cond_4

    const-wide/16 v5, -0x1

    invoke-virtual {v4, p1, v5, v6}, Lg/cxs;->i(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4, p1, v3}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v0, v4, Lg/cxs;->a:I

    iget v5, v4, Lg/cxs;->c:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v2}, Lg/abb;->g(I)I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lg/abb;->a:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zze(Lcom/google/android/gms/internal/ads/zzacs;I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iput v5, p0, Lg/abb;->e:I

    move v0, v5

    :cond_4
    invoke-virtual {p0, v0}, Lg/abb;->g(I)I

    move-result v0

    iget v5, p0, Lg/abb;->e:I

    iget v6, p0, Lg/abb;->a:I

    add-int/2addr v5, v6

    if-lez v0, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzF(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v7

    invoke-static {p1, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzd(Lcom/google/android/gms/internal/ads/zzacs;[BII)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    :goto_2
    return v2

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    add-int/lit8 v0, v5, -0x1

    iget-object v6, v4, Lg/cxs;->d:[I

    aget v0, v6, v0

    const/16 v6, 0xff

    if-eq v0, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lg/abb;->b:Z

    :cond_8
    iget v0, v4, Lg/cxs;->f:I

    if-ne v5, v0, :cond_9

    const/4 v5, -0x1

    :cond_9
    iput v5, p0, Lg/abb;->e:I

    goto :goto_0

    :cond_a
    return v3
.end method

.method public final g(I)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lg/abb;->a:I

    :cond_0
    iget v1, p0, Lg/abb;->a:I

    add-int v2, p1, v1

    iget-object v3, p0, Lg/abb;->c:Lg/cxs;

    iget v4, v3, Lg/cxs;->f:I

    if-ge v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/abb;->a:I

    iget-object v1, v3, Lg/cxs;->d:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method

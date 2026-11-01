.class public final Lcom/google/android/gms/internal/ads/zzano;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaob;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzann;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzed;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzann;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->c:Lcom/google/android/gms/internal/ads/zzann;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->e:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzano;->d:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_8

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzano;->d:Z

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p2

    if-lez p2, :cond_8

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzano;->e:Lcom/google/android/gms/internal/ads/zzed;

    if-ge p2, v2, :cond_5

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/16 v5, 0xff

    if-eq p2, v5, :cond_6

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    rsub-int/lit8 v5, v5, 0x3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    invoke-virtual {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    add-int/2addr v5, p2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    if-ne v5, v2, :cond_2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p2

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzano;->b:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzano;->f:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzano;->f:I

    if-ge p2, v2, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result p2

    add-int/2addr p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v2, 0x1002

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzF(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzano;->f:I

    sub-int/2addr v5, p2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    invoke-virtual {p1, v2, v5, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzano;->f:I

    if-ne v2, p2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzano;->b:Z

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-static {v2, v4, p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzf([BIII)I

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzano;->f:I

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzano;->d:Z

    return-void

    :cond_7
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    :goto_3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzano;->c:Lcom/google/android/gms/internal/ads/zzann;

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzann;->zza(Lcom/google/android/gms/internal/ads/zzed;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzano;->a:I

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzano;->c:Lcom/google/android/gms/internal/ads/zzann;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;->zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzano;->d:Z

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzano;->d:Z

    return-void
.end method

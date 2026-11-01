.class public final Lcom/google/android/gms/internal/ads/zzamy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public a:I

.field public b:J

.field public final c:I

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/zzadx;

.field public final f:Lcom/google/android/gms/internal/ads/zzed;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzadj;

.field public k:Z

.field public final l:Ljava/lang/String;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->f:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->j:Lcom/google/android/gms/internal/ads/zzadj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamy;->l:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamy;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamy;->f:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->d:I

    if-lt v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzamy;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamy;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    invoke-virtual {p1, v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    if-lt v5, v6, :cond_0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->j:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzadj;->zza(I)Z

    move-result v0

    if-nez v0, :cond_3

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    goto/16 :goto_0

    :cond_3
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->d:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->i:Z

    if-nez v0, :cond_4

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    int-to-long v7, v0

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzamy;->b:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzamy;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const/16 v7, 0x1000

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->l:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->c:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzamy;->i:Z

    :cond_4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_9

    add-int/lit8 v7, v5, 0x1

    aget-byte v8, v0, v5

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzamy;->k:Z

    if-eqz v10, :cond_7

    and-int/lit16 v8, v8, 0xe0

    const/16 v10, 0xe0

    if-ne v8, v10, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzamy;->k:Z

    if-eqz v8, :cond_8

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzamy;->k:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    aget-byte v0, v0, v5

    aput-byte v0, v2, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    goto/16 :goto_0

    :cond_8
    move v5, v7

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamy;->h:J

    return-void
.end method

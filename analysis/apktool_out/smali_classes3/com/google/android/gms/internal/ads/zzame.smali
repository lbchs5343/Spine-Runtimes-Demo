.class public final Lcom/google/android/gms/internal/ads/zzame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public a:I

.field public b:Lcom/google/android/gms/internal/ads/zzad;

.field public final c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/internal/ads/zzec;

.field public g:Lcom/google/android/gms/internal/ads/zzadx;

.field public h:J

.field public i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public k:J

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzec;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->f:Lcom/google/android/gms/internal/ads/zzec;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzame;->j:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->l:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzame;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzame;->j:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzame;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzame;->d:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzame;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzame;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    invoke-virtual {p1, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->f:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zze(Lcom/google/android/gms/internal/ads/zzec;)Lcom/google/android/gms/internal/ads/zzabp;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzame;->b:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v3, :cond_3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzc:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-ne v5, v7, :cond_3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    if-ne v5, v7, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v5, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzame;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzc:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzame;->l:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzame;->c:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzf:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzU(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Ljava/lang/String;

    const-string v7, "audio/ac3"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzf:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzame;->b:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    :cond_5
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabp;->zzd:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzame;->d:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabp;->zze:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzame;->b:Lcom/google/android/gms/internal/ads/zzad;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    int-to-long v9, v3

    div-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzame;->k:J

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzame;->i:Z

    const/16 v5, 0xb

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    if-ne v0, v5, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzame;->i:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    const/16 v6, 0x77

    if-ne v0, v6, :cond_9

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzame;->i:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    aput-byte v5, v0, v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    aput-byte v6, v0, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    goto/16 :goto_0

    :cond_9
    if-ne v0, v5, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzame;->i:Z

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->g:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzame;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzame;->h:J

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzang;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaob;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Lcom/google/android/gms/internal/ads/zzek;

.field public final e:Lcom/google/android/gms/internal/ads/zzamm;

.field public f:Z

.field public g:I

.field public final h:Lcom/google/android/gms/internal/ads/zzec;

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->e:Lcom/google/android/gms/internal/ads/zzamm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->h:Lcom/google/android/gms/internal/ads/zzec;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    return-void
.end method


# virtual methods
.method public final l(Lcom/google/android/gms/internal/ads/zzed;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    if-ne p1, p3, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzed;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzang;->d:Lcom/google/android/gms/internal/ads/zzek;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, p2, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzang;->e:Lcom/google/android/gms/internal/ads/zzamm;

    const-string v4, "PesReader"

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_3

    if-eq v2, v6, :cond_2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    if-eq v2, v5, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected start indicator: expected "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more bytes"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzamm;->zzc(Z)V

    goto :goto_1

    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    :cond_4
    move/from16 v2, p2

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    if-lez v9, :cond_12

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    if-eqz v9, :cond_11

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzang;->h:Lcom/google/android/gms/internal/ads/zzec;

    if-eq v9, v8, :cond_d

    if-eq v9, v6, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    if-ne v10, v5, :cond_5

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    sub-int v10, v9, v10

    :goto_3
    if-lez v10, :cond_6

    sub-int/2addr v9, v10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    :cond_6
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzamm;->zza(Lcom/google/android/gms/internal/ads/zzed;)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    if-eq v10, v5, :cond_7

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    if-nez v10, :cond_7

    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/ads/zzamm;->zzc(Z)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    :cond_7
    const/4 v5, 0x0

    :cond_8
    const/4 v7, 0x2

    const/4 v9, -0x1

    goto/16 :goto_7

    :cond_9
    const/16 v9, 0xa

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzang;->g:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v0, v1, v11, v9}, Lcom/google/android/gms/internal/ads/zzang;->l(Lcom/google/android/gms/internal/ads/zzed;[BI)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzang;->g:I

    invoke-virtual {v0, v1, v9, v11}, Lcom/google/android/gms/internal/ads/zzang;->l(Lcom/google/android/gms/internal/ads/zzed;[BI)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzang;->f:Z

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-eqz v9, :cond_b

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    int-to-long v13, v9

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v9, 0xf

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    shl-int/2addr v15, v9

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    int-to-long v5, v6

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzang;->a:Z

    const/16 v16, 0x1e

    if-nez v7, :cond_a

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzang;->k:Z

    if-eqz v7, :cond_a

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v7

    move-wide/from16 v17, v13

    int-to-long v12, v7

    shl-long v12, v12, v16

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v7

    shl-int/2addr v7, v9

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    move-wide/from16 v19, v12

    int-to-long v11, v9

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzang;->d:Lcom/google/android/gms/internal/ads/zzek;

    move v13, v15

    int-to-long v14, v7

    or-long v14, v19, v14

    or-long/2addr v11, v14

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzang;->a:Z

    goto :goto_4

    :cond_a
    move-wide/from16 v17, v13

    move v13, v15

    :goto_4
    shl-long v9, v17, v16

    int-to-long v11, v13

    or-long/2addr v9, v11

    or-long/2addr v5, v9

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzang;->d:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    move-result-wide v5

    goto :goto_5

    :cond_b
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzang;->b:Z

    if-eq v8, v7, :cond_c

    const/4 v12, 0x0

    goto :goto_6

    :cond_c
    const/4 v12, 0x4

    :goto_6
    or-int/2addr v2, v12

    invoke-interface {v3, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzamm;->zzd(JI)V

    const/4 v14, 0x3

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    :goto_7
    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    const/16 v7, 0x9

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzang;->l(Lcom/google/android/gms/internal/ads/zzed;[BI)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    const/16 v5, 0x18

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    if-eq v5, v8, :cond_e

    const-string v6, "Unexpected start code prefix: "

    invoke-static {v5, v6, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v9, -0x1

    goto :goto_9

    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v6, 0x10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzang;->b:Z

    const/4 v7, 0x2

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v9

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzang;->f:Z

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v9

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzang;->k:Z

    const/4 v9, 0x6

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzang;->g:I

    const/4 v9, -0x1

    if-nez v6, :cond_10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    :cond_f
    :goto_8
    const/4 v5, 0x2

    goto :goto_9

    :cond_10
    add-int/lit8 v6, v6, -0x3

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    if-gez v6, :cond_f

    const-string v5, "Found negative packet payload size: "

    invoke-static {v6, v5, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    goto :goto_8

    :goto_9
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v9, -0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_7

    :cond_12
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->d:Lcom/google/android/gms/internal/ads/zzek;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->e:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamm;->zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzang;->c:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzang;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->e:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamm;->zze()V

    return-void
.end method

.method public final zzd(Z)Z
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->j:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzang;->i:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

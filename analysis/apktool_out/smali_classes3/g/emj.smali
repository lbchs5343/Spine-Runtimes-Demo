.class public final Lg/emj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/arm;


# instance fields
.field public a:J

.field public b:J

.field public d:J

.field public final e:J

.field public f:J

.field public g:J

.field public final h:Lg/dbh;

.field public i:I

.field public final j:Lg/cxs;

.field public k:J

.field public final l:J

.field public m:J


# direct methods
.method public constructor <init>(Lg/dbh;JJJJZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput-object p1, p0, Lg/emj;->h:Lg/dbh;

    iput-wide p2, p0, Lg/emj;->l:J

    iput-wide p4, p0, Lg/emj;->e:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v2, p0, Lg/emj;->i:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lg/emj;->m:J

    const/4 p1, 0x4

    iput p1, p0, Lg/emj;->i:I

    :goto_2
    new-instance p1, Lg/cxs;

    invoke-direct {p1}, Lg/cxs;-><init>()V

    iput-object p1, p0, Lg/emj;->j:Lg/cxs;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzacs;)J
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/emj;->i:I

    iget-wide v5, v0, Lg/emj;->e:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v10, -0x1

    iget-object v12, v0, Lg/emj;->j:Lg/cxs;

    if-eqz v2, :cond_d

    if-eq v2, v8, :cond_b

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v6, :cond_0

    return-wide v10

    :cond_0
    move-wide v2, v10

    const-wide/16 v19, 0x2

    goto/16 :goto_4

    :cond_1
    const-wide/16 v15, 0x2

    iget-wide v13, v0, Lg/emj;->k:J

    const-wide/16 v17, 0x0

    iget-wide v3, v0, Lg/emj;->d:J

    cmp-long v2, v13, v3

    if-nez v2, :cond_2

    move-wide v2, v10

    move-wide/from16 v22, v2

    :goto_0
    move-wide/from16 v19, v15

    goto/16 :goto_3

    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v13

    invoke-virtual {v12, v1, v3, v4}, Lg/cxs;->i(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, v0, Lg/emj;->k:J

    cmp-long v4, v2, v13

    if-eqz v4, :cond_3

    move-wide/from16 v22, v10

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v12, v1, v7}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iget-wide v2, v0, Lg/emj;->a:J

    iget-wide v4, v12, Lg/cxs;->e:J

    sub-long/2addr v2, v4

    iget v8, v12, Lg/cxs;->a:I

    move-wide/from16 v19, v15

    iget v15, v12, Lg/cxs;->b:I

    add-int/2addr v8, v15

    cmp-long v15, v2, v17

    if-ltz v15, :cond_5

    const-wide/32 v16, 0x11940

    cmp-long v18, v2, v16

    if-gez v18, :cond_5

    move-wide v2, v10

    move-wide/from16 v22, v2

    goto :goto_3

    :cond_5
    if-gez v15, :cond_6

    iput-wide v13, v0, Lg/emj;->d:J

    iput-wide v4, v0, Lg/emj;->f:J

    goto :goto_1

    :cond_6
    int-to-long v13, v8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v16

    add-long v13, v16, v13

    iput-wide v13, v0, Lg/emj;->k:J

    iput-wide v4, v0, Lg/emj;->g:J

    :goto_1
    iget-wide v4, v0, Lg/emj;->d:J

    iget-wide v13, v0, Lg/emj;->k:J

    sub-long v16, v4, v13

    const-wide/32 v21, 0x186a0

    cmp-long v18, v16, v21

    if-gez v18, :cond_7

    iput-wide v13, v0, Lg/emj;->d:J

    move-wide/from16 v22, v10

    move-wide v2, v13

    goto :goto_3

    :cond_7
    int-to-long v7, v8

    if-gtz v15, :cond_8

    move-wide/from16 v22, v19

    goto :goto_2

    :cond_8
    const-wide/16 v22, 0x1

    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v24

    mul-long v7, v7, v22

    sub-long v24, v24, v7

    mul-long v2, v2, v16

    iget-wide v7, v0, Lg/emj;->f:J

    move-wide/from16 v22, v10

    iget-wide v9, v0, Lg/emj;->g:J

    sub-long/2addr v7, v9

    div-long/2addr v2, v7

    add-long v2, v2, v24

    add-long v4, v4, v22

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_3
    cmp-long v4, v2, v22

    if-eqz v4, :cond_9

    return-wide v2

    :cond_9
    iput v6, v0, Lg/emj;->i:I

    move-wide/from16 v2, v22

    :goto_4
    invoke-virtual {v12, v1, v2, v3}, Lg/cxs;->i(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    iget-wide v2, v12, Lg/cxs;->e:J

    iget-wide v4, v0, Lg/emj;->a:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    const/4 v15, 0x4

    iput v15, v0, Lg/emj;->i:I

    iget-wide v1, v0, Lg/emj;->g:J

    add-long v1, v1, v19

    neg-long v1, v1

    return-wide v1

    :cond_a
    iget v2, v12, Lg/cxs;->a:I

    iget v3, v12, Lg/cxs;->b:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lg/emj;->k:J

    iget-wide v2, v12, Lg/cxs;->e:J

    iput-wide v2, v0, Lg/emj;->g:J

    const-wide/16 v2, -0x1

    goto :goto_4

    :cond_b
    const-wide/16 v17, 0x0

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :cond_d
    const-wide/16 v17, 0x0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lg/emj;->b:J

    iput v8, v0, Lg/emj;->i:I

    const-wide/32 v9, -0xff1b

    add-long/2addr v9, v5

    cmp-long v4, v9, v2

    if-lez v4, :cond_c

    return-wide v9

    :goto_5
    iput v2, v12, Lg/cxs;->c:I

    move-wide/from16 v3, v17

    iput-wide v3, v12, Lg/cxs;->e:J

    iput v2, v12, Lg/cxs;->f:I

    iput v2, v12, Lg/cxs;->a:I

    iput v2, v12, Lg/cxs;->b:I

    const-wide/16 v3, -0x1

    invoke-virtual {v12, v1, v3, v4}, Lg/cxs;->i(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v12, v1, v2}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    iget v2, v12, Lg/cxs;->a:I

    iget v3, v12, Lg/cxs;->b:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iget-wide v2, v12, Lg/cxs;->e:J

    :goto_6
    iget v4, v12, Lg/cxs;->c:I

    const/4 v15, 0x4

    and-int/2addr v4, v15

    if-eq v4, v15, :cond_f

    const-wide/16 v9, -0x1

    invoke-virtual {v12, v1, v9, v10}, Lg/cxs;->i(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v13

    cmp-long v4, v13, v5

    if-gez v4, :cond_f

    invoke-virtual {v12, v1, v8}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v12, Lg/cxs;->a:I

    iget v7, v12, Lg/cxs;->b:I

    add-int/2addr v4, v7

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zze(Lcom/google/android/gms/internal/ads/zzacs;I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    iget-wide v2, v12, Lg/cxs;->e:J

    goto :goto_6

    :cond_f
    :goto_7
    iput-wide v2, v0, Lg/emj;->m:J

    const/4 v15, 0x4

    iput v15, v0, Lg/emj;->i:I

    iget-wide v1, v0, Lg/emj;->b:J

    return-wide v1

    :cond_10
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzadq;
    .locals 5

    iget-wide v0, p0, Lg/emj;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Lg/bjh;

    invoke-direct {v0, p0}, Lg/bjh;-><init>(Lg/emj;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg(J)V
    .locals 4

    iget-wide v0, p0, Lg/emj;->m:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lg/emj;->a:J

    const/4 p1, 0x2

    iput p1, p0, Lg/emj;->i:I

    iget-wide p1, p0, Lg/emj;->l:J

    iput-wide p1, p0, Lg/emj;->k:J

    iget-wide p1, p0, Lg/emj;->e:J

    iput-wide p1, p0, Lg/emj;->d:J

    iput-wide v0, p0, Lg/emj;->g:J

    iget-wide p1, p0, Lg/emj;->m:J

    iput-wide p1, p0, Lg/emj;->f:J

    return-void
.end method

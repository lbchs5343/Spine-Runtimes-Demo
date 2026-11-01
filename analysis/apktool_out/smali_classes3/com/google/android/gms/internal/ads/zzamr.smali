.class public final Lcom/google/android/gms/internal/ads/zzamr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# static fields
.field public static final a:[F


# instance fields
.field public b:Ljava/lang/String;

.field public c:J

.field public final d:Lg/ezd;

.field public final e:Lcom/google/android/gms/internal/ads/zzane;

.field public final f:Lg/akj;

.field public g:Lg/mr;

.field public h:Lcom/google/android/gms/internal/ads/zzadx;

.field public final i:Lcom/google/android/gms/internal/ads/zzed;

.field public j:Z

.field public final k:[Z

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamr;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Lg/akj;)V

    return-void
.end method

.method public constructor <init>(Lg/akj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->f:Lg/akj;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->k:[Z

    new-instance v0, Lg/ezd;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    new-array v2, v1, [B

    iput-object v2, v0, Lg/ezd;->c:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->d:Lg/ezd;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->c:J

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->e:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->i:Lcom/google/android/gms/internal/ads/zzed;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->e:Lcom/google/android/gms/internal/ads/zzane;

    goto :goto_0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->h:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->l:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->h:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->k:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zza([BII[Z)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamr;->d:Lg/ezd;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamr;->e:Lcom/google/android/gms/internal/ads/zzane;

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->j:Z

    if-nez v4, :cond_0

    invoke-virtual {v5, v3, v1, v2}, Lg/ezd;->g([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    invoke-virtual {v4, v3, v1, v2}, Lg/mr;->i([BII)V

    if-eqz v7, :cond_1

    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v8

    add-int/lit8 v9, v4, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v10, v8, 0xff

    sub-int v11, v4, v1

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzamr;->j:Z

    const/4 v15, 0x1

    if-nez v12, :cond_18

    if-lez v11, :cond_3

    invoke-virtual {v5, v3, v1, v4}, Lg/ezd;->g([BII)V

    :cond_3
    if-gez v11, :cond_4

    neg-int v12, v11

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget v14, v5, Lg/ezd;->e:I

    if-eqz v14, :cond_16

    const-string v13, "H263Reader"

    move/from16 v16, v2

    const-string v2, "Unexpected start code value"

    if-eq v14, v15, :cond_14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_12

    const/4 v15, 0x3

    if-eq v14, v15, :cond_10

    const/16 v14, 0xb3

    if-eq v10, v14, :cond_6

    const/16 v2, 0xb5

    if-ne v10, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_6
    :goto_2
    iget v2, v5, Lg/ezd;->f:I

    sub-int/2addr v2, v12

    iput v2, v5, Lg/ezd;->f:I

    const/4 v2, 0x0

    iput-boolean v2, v5, Lg/ezd;->d:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamr;->h:Lcom/google/android/gms/internal/ads/zzadx;

    iget v8, v5, Lg/ezd;->b:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamr;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v5, Lg/ezd;->c:[B

    iget v5, v5, Lg/ezd;->f:I

    invoke-static {v14, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    new-instance v14, Lcom/google/android/gms/internal/ads/zzec;

    array-length v15, v5

    invoke-direct {v14, v5, v15}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzo(I)V

    const/4 v8, 0x4

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzo(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_7
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    const-string v15, "Invalid aspect ratio"

    move-object/from16 v18, v5

    const/16 v5, 0xf

    if-ne v8, v5, :cond_9

    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    int-to-float v8, v8

    int-to-float v5, v5

    div-float v15, v8, v5

    goto :goto_4

    :cond_9
    const/4 v5, 0x7

    if-ge v8, v5, :cond_a

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamr;->a:[F

    aget v15, v5, v8

    goto :goto_4

    :cond_a
    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0xf

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/4 v8, 0x3

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v8, 0xb

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :cond_b
    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "Unhandled video object layer shape"

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/16 v5, 0x10

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v8

    if-eqz v8, :cond_f

    if-nez v5, :cond_d

    const-string v5, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x0

    :goto_5
    if-lez v5, :cond_e

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_f
    :goto_6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/16 v5, 0xd

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v12, "video/mp4v-es"

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzamr;->j:Z

    goto :goto_8

    :cond_10
    and-int/lit16 v8, v8, 0xf0

    const/16 v12, 0x20

    if-eq v8, v12, :cond_11

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v5, Lg/ezd;->d:Z

    iput v8, v5, Lg/ezd;->f:I

    iput v8, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    iget v2, v5, Lg/ezd;->f:I

    iput v2, v5, Lg/ezd;->b:I

    const/4 v2, 0x4

    iput v2, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_12
    const/4 v8, 0x0

    const/16 v12, 0x1f

    if-le v10, v12, :cond_13

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v5, Lg/ezd;->d:Z

    iput v8, v5, Lg/ezd;->f:I

    iput v8, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_13
    const/4 v15, 0x3

    iput v15, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_14
    const/4 v8, 0x0

    const/16 v12, 0xb5

    if-eq v10, v12, :cond_15

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v5, Lg/ezd;->d:Z

    iput v8, v5, Lg/ezd;->f:I

    iput v8, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_15
    const/4 v15, 0x2

    iput v15, v5, Lg/ezd;->e:I

    goto :goto_7

    :cond_16
    move/from16 v16, v2

    const/4 v8, 0x0

    const/16 v2, 0xb0

    if-ne v10, v2, :cond_17

    const/4 v2, 0x1

    iput v2, v5, Lg/ezd;->e:I

    iput-boolean v2, v5, Lg/ezd;->d:Z

    :cond_17
    :goto_7
    sget-object v2, Lg/ezd;->a:[B

    const/4 v15, 0x3

    invoke-virtual {v5, v2, v8, v15}, Lg/ezd;->g([BII)V

    goto :goto_8

    :cond_18
    move/from16 v16, v2

    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    invoke-virtual {v2, v3, v1, v4}, Lg/mr;->i([BII)V

    if-eqz v7, :cond_1c

    if-lez v11, :cond_19

    invoke-virtual {v7, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    const/4 v1, 0x0

    goto :goto_9

    :cond_19
    neg-int v1, v11

    :goto_9
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamr;->i:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->f:Lg/akj;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamr;->c:J

    invoke-virtual {v1, v11, v12, v5}, Lg/akj;->q(JLcom/google/android/gms/internal/ads/zzed;)V

    :cond_1a
    const/16 v1, 0xb2

    if-ne v10, v1, :cond_1c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    add-int/lit8 v5, v4, 0x2

    aget-byte v2, v2, v5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    :cond_1b
    const/16 v10, 0xb2

    goto :goto_a

    :cond_1c
    const/4 v5, 0x1

    :goto_a
    sub-int v2, v16, v4

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzamr;->l:J

    int-to-long v11, v2

    sub-long/2addr v7, v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamr;->j:Z

    invoke-virtual {v1, v2, v4, v7, v8}, Lg/mr;->j(IZJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzamr;->c:J

    iput v10, v1, Lg/mr;->c:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/mr;->b:Z

    const/16 v2, 0xb6

    if-eq v10, v2, :cond_1e

    const/16 v14, 0xb3

    if-ne v10, v14, :cond_1d

    const/4 v4, 0x1

    const/16 v13, 0xb3

    goto :goto_b

    :cond_1d
    move v13, v10

    const/4 v4, 0x0

    goto :goto_b

    :cond_1e
    move v13, v10

    const/4 v4, 0x1

    :goto_b
    iput-boolean v4, v1, Lg/mr;->f:Z

    if-ne v13, v2, :cond_1f

    const/4 v15, 0x1

    goto :goto_c

    :cond_1f
    const/4 v15, 0x0

    :goto_c
    iput-boolean v15, v1, Lg/mr;->g:Z

    const/4 v2, 0x0

    iput v2, v1, Lg/mr;->e:I

    iput-wide v7, v1, Lg/mr;->a:J

    move v1, v9

    move/from16 v2, v16

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->h:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v1, Lg/mr;

    invoke-direct {v1, v0}, Lg/mr;-><init>(Lcom/google/android/gms/internal/ads/zzadx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->f:Lg/akj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/akj;->aj(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->l:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->j:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v0, v1}, Lg/mr;->j(IZJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    iput-boolean v3, p1, Lg/mr;->f:Z

    iput-boolean v3, p1, Lg/mr;->g:Z

    iput-boolean v3, p1, Lg/mr;->b:Z

    const/4 v0, -0x1

    iput v0, p1, Lg/mr;->c:I

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->c:J

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->k:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->d:Lg/ezd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/ezd;->d:Z

    iput v1, v0, Lg/ezd;->f:I

    iput v1, v0, Lg/ezd;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->g:Lg/mr;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lg/mr;->f:Z

    iput-boolean v1, v0, Lg/mr;->g:Z

    iput-boolean v1, v0, Lg/mr;->b:Z

    const/4 v1, -0x1

    iput v1, v0, Lg/mr;->c:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->e:Lcom/google/android/gms/internal/ads/zzane;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->c:J

    return-void
.end method

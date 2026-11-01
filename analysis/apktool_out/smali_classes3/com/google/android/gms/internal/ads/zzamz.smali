.class public final Lcom/google/android/gms/internal/ads/zzamz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public a:D

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public i:Z

.field public j:Lcom/google/android/gms/internal/ads/zzadx;

.field public k:I

.field public final l:Lcom/google/android/gms/internal/ads/zzana;

.field public m:Z

.field public n:Z

.field public final o:Lcom/google/android/gms/internal/ads/zzec;

.field public p:Z

.field public q:I

.field public r:J

.field public final s:Lcom/google/android/gms/internal/ads/zzed;

.field public t:D

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0xf

    new-array v1, v1, [B

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->h:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzec;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->o:Lcom/google/android/gms/internal/ads/zzec;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->s:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzana;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzana;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->l:Lcom/google/android/gms/internal/ads/zzana;

    const v0, -0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->u:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->r:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->m:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->a:D

    return-void
.end method

.method public static final v(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    if-lez v2, :cond_41

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    const/16 v6, 0x18

    const/4 v7, 0x3

    const/16 v9, 0x11

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzamz;->s:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamz;->l:Lcom/google/android/gms/internal/ads/zzana;

    if-eq v2, v4, :cond_2e

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzana;->zza:I

    if-eq v2, v4, :cond_1

    if-ne v2, v9, :cond_2

    :cond_1
    invoke-static {v1, v10, v4}, Lcom/google/android/gms/internal/ads/zzamz;->v(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Z)V

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    iget v14, v13, Lcom/google/android/gms/internal/ads/zzana;->zzc:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzamz;->d:I

    sub-int/2addr v14, v15

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v14, v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->d:I

    add-int/2addr v14, v2

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->d:I

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzana;->zzc:I

    if-ne v14, v2, :cond_0

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzana;->zza:I

    if-ne v2, v4, :cond_28

    new-instance v2, Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    array-length v10, v9

    invoke-direct {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    const/16 v11, 0x1f

    if-ne v15, v11, :cond_3

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    goto/16 :goto_1

    :cond_3
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported sampling rate index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :pswitch_1
    const/16 v6, 0x2580

    goto/16 :goto_1

    :pswitch_2
    const/16 v6, 0x3200

    goto/16 :goto_1

    :pswitch_3
    const/16 v6, 0x3840

    goto :goto_1

    :pswitch_4
    const/16 v6, 0x42b3

    goto :goto_1

    :pswitch_5
    const/16 v6, 0x4b00

    goto :goto_1

    :pswitch_6
    const/16 v6, 0x4e20

    goto :goto_1

    :pswitch_7
    const/16 v6, 0x6400

    goto :goto_1

    :pswitch_8
    const/16 v6, 0x7080

    goto :goto_1

    :pswitch_9
    const v6, 0x8566

    goto :goto_1

    :pswitch_a
    const v6, 0x9600

    goto :goto_1

    :pswitch_b
    const v6, 0x9c40

    goto :goto_1

    :pswitch_c
    const v6, 0xc800

    goto :goto_1

    :pswitch_d
    const v6, 0xe100

    goto :goto_1

    :pswitch_e
    const/16 v6, 0x1cb6

    goto :goto_1

    :pswitch_f
    const/16 v6, 0x1f40

    goto :goto_1

    :pswitch_10
    const/16 v6, 0x2b11

    goto :goto_1

    :pswitch_11
    const/16 v6, 0x2ee0

    goto :goto_1

    :pswitch_12
    const/16 v6, 0x3e80

    goto :goto_1

    :pswitch_13
    const/16 v6, 0x5622

    goto :goto_1

    :pswitch_14
    const/16 v6, 0x5dc0

    goto :goto_1

    :pswitch_15
    const/16 v6, 0x7d00

    goto :goto_1

    :pswitch_16
    const v6, 0xac44

    goto :goto_1

    :pswitch_17
    const v6, 0xbb80

    goto :goto_1

    :pswitch_18
    const v6, 0xfa00

    goto :goto_1

    :pswitch_19
    const v6, 0x15888

    goto :goto_1

    :pswitch_1a
    const v6, 0x17700

    :goto_1
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    const/4 v15, 0x4

    const-string v8, "Unsupported coreSbrFrameLengthIndex "

    if-eqz v11, :cond_7

    if-eq v11, v4, :cond_6

    if-eq v11, v12, :cond_5

    if-eq v11, v7, :cond_5

    if-ne v11, v15, :cond_4

    const/16 v16, 0x1000

    const/16 v17, 0x1000

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_5
    const/16 v16, 0x800

    const/16 v17, 0x800

    goto :goto_2

    :cond_6
    const/16 v16, 0x400

    const/16 v17, 0x400

    goto :goto_2

    :cond_7
    const/16 v16, 0x300

    const/16 v17, 0x300

    :goto_2
    if-eqz v11, :cond_b

    if-eq v11, v4, :cond_b

    if-eq v11, v12, :cond_a

    if-eq v11, v7, :cond_9

    if-ne v11, v15, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_9
    const/4 v8, 0x3

    goto :goto_3

    :cond_a
    const/4 v8, 0x2

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-static {v2}, Lg/kj;->ab(Lcom/google/android/gms/internal/ads/zzec;)V

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_4
    add-int/lit8 v5, v11, 0x1

    const/16 v20, 0x1

    const/16 v4, 0x10

    if-ge v14, v5, :cond_e

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    invoke-static {v2, v10, v3, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v18, v4, v18

    if-eqz v5, :cond_c

    if-ne v5, v12, :cond_d

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lg/kj;->ab(Lcom/google/android/gms/internal/ads/zzec;)V

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    invoke-static {v2, v15, v3, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/4 v11, 0x0

    :goto_5
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    if-ge v11, v5, :cond_20

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v10, 0x1

    if-eq v14, v10, :cond_12

    if-eq v14, v7, :cond_10

    :cond_f
    :goto_6
    const/4 v15, 0x5

    goto/16 :goto_9

    :cond_10
    invoke-static {v2, v15, v3, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    invoke-static {v2, v15, v3, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x0

    invoke-static {v2, v3, v4, v14}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    :cond_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    if-lez v10, :cond_f

    mul-int/lit8 v10, v10, 0x8

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_6

    :cond_12
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    if-eqz v10, :cond_13

    const/16 v14, 0xd

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_13
    if-eqz v10, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :cond_14
    if-lez v8, :cond_15

    invoke-static {v2}, Lg/kj;->q(Lcom/google/android/gms/internal/ads/zzec;)V

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    move v14, v8

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_7
    if-lez v10, :cond_19

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v24

    const/4 v15, 0x5

    if-eqz v24, :cond_16

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_16
    if-eq v10, v12, :cond_17

    if-ne v10, v7, :cond_18

    :cond_17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_18
    if-ne v3, v12, :cond_1a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    goto :goto_8

    :cond_19
    const/4 v15, 0x5

    :cond_1a
    :goto_8
    add-int/lit8 v3, v18, -0x1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_1b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_1c
    if-nez v14, :cond_1f

    if-nez v4, :cond_1f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    goto :goto_9

    :cond_1d
    const/4 v15, 0x5

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v14, 0xd

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_1e
    if-lez v8, :cond_1f

    invoke-static {v2}, Lg/kj;->q(Lcom/google/android/gms/internal/ads/zzec;)V

    :cond_1f
    :goto_9
    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/4 v10, 0x5

    const/4 v15, 0x4

    const/16 v20, 0x1

    goto/16 :goto_5

    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-static {v2, v12, v3, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v5

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_a
    if-ge v7, v5, :cond_24

    const/16 v10, 0x10

    invoke-static {v2, v3, v4, v10}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v11

    invoke-static {v2, v3, v4, v10}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v12

    const/4 v14, 0x7

    if-ne v11, v14, :cond_22

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    new-array v11, v8, [B

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v8, :cond_21

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_21
    move-object v8, v11

    goto :goto_c

    :cond_22
    mul-int/lit8 v12, v12, 0x8

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :goto_c
    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x8

    const/16 v20, 0x1

    goto :goto_a

    :cond_23
    const/4 v8, 0x0

    :cond_24
    sparse-switch v6, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported sampling rate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :sswitch_0
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    goto :goto_d

    :sswitch_1
    const-wide/high16 v21, 0x3ff8000000000000L    # 1.5

    goto :goto_d

    :sswitch_2
    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    :goto_d
    :sswitch_3
    int-to-double v2, v6

    move/from16 v4, v17

    int-to-double v4, v4

    new-instance v6, Lcom/google/android/gms/internal/ads/zzanb;

    mul-double v4, v4, v21

    mul-double v2, v2, v21

    double-to-int v2, v2

    double-to-int v3, v4

    invoke-direct {v6, v9, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(I[BII)V

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->q:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzanb;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->u:I

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->r:J

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzana;->zzb:J

    cmp-long v7, v2, v4

    if-eqz v7, :cond_27

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamz;->r:J

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    const-string v3, "mhm1"

    const/4 v4, -0x1

    if-eq v2, v4, :cond_25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v4, v19

    const-string v2, ".%02X"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_25
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzanb;->zzd:[B

    if-eqz v2, :cond_26

    array-length v4, v2

    if-lez v4, :cond_26

    sget-object v4, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v11

    goto :goto_e

    :cond_26
    const/4 v11, 0x0

    :goto_e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamz;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v4, "audio/mhm1"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamz;->q:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    :cond_27
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzamz;->i:Z

    goto :goto_13

    :cond_28
    if-ne v2, v9, :cond_2b

    new-instance v2, Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    array-length v4, v3

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v14, 0xd

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    goto :goto_f

    :cond_29
    const/4 v5, 0x0

    :goto_f
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamz;->k:I

    :cond_2a
    :goto_10
    const/4 v10, 0x1

    goto :goto_13

    :cond_2b
    if-ne v2, v12, :cond_2a

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->i:Z

    if-eqz v2, :cond_2c

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->p:Z

    const/4 v5, 0x1

    goto :goto_11

    :cond_2c
    const/4 v5, 0x0

    :goto_11
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->u:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamz;->k:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamz;->q:I

    int-to-double v3, v3

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzamz;->n:Z

    if-eqz v8, :cond_2d

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->n:Z

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->a:D

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    goto :goto_12

    :cond_2d
    int-to-double v8, v2

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double v8, v8, v10

    div-double/2addr v8, v3

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    add-double/2addr v2, v8

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    :goto_12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    move-wide v3, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->i:Z

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->k:I

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    goto :goto_10

    :goto_13
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    goto/16 :goto_0

    :cond_2e
    const/4 v14, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzamz;->v(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Z)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamz;->o:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzk([BI)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zzb()I

    const/16 v4, 0x8

    invoke-static {v5, v7, v4, v4}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v7

    iput v7, v13, Lcom/google/android/gms/internal/ads/zzana;->zza:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3b

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v4, 0x20

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x3f

    if-gt v7, v8, :cond_2f

    const/4 v7, 0x1

    goto :goto_14

    :cond_2f
    const/4 v7, 0x0

    :goto_14
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    const-wide/16 v7, 0x3

    const-wide/16 v14, 0xff

    move-object/from16 v16, v10

    invoke-static {v7, v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzgcm;->zza(JJ)J

    move-result-wide v9

    move-wide/from16 v17, v7

    const-wide v7, 0x100000000L

    invoke-static {v9, v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzgcm;->zza(JJ)J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v7

    const-wide/16 v8, -0x1

    if-ge v7, v12, :cond_30

    :goto_15
    move-wide v14, v8

    goto :goto_17

    :cond_30
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzec;->zze(I)J

    move-result-wide v21

    cmp-long v7, v21, v17

    if-nez v7, :cond_34

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v7

    const/16 v10, 0x8

    if-ge v7, v10, :cond_31

    goto :goto_15

    :cond_31
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzec;->zze(I)J

    move-result-wide v21

    add-long v17, v21, v17

    cmp-long v7, v21, v14

    if-nez v7, :cond_33

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v7

    if-ge v7, v4, :cond_32

    goto :goto_15

    :cond_32
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzec;->zze(I)J

    move-result-wide v14

    add-long v21, v14, v17

    goto :goto_16

    :cond_33
    move-wide/from16 v21, v17

    :cond_34
    :goto_16
    move-wide/from16 v14, v21

    :goto_17
    iput-wide v14, v13, Lcom/google/android/gms/internal/ads/zzana;->zzb:J

    cmp-long v4, v14, v8

    if-nez v4, :cond_35

    goto/16 :goto_19

    :cond_35
    const-wide/16 v7, 0x10

    cmp-long v4, v14, v7

    if-gtz v4, :cond_3a

    const-wide/16 v7, 0x0

    cmp-long v4, v14, v7

    if-nez v4, :cond_39

    iget v4, v13, Lcom/google/android/gms/internal/ads/zzana;->zza:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_38

    if-eq v4, v12, :cond_37

    const/16 v11, 0x11

    if-eq v4, v11, :cond_36

    goto :goto_18

    :cond_36
    const-string v1, "AudioTruncation packet with invalid packet label 0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_37
    const/4 v2, 0x0

    const-string v1, "Mpegh3daFrame packet with invalid packet label 0"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_38
    const/4 v2, 0x0

    const-string v1, "Mpegh3daConfig packet with invalid packet label 0"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_39
    :goto_18
    const/16 v4, 0xb

    invoke-static {v5, v4, v6, v6}, Lg/kj;->o(Lcom/google/android/gms/internal/ads/zzec;III)I

    move-result v4

    iput v4, v13, Lcom/google/android/gms/internal/ads/zzana;->zzc:I

    const/4 v8, -0x1

    if-eq v4, v8, :cond_3b

    const/4 v14, 0x0

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->d:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzana;->zzc:I

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzamz;->m:Z

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    goto/16 :goto_0

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contains sub-stream with an invalid packet label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_3b
    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    :cond_3c
    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->m:Z

    goto/16 :goto_0

    :cond_3d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->b:I

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_0

    :cond_3e
    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_40

    :cond_3f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->f:I

    const/16 v23, 0x8

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->f:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamz;->f:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const v3, 0xc001a5

    if-ne v2, v3, :cond_3f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v14, 0x0

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamz;->f:I

    :cond_40
    const/4 v10, 0x1

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    goto/16 :goto_0

    :cond_41
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->j:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->b:I

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->p:Z

    if-nez p3, :cond_1

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->m:Z

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->n:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamz;->n:Z

    long-to-double p1, p1

    if-eqz p3, :cond_2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->a:D

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->h:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->c:I

    const v1, -0x7fffffff

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->q:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->u:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->k:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamz;->r:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->p:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->t:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamz;->a:D

    return-void
.end method

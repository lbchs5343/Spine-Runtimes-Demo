.class public final Lcom/google/android/gms/internal/ads/zzami;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# static fields
.field public static final a:[B


# instance fields
.field public b:Lcom/google/android/gms/internal/ads/zzadx;

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/lang/String;

.field public g:Z

.field public final h:I

.field public final i:Z

.field public j:Lcom/google/android/gms/internal/ads/zzadx;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public final q:Lcom/google/android/gms/internal/ads/zzec;

.field public r:I

.field public s:Z

.field public t:J

.field public final u:Lcom/google/android/gms/internal/ads/zzed;

.field public v:Lcom/google/android/gms/internal/ads/zzadx;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzami;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzec;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->q:Lcom/google/android/gms/internal/ads/zzec;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzami;->a:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->u:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzami;->w:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzami;->i:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzami;->f:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzami;->h:I

    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->v:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    if-lez v2, :cond_1f

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    const/16 v3, 0x100

    const/16 v4, 0xd

    const/4 v5, 0x7

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzami;->u:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzami;->q:Lcom/google/android/gms/internal/ads/zzec;

    const/4 v13, 0x1

    if-eqz v2, :cond_b

    if-eq v2, v13, :cond_8

    const/16 v9, 0xa

    if-eq v2, v11, :cond_7

    if-eq v2, v8, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzami;->j:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    if-ne v4, v2, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzami;->j:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v2

    move-wide v15, v4

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzami;->k:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzami;->g:Z

    const/4 v3, 0x5

    if-eq v13, v2, :cond_3

    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    const/4 v2, 0x7

    :goto_2
    iget-object v6, v12, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    sub-int v15, v2, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    invoke-virtual {v1, v6, v15, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    if-ne v6, v2, :cond_0

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzami;->s:Z

    if-nez v2, :cond_5

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    add-int/2addr v2, v13

    if-eq v2, v11, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Detected audio object type: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AdtsReader"

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    shr-int/lit8 v6, v3, 0x1

    and-int/2addr v6, v5

    or-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    shl-int/2addr v3, v5

    shl-int/2addr v2, v8

    and-int/lit16 v3, v3, 0x80

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v3, v11, [B

    aput-byte v6, v3, v10

    aput-byte v2, v3, v13

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzabo;->zza([B)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzami;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->f:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzami;->h:I

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    int-to-long v5, v3

    const-wide/32 v8, 0x3d090000

    div-long/2addr v8, v5

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzami;->w:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzami;->v:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzami;->s:Z

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :goto_3
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzami;->g:Z

    if-eqz v4, :cond_6

    add-int/lit8 v3, v2, -0x9

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->v:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->w:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->j:Lcom/google/android/gms/internal/ads/zzadx;

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->k:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    rsub-int/lit8 v4, v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    if-ne v2, v9, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->b:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v2, v6, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    const/4 v2, 0x6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->b:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzl()I

    move-result v3

    add-int/2addr v3, v9

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzami;->j:Lcom/google/android/gms/internal/ads/zzadx;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzami;->k:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    aget-byte v4, v4, v5

    aput-byte v4, v2, v10

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    if-eq v4, v9, :cond_9

    if-eq v2, v4, :cond_9

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    if-nez v3, :cond_a

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzami;->n:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzami;->e:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    :cond_a
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v14

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v15

    :goto_4
    if-ge v14, v15, :cond_1e

    add-int/lit8 v3, v14, 0x1

    const/16 v17, 0x3

    aget-byte v8, v2, v14

    and-int/lit16 v5, v8, 0xff

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    const/16 v11, 0x200

    if-ne v4, v11, :cond_c

    int-to-byte v4, v5

    and-int/lit16 v4, v4, 0xff

    const v21, 0xff00

    or-int v4, v4, v21

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzami;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    if-nez v4, :cond_f

    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    if-ge v9, v13, :cond_d

    :cond_c
    const/4 v4, 0x1

    const/4 v11, -0x1

    goto/16 :goto_a

    :cond_d
    invoke-virtual {v1, v11, v10, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzami;->e:I

    const/4 v7, -0x1

    if-eq v11, v7, :cond_e

    if-ne v9, v11, :cond_c

    :cond_e
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    if-eq v11, v7, :cond_11

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v11

    if-ge v11, v13, :cond_10

    :cond_f
    const/16 v22, 0x1

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v1, v7, v10, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    const/4 v7, 0x2

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    const/4 v7, 0x4

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    const/16 v22, 0x1

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzami;->d:I

    if-ne v11, v13, :cond_c

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_5

    :cond_11
    const/4 v7, 0x4

    const/16 v22, 0x1

    :goto_5
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v13

    if-ge v13, v7, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v1, v11, v10, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    const/16 v11, 0xe

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    const/16 v11, 0xd

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v13

    const/4 v7, 0x7

    if-lt v13, v7, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v7

    add-int/2addr v4, v13

    if-ge v4, v7, :cond_16

    aget-byte v13, v18, v4

    const/4 v11, -0x1

    if-ne v13, v11, :cond_14

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v7, :cond_16

    aget-byte v4, v18, v4

    and-int/lit16 v7, v4, 0xff

    or-int v7, v7, v21

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzami;->zzf(I)Z

    move-result v7

    if-eqz v7, :cond_13

    and-int/lit8 v4, v4, 0x8

    shr-int/lit8 v4, v4, 0x3

    if-ne v4, v9, :cond_13

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v4, 0x1

    goto :goto_a

    :cond_14
    const/16 v9, 0x49

    if-ne v13, v9, :cond_13

    add-int/lit8 v9, v4, 0x1

    if-eq v9, v7, :cond_16

    aget-byte v9, v18, v9

    const/16 v13, 0x44

    if-ne v9, v13, :cond_13

    add-int/lit8 v4, v4, 0x2

    if-eq v4, v7, :cond_16

    aget-byte v4, v18, v4

    const/16 v7, 0x33

    if-ne v4, v7, :cond_13

    goto :goto_7

    :cond_15
    const/4 v11, -0x1

    goto :goto_6

    :cond_16
    :goto_7
    and-int/lit8 v2, v8, 0x8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzami;->n:I

    and-int/lit8 v2, v8, 0x1

    xor-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v4, v2, :cond_17

    const/4 v2, 0x0

    goto :goto_8

    :cond_17
    const/4 v2, 0x1

    :goto_8
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzami;->g:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    if-nez v2, :cond_18

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    goto :goto_9

    :cond_18
    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    :goto_9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_0

    :goto_a
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    or-int/2addr v5, v7

    const/16 v8, 0x149

    if-eq v5, v8, :cond_1d

    const/16 v8, 0x1ff

    if-eq v5, v8, :cond_1c

    const/16 v8, 0x344

    if-eq v5, v8, :cond_1b

    const/16 v8, 0x433

    if-eq v5, v8, :cond_1a

    const/16 v5, 0x100

    if-eq v7, v5, :cond_19

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    const/16 v3, 0x100

    const/16 v4, 0xd

    const/4 v5, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    :goto_b
    const/4 v9, -0x1

    const/4 v11, 0x2

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_19
    const/4 v7, 0x2

    const/4 v8, 0x3

    goto :goto_d

    :cond_1a
    const/4 v7, 0x2

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    const/4 v8, 0x3

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzami;->m:I

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x100

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x400

    :goto_c
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    goto :goto_d

    :cond_1c
    const/16 v5, 0x100

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x200

    goto :goto_c

    :cond_1d
    const/16 v5, 0x100

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x300

    goto :goto_c

    :goto_d
    move v14, v3

    const/16 v3, 0x100

    const/16 v4, 0xd

    const/4 v5, 0x7

    const/4 v7, 0x4

    goto :goto_b

    :cond_1e
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_0

    :cond_1f
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->v:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->j:Lcom/google/android/gms/internal/ads/zzadx;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzami;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzami;->b:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string p2, "application/id3"

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzami;->b:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzami;->t:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzami;->o:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->r:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzami;->c:I

    return-void
.end method

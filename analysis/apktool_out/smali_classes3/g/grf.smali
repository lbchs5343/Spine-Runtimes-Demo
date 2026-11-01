.class public final Lg/grf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzacs;

.field public b:I

.field public c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzed;

.field public e:J

.field public f:Lg/eel;

.field public g:Lcom/google/android/gms/internal/ads/zzacu;

.field public h:Lcom/google/android/gms/internal/ads/zzaiy;

.field public i:I

.field public j:Lcom/google/android/gms/internal/ads/zzagz;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lg/grf;->d:Lcom/google/android/gms/internal/ads/zzed;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg/grf;->e:J

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/ads/zzacs;)I
    .locals 4

    iget-object v0, p0, Lg/grf;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result p1

    return p1
.end method

.method public final l()V
    .locals 6

    iget-object v0, p0, Lg/grf;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    iget-object v0, p0, Lg/grf;->g:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadp;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v0, 0x6

    iput v0, p0, Lg/grf;->i:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lg/grf;->i:I

    const/4 v4, 0x4

    iget-object v5, v0, Lg/grf;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_25

    if-eq v3, v6, :cond_24

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    if-eq v3, v9, :cond_a

    const/4 v7, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v7, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v13

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Lg/grf;->f:Lg/eel;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lg/grf;->a:Lcom/google/android/gms/internal/ads/zzacs;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lg/grf;->a:Lcom/google/android/gms/internal/ads/zzacs;

    new-instance v3, Lg/eel;

    iget-wide v4, v0, Lg/grf;->e:J

    invoke-direct {v3, v1, v4, v5}, Lg/eel;-><init>(Lcom/google/android/gms/internal/ads/zzacs;J)V

    iput-object v3, v0, Lg/grf;->f:Lg/eel;

    :cond_3
    iget-object v1, v0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lg/grf;->f:Lg/eel;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iget-wide v5, v0, Lg/grf;->e:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    :cond_4
    return v1

    :cond_5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v8

    iget-wide v13, v0, Lg/grf;->e:J

    cmp-long v3, v8, v13

    if-nez v3, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v10, v6, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzm([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lg/grf;->l()V

    return v10

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iget-object v2, v0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    if-nez v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiy;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Lcom/google/android/gms/internal/ads/zzakg;I)V

    iput-object v2, v0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    :cond_7
    new-instance v2, Lg/eel;

    iget-wide v8, v0, Lg/grf;->e:J

    invoke-direct {v2, v1, v8, v9}, Lg/eel;-><init>(Lcom/google/android/gms/internal/ads/zzacs;J)V

    iput-object v2, v0, Lg/grf;->f:Lg/eel;

    iget-object v1, v0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafk;

    iget-wide v8, v0, Lg/grf;->e:J

    iget-object v3, v0, Lg/grf;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v8, v9, v3}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(JLcom/google/android/gms/internal/ads/zzacu;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zze(Lcom/google/android/gms/internal/ads/zzacu;)V

    iget-object v1, v0, Lg/grf;->j:Lcom/google/android/gms/internal/ads/zzagz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/grf;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbd;

    new-array v5, v6, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v1, v5, v10

    invoke-direct {v4, v11, v12, v5}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput v7, v0, Lg/grf;->i:I

    return v10

    :cond_8
    invoke-virtual {v0}, Lg/grf;->l()V

    return v10

    :cond_9
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v6

    :cond_a
    iget v2, v0, Lg/grf;->b:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_22

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    iget v3, v0, Lg/grf;->c:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget v5, v0, Lg/grf;->c:I

    invoke-interface {v1, v3, v10, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget-object v3, v0, Lg/grf;->j:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v3, :cond_23

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v3

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v14

    const/4 v1, 0x0

    cmp-long v3, v14, v7

    if-nez v3, :cond_b

    goto/16 :goto_b

    :cond_b
    const-string v3, "x:xmpmeta"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v16, v7

    :try_start_1
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    move-wide v7, v11

    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v11, "rdf:Description"

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "Container:Directory"

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v2, "Container"

    const-string v11, "Item"

    invoke-static {v5, v2, v11}, Lg/acr;->bg(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    goto/16 :goto_5

    :cond_c
    const-string v11, "GContainer:Directory"

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v2, "GContainer"

    const-string v11, "GContainerItem"

    invoke-static {v5, v2, v11}, Lg/acr;->bg(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    goto :goto_5

    :cond_d
    sget-object v2, Lg/acr;->h:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_14

    aget-object v8, v2, v7

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_14

    sget-object v2, Lg/acr;->q:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_e

    aget-object v8, v2, v7

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v2, v7, v16

    if-nez v2, :cond_10

    :cond_e
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_10
    :goto_3
    sget-object v2, Lg/acr;->f:[Ljava/lang/String;

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_12

    aget-object v12, v2, v11

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    new-instance v25, Lcom/google/android/gms/internal/ads/zzafg;

    const-string v26, "image/jpeg"

    const-string v27, "Primary"

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    invoke-direct/range {v25 .. v31}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v2, v25

    new-instance v20, Lcom/google/android/gms/internal/ads/zzafg;

    const-string v21, "video/mp4"

    const-string v22, "MotionPhoto"

    const-wide/16 v25, 0x0

    invoke-direct/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v11, v20

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    goto :goto_5

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    :cond_13
    :goto_5
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    :goto_6
    move-object v3, v1

    goto :goto_7

    :cond_15
    new-instance v3, Lg/fmk;

    invoke-direct {v3, v7, v8, v2}, Lg/fmk;-><init>(JLcom/google/android/gms/internal/ads/zzfzo;)V

    goto :goto_7

    :cond_16
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_18
    const-string v2, "Couldn\'t find xmp metadata"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-wide/from16 v16, v7

    :catch_1
    const-string v2, "MotionPhotoXmpParser"

    const-string v3, "Ignoring unexpected XMP metadata"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    if-nez v3, :cond_19

    goto/16 :goto_b

    :cond_19
    iget-object v2, v3, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v9, :cond_1a

    goto/16 :goto_b

    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v13

    move-wide/from16 v19, v16

    move-wide/from16 v21, v19

    move-wide/from16 v25, v21

    move-wide/from16 v27, v25

    const/4 v5, 0x0

    :goto_8
    if-ltz v4, :cond_1f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzafg;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzafg;->zza:Ljava/lang/String;

    const-string v8, "video/mp4"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    if-nez v4, :cond_1b

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzafg;->zzc:J

    sub-long/2addr v14, v6

    const-wide/16 v6, 0x0

    :goto_9
    move-wide/from16 v32, v14

    move-wide v14, v6

    move-wide/from16 v6, v32

    goto :goto_a

    :cond_1b
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzafg;->zzb:J

    sub-long v6, v14, v6

    goto :goto_9

    :goto_a
    if-eqz v5, :cond_1c

    cmp-long v8, v14, v6

    if-eqz v8, :cond_1c

    sub-long v27, v6, v14

    move-wide/from16 v25, v14

    const/4 v5, 0x0

    :cond_1c
    if-nez v4, :cond_1d

    move-wide/from16 v21, v6

    :cond_1d
    if-nez v4, :cond_1e

    move-wide/from16 v19, v14

    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_1f
    cmp-long v2, v25, v16

    if-eqz v2, :cond_21

    cmp-long v2, v27, v16

    if-eqz v2, :cond_21

    cmp-long v2, v19, v16

    if-eqz v2, :cond_21

    cmp-long v2, v21, v16

    if-nez v2, :cond_20

    goto :goto_b

    :cond_20
    iget-wide v1, v3, Lg/fmk;->b:J

    new-instance v18, Lcom/google/android/gms/internal/ads/zzagz;

    move-wide/from16 v23, v1

    invoke-direct/range {v18 .. v28}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(JJJJJ)V

    move-object/from16 v1, v18

    :cond_21
    :goto_b
    iput-object v1, v0, Lg/grf;->j:Lcom/google/android/gms/internal/ads/zzagz;

    if-eqz v1, :cond_23

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzagz;->zzd:J

    iput-wide v1, v0, Lg/grf;->e:J

    goto :goto_c

    :cond_22
    iget v2, v0, Lg/grf;->c:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_23
    :goto_c
    iput v10, v0, Lg/grf;->i:I

    return v10

    :cond_24
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v10, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lg/grf;->c:I

    iput v9, v0, Lg/grf;->i:I

    return v10

    :cond_25
    move-wide/from16 v16, v7

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v10, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    iput v1, v0, Lg/grf;->b:I

    const v2, 0xffda

    if-ne v1, v2, :cond_27

    iget-wide v1, v0, Lg/grf;->e:J

    cmp-long v3, v1, v16

    if-eqz v3, :cond_26

    iput v4, v0, Lg/grf;->i:I

    return v10

    :cond_26
    invoke-virtual {v0}, Lg/grf;->l()V

    return v10

    :cond_27
    const v2, 0xffd0

    if-lt v1, v2, :cond_28

    const v2, 0xffd9

    if-le v1, v2, :cond_29

    :cond_28
    const v2, 0xff01

    if-eq v1, v2, :cond_29

    iput v6, v0, Lg/grf;->i:I

    :cond_29
    return v10
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacr;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;)V
    .locals 0

    iput-object p1, p0, Lg/grf;->g:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lg/grf;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    return-void

    :cond_0
    iget v0, p0, Lg/grf;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/grf;->h:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaiy;->zzf(JJ)V

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lg/grf;->k(Lcom/google/android/gms/internal/ads/zzacs;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lg/grf;->k(Lcom/google/android/gms/internal/ads/zzacs;)I

    move-result v0

    iput v0, p0, Lg/grf;->b:I

    const v1, 0xffe0

    const/4 v3, 0x2

    iget-object v4, p0, Lg/grf;->d:Lcom/google/android/gms/internal/ads/zzed;

    if-ne v0, v1, :cond_1

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzl(IZ)Z

    invoke-virtual {p0, p1}, Lg/grf;->k(Lcom/google/android/gms/internal/ads/zzacs;)I

    move-result v0

    iput v0, p0, Lg/grf;->b:I

    :cond_1
    const v1, 0xffe1

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzl(IZ)Z

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v0

    const-wide/32 v5, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v5

    if-nez p1, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

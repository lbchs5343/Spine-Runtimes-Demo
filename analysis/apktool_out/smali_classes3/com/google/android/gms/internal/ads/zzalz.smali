.class public final Lcom/google/android/gms/internal/ads/zzalz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzed;

.field public final b:Lg/kb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->a:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lg/kb;

    invoke-direct {v0}, Lg/kb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lg/kb;

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p2

    add-int v2, v0, p3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzalz;->a:Lcom/google/android/gms/internal/ads/zzed;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    const-string v7, "WEBVTT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3b

    :goto_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_1
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v7, v4, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const-string v12, "STYLE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    const-string v11, "NOTE"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x3

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    if-eqz v7, :cond_39

    if-ne v7, v10, :cond_5

    :goto_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_5
    if-ne v7, v11, :cond_38

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_37

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzalz;->b:Lg/kb;

    iget-object v8, v7, Lg/kb;->c:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v7, v7, Lg/kb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v12

    :goto_4
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-static {v8}, Lg/kb;->f(Lcom/google/android/gms/internal/ads/zzed;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v13

    const-string v14, "{"

    const/4 v15, 0x5

    const-string v6, ""

    if-ge v13, v15, :cond_6

    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_6
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v15, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "::cue"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v13

    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    move-object v9, v6

    goto :goto_a

    :cond_9
    const-string v13, "("

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v15

    const/16 v16, 0x0

    :goto_7
    if-ge v13, v15, :cond_b

    if-nez v16, :cond_b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v16

    add-int/lit8 v17, v13, 0x1

    aget-byte v13, v16, v13

    int-to-char v13, v13

    const/16 v9, 0x29

    if-ne v13, v9, :cond_a

    const/16 v16, 0x1

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    :goto_8
    move/from16 v13, v17

    goto :goto_7

    :cond_b
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v9

    sub-int/2addr v13, v9

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v13, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-string v15, ")"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_6

    :cond_d
    :goto_a
    if-eqz v9, :cond_34

    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_19

    :cond_e
    new-instance v13, Lcom/google/android/gms/internal/ads/zzalq;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzalq;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_f
    :goto_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    const/16 v14, 0x5b

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v4, :cond_12

    sget-object v15, Lg/kb;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzalq;->zzv(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v9, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_12
    sget v11, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string v11, "\\."

    invoke-virtual {v9, v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    aget-object v11, v9, v5

    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v4, :cond_13

    invoke-virtual {v11, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzalq;->zzu(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzalq;->zzt(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzalq;->zzu(Ljava/lang/String;)V

    :goto_c
    array-length v11, v9

    if-le v11, v10, :cond_f

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzalq;->zzs([Ljava/lang/String;)V

    goto :goto_b

    :goto_d
    const-string v14, "}"

    if-nez v9, :cond_32

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v9

    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    :cond_14
    const/4 v15, 0x1

    goto :goto_e

    :cond_15
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_16

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v8}, Lg/kb;->f(Lcom/google/android/gms/internal/ads/zzed;)V

    invoke-static {v8, v7}, Lg/kb;->g(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    :cond_16
    :goto_f
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x2

    goto/16 :goto_18

    :cond_17
    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_f

    :cond_18
    invoke-static {v8}, Lg/kb;->f(Lcom/google/android/gms/internal/ads/zzed;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_10
    const-string v10, ";"

    if-nez v5, :cond_1c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    move/from16 v18, v5

    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    const/4 v1, 0x0

    goto :goto_12

    :cond_19
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1b

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    move/from16 v5, v18

    goto :goto_10

    :cond_1b
    :goto_11
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v5, 0x1

    move-object/from16 v1, p0

    goto :goto_10

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    if-eqz v1, :cond_16

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    invoke-static {v8, v7}, Lg/kb;->e(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_13
    const-string v4, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzde;->zza(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzk(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_f

    :cond_1f
    const-string v4, "background-color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzde;->zza(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzh(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_20
    const-string v4, "ruby-position"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "over"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzp(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_21
    const-string v4, "under"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzp(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_22
    const-string v4, "text-combine-upright"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "digits"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    const/4 v1, 0x1

    goto :goto_14

    :cond_24
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzj(Z)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_25
    const-string v4, "text-decoration"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "underline"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzq(Z)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_26
    const-string v4, "font-family"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_27
    const-string v4, "font-weight"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "bold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzi(Z)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_28
    const/4 v4, 0x1

    const-string v5, "font-style"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "italic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzo(Z)Lcom/google/android/gms/internal/ads/zzalq;

    goto/16 :goto_f

    :cond_29
    const-string v4, "font-size"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lg/kb;->a:Ljava/util/regex/Pattern;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid font-size: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WebvttCssParser"

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v9, 0x25

    if-eq v1, v9, :cond_2d

    const/16 v9, 0xca8

    if-eq v1, v9, :cond_2c

    const/16 v9, 0xe08

    if-eq v1, v9, :cond_2b

    goto :goto_15

    :cond_2b
    const-string v1, "px"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_16

    :cond_2c
    const-string v1, "em"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_16

    :cond_2d
    const-string v1, "%"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x2

    goto :goto_16

    :cond_2e
    :goto_15
    const/4 v1, -0x1

    :goto_16
    if-eqz v1, :cond_31

    const/4 v5, 0x1

    if-eq v1, v5, :cond_30

    const/4 v9, 0x2

    if-ne v1, v9, :cond_2f

    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzn(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_17

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_30
    const/4 v1, 0x3

    const/4 v9, 0x2

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzalq;->zzn(I)Lcom/google/android/gms/internal/ads/zzalq;

    goto :goto_17

    :cond_31
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x2

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzalq;->zzn(I)Lcom/google/android/gms/internal/ads/zzalq;

    :goto_17
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzm(F)Lcom/google/android/gms/internal/ads/zzalq;

    :goto_18
    move-object/from16 v1, p0

    move v9, v15

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_d

    :cond_32
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x2

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    move-object/from16 v1, p0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_34
    :goto_19
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_35
    :goto_1a
    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_36
    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzaly;->zzc(Lcom/google/android/gms/internal/ads/zzed;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_39
    new-instance v0, Lg/dzh;

    invoke-direct {v0, v2}, Lg/dzh;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v1, p4

    move-object/from16 v5, p5

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzakd;Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V

    return-void

    :cond_3a
    move-object/from16 v1, p4

    move-object/from16 v5, p5

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1b

    :cond_3b
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected WEBVTT. Got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

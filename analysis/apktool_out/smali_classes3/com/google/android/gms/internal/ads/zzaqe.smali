.class public Lcom/google/android/gms/internal/ads/zzaqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapi;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzaqd;

.field public final b:Lcom/google/android/gms/internal/ads/zzaqg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqd;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqg;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqg;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqe;->a:Lcom/google/android/gms/internal/ads/zzaqd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqe;->b:Lcom/google/android/gms/internal/ads/zzaqg;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzapp;)Lcom/google/android/gms/internal/ads/zzapl;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzapy;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "]"

    const-string v4, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_0
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzd()Lcom/google/android/gms/internal/ads/zzaoy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/16 v16, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v16, 0x1

    :goto_1
    const/16 v24, 0x2

    const/16 v25, 0x0

    goto/16 :goto_14

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzb:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v13, "If-None-Match"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzd:J

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    const-string v14, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    new-instance v15, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x1

    :try_start_1
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v14, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v8, "GMT"

    invoke-static {v8}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    :goto_2
    move-object v0, v11

    :goto_3
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaqe;->a:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(Lcom/google/android/gms/internal/ads/zzapp;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaqn;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaqn;->zzb()I

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaqn;->zzd()Ljava/util/List;

    move-result-object v23

    const/16 v11, 0x130

    if-ne v0, v11, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v21, v11, v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzd()Lcom/google/android/gms/internal/ads/zzaoy;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v17, Lcom/google/android/gms/internal/ads/zzapl;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v18, 0x130

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(I[BZJLjava/util/List;)V

    goto/16 :goto_8

    :catch_2
    move-exception v0

    const/16 v24, 0x2

    :goto_4
    const/16 v25, 0x0

    goto/16 :goto_12

    :cond_3
    move-object/from16 v11, v23

    new-instance v12, Ljava/util/TreeSet;

    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaph;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaph;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzh:Ljava/util/List;

    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzh:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaph;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaph;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Lcom/google/android/gms/internal/ads/zzaph;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v10, v14}, Lcom/google/android/gms/internal/ads/zzaph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    new-instance v24, Lcom/google/android/gms/internal/ads/zzapl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:[B

    const/16 v27, 0x1

    const/16 v25, 0x130

    move-object/from16 v26, v0

    move-object/from16 v30, v13

    move-wide/from16 v28, v21

    invoke-direct/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(I[BZJLjava/util/List;)V

    move-object/from16 v17, v24

    :goto_8
    return-object v17

    :cond_9
    move-object/from16 v11, v23

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaqn;->zzc()Ljava/io/InputStream;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaqn;->zza()I

    move-result v12

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaqe;->b:Lcom/google/android/gms/internal/ads/zzaqg;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {v14, v13, v12}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>(Lcom/google/android/gms/internal/ads/zzaqg;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v12, 0x400

    :try_start_3
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(I)[B

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_9
    :try_start_4
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v24, 0x2

    const/4 v7, -0x1

    if-eq v15, v7, :cond_a

    :try_start_5
    invoke-virtual {v14, v12, v9, v15}, Lcom/google/android/gms/internal/ads/zzaqt;->write([BII)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_a
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    :try_start_7
    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/ads/zzaqb;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzaqg;->zza([B)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqt;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    const/16 v24, 0x2

    goto :goto_b

    :catchall_2
    move-exception v0

    const/16 v24, 0x2

    const/4 v12, 0x0

    :goto_b
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_c

    :catch_5
    :try_start_9
    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzaqb;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzaqg;->zza([B)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqt;->close()V

    throw v0

    :cond_b
    const/16 v24, 0x2

    new-array v7, v9, [B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_d
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v5

    sget-boolean v10, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    if-nez v10, :cond_d

    const-wide/16 v14, 0xbb8

    cmp-long v10, v12, v14

    if-lez v10, :cond_c

    goto :goto_e

    :cond_c
    const/16 v25, 0x0

    goto :goto_10

    :cond_d
    :goto_e
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    if-eqz v7, :cond_e

    array-length v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v19, v7

    const/16 v25, 0x0

    goto :goto_11

    :cond_e
    const-string v13, "null"

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzy()Lcom/google/android/gms/internal/ads/zzapd;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzapd;->zza()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    const/16 v25, 0x0

    const/4 v9, 0x5

    :try_start_b
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v25

    aput-object v12, v9, v16

    aput-object v13, v9, v24

    const/4 v12, 0x3

    aput-object v14, v9, v12

    const/4 v12, 0x4

    aput-object v15, v9, v12

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    const/16 v9, 0xc8

    if-lt v0, v9, :cond_f

    const/16 v9, 0x12b

    if-gt v0, v9, :cond_f

    new-instance v17, Lcom/google/android/gms/internal/ads/zzapl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    sub-long v21, v9, v5

    const/16 v20, 0x0

    move/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v23, v11

    :try_start_c
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(I[BZJLjava/util/List;)V

    return-object v17

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_11

    :cond_f
    move-object/from16 v19, v7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :goto_11
    move-object v10, v8

    goto :goto_15

    :goto_12
    move-object v10, v8

    :goto_13
    const/16 v19, 0x0

    goto :goto_15

    :goto_14
    const/4 v10, 0x0

    goto :goto_13

    :goto_15
    instance-of v7, v0, Ljava/net/SocketTimeoutException;

    const/16 v8, 0xe

    if-eqz v7, :cond_10

    new-instance v0, Lg/gtb;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapx;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzapx;-><init>()V

    const-string v9, "socket"

    invoke-direct {v0, v9, v8, v7}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_17

    :cond_10
    instance-of v7, v0, Ljava/net/MalformedURLException;

    if-nez v7, :cond_16

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqn;->zzb()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzk()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v25

    aput-object v7, v9, v16

    const-string v0, "Unexpected response code %d for %s"

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v19, :cond_14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqn;->zzd()Ljava/util/List;

    move-result-object v23

    new-instance v17, Lcom/google/android/gms/internal/ads/zzapl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v21, v9, v5

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(I[BZJLjava/util/List;)V

    move-object/from16 v7, v17

    move/from16 v0, v18

    const/16 v9, 0x191

    if-eq v0, v9, :cond_13

    const/16 v9, 0x193

    if-ne v0, v9, :cond_11

    goto :goto_16

    :cond_11
    const/16 v2, 0x190

    if-lt v0, v2, :cond_12

    const/16 v2, 0x1f3

    if-gt v0, v2, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapc;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzapc;-><init>(Lcom/google/android/gms/internal/ads/zzapl;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapw;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(Lcom/google/android/gms/internal/ads/zzapl;)V

    throw v0

    :cond_13
    :goto_16
    new-instance v0, Lg/gtb;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaox;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/zzaox;-><init>(Lcom/google/android/gms/internal/ads/zzapl;)V

    const-string v7, "auth"

    invoke-direct {v0, v7, v8, v9}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_17

    :cond_14
    new-instance v0, Lg/gtb;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzapk;-><init>()V

    const-string v9, "network"

    invoke-direct {v0, v9, v8, v7}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_17
    iget-object v7, v0, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzy()Lcom/google/android/gms/internal/ads/zzapd;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzb()I

    move-result v9

    :try_start_d
    iget-object v0, v0, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapy;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzapd;->zzc(Lcom/google/android/gms/internal/ads/zzapy;)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzapy; {:try_start_d .. :try_end_d} :catch_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-retry [timeout="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-timeout-giveup [timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.class final Lms/bz/bd/c/Pgl/h;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    sget-object p1, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    invoke-static {p1}, Lms/bz/bd/c/Pgl/o0;->g(Landroid/content/Context;)Lms/bz/bd/c/Pgl/o0;

    move-result-object p1

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/h1;->d()Landroid/app/Activity;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_3

    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    :try_start_2
    iget-object v0, p1, Lms/bz/bd/c/Pgl/o0;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget v2, p1, Lms/bz/bd/c/Pgl/o0;->e:I

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v2, p1, Lms/bz/bd/c/Pgl/o0;->d:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p1, Lms/bz/bd/c/Pgl/o0;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Lms/bz/bd/c/Pgl/o0;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p1

    throw p2

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto/16 :goto_9

    :catch_0
    :cond_1
    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    :try_start_4
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, 0x0

    :goto_3
    :try_start_5
    iget v5, p1, Lms/bz/bd/c/Pgl/o0;->f:I

    if-nez v5, :cond_2

    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v5, 0x3e8

    invoke-virtual {p1, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_2
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v5, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v5, v5, v4

    float-to-double v5, v5

    invoke-direct {v1, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/o0;->h()V

    :goto_4
    iput v2, p1, Lms/bz/bd/c/Pgl/o0;->f:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_7

    :goto_5
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    goto :goto_6

    :catch_1
    :try_start_9
    const-string v9, "136f4b"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x5

    :try_start_a
    new-array v10, v0, [B

    fill-array-data v10, :array_0

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v5, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v5, v5, v4

    float-to-double v5, v5

    invoke-direct {v1, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/o0;->h()V

    goto :goto_4

    :goto_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v5, p1, Lms/bz/bd/c/Pgl/o0;->b:[F

    aget v5, v5, v4

    float-to-double v5, v5

    invoke-direct {v1, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/o0;->h()V

    iput v2, p1, Lms/bz/bd/c/Pgl/o0;->f:I

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_4
    nop

    :cond_3
    move-object v0, p2

    :goto_7
    if-nez v0, :cond_4

    monitor-exit p1

    goto :goto_8

    :cond_4
    :try_start_c
    iget-object v1, p1, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v0, p1, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x32

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p1, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p1, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    :cond_5
    monitor-exit p1

    :goto_8
    return-object p2

    :goto_9
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw p2

    :array_0
    .array-data 1
        0x33t
        0x22t
        0x46t
        0x2dt
        0xct
    .end array-data
.end method

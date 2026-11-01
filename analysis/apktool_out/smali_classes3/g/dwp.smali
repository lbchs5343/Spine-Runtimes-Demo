.class public final Lg/dwp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cqi;

.field public final b:Lg/ahe;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroid/content/Context;

.field public final e:Lg/ddc;

.field public final f:Lg/gv;

.field public final g:Lg/cuc;

.field public final h:Lg/ahy;

.field public final i:Lg/cqi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/cuc;Lg/ahy;Lg/ahe;Ljava/util/concurrent/Executor;Lg/ddc;Lg/cqi;Lg/cqi;Lg/gv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dwp;->d:Landroid/content/Context;

    iput-object p2, p0, Lg/dwp;->g:Lg/cuc;

    iput-object p3, p0, Lg/dwp;->h:Lg/ahy;

    iput-object p4, p0, Lg/dwp;->b:Lg/ahe;

    iput-object p5, p0, Lg/dwp;->c:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lg/dwp;->e:Lg/ddc;

    iput-object p7, p0, Lg/dwp;->i:Lg/cqi;

    iput-object p8, p0, Lg/dwp;->a:Lg/cqi;

    iput-object p9, p0, Lg/dwp;->f:Lg/gv;

    return-void
.end method


# virtual methods
.method public final j(Lg/ku;I)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v2, v3, Lg/ku;->b:[B

    iget-object v0, v1, Lg/dwp;->g:Lg/cuc;

    iget-object v4, v3, Lg/ku;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lg/cuc;->d(Ljava/lang/String;)Lg/dte;

    move-result-object v4

    sget-object v0, Lg/ecw;->OK:Lg/ecw;

    if-eqz v0, :cond_21

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-object v6, v4

    move-wide v4, v7

    :goto_0
    new-instance v0, Lg/dyh;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v3, v9}, Lg/dyh;-><init>(Lg/dwp;Lg/ku;I)V

    iget-object v9, v1, Lg/dwp;->e:Lg/ddc;

    check-cast v9, Lg/cga;

    invoke-virtual {v9, v0}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lg/dyh;

    const/4 v10, 0x1

    invoke-direct {v0, v1, v3, v10}, Lg/dyh;-><init>(Lg/dwp;Lg/ku;I)V

    invoke-virtual {v9, v0}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v11, -0x1

    if-nez v6, :cond_1

    const-string v0, "Uploader"

    const-string v14, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v0, v14, v3}, Lg/baf;->ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lg/dzy;

    sget-object v14, Lg/ecw;->FATAL_ERROR:Lg/ecw;

    invoke-direct {v0, v14, v11, v12}, Lg/dzy;-><init>(Lg/ecw;J)V

    move-object/from16 v29, v2

    move-wide/from16 v30, v4

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/ess;

    iget-object v15, v15, Lg/ess;->c:Lg/gfj;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v14, "proto"

    if-eqz v2, :cond_3

    iget-object v15, v1, Lg/dwp;->f:Lg/gv;

    invoke-static {v15}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lg/aoi;

    const/16 v8, 0x12

    invoke-direct {v7, v8, v15}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v7}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/dwq;

    new-instance v8, Lg/daw;

    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lg/daw;-><init>(I)V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v8, Lg/daw;->g:Ljava/lang/Object;

    iget-object v15, v1, Lg/dwp;->i:Lg/cqi;

    invoke-interface {v15}, Lg/cqi;->l()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v8, Lg/daw;->b:Ljava/lang/Object;

    iget-object v15, v1, Lg/dwp;->a:Lg/cqi;

    invoke-interface {v15}, Lg/cqi;->l()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v8, Lg/daw;->d:Ljava/lang/Object;

    const-string v15, "GDT_CLIENT_METRICS"

    iput-object v15, v8, Lg/daw;->e:Ljava/lang/Object;

    new-instance v15, Lg/csl;

    new-instance v13, Lg/cep;

    invoke-direct {v13, v14}, Lg/cep;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lg/qh;->a:Lg/dzh;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v11, v7, v12}, Lg/dzh;->n(Lg/dwq;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v15, v13, v7}, Lg/csl;-><init>(Lg/cep;[B)V

    iput-object v15, v8, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {v8}, Lg/daw;->y()Lg/gfj;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lg/cov;

    invoke-virtual {v8, v7}, Lg/cov;->i(Lg/gfj;)Lg/gfj;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v7, v6

    check-cast v7, Lg/cov;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gfj;

    iget-object v12, v11, Lg/gfj;->c:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v15, "CctTransportBackend"

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gfj;

    sget-object v28, Lg/egd;->DEFAULT:Lg/egd;

    iget-object v13, v7, Lg/cov;->d:Lg/cqi;

    invoke-interface {v13}, Lg/cqi;->l()J

    move-result-wide v20

    iget-object v13, v7, Lg/cov;->b:Lg/cqi;

    invoke-interface {v13}, Lg/cqi;->l()J

    move-result-wide v22

    sget-object v13, Lg/bkh;->ANDROID_FIREBASE:Lg/bkh;

    const-string v1, "sdk-version"

    invoke-virtual {v12, v1}, Lg/gfj;->h(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v1, "model"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "hardware"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v1, "device"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v1, "product"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v1, "os-uild"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v1, "manufacturer"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v1, "fingerprint"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v1, "country"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v1, "locale"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "mcc_mnc"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v1, "application_build"

    invoke-virtual {v12, v1}, Lg/gfj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    new-instance v29, Lg/ewl;

    invoke-direct/range {v29 .. v41}, Lg/ewl;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v29

    new-instance v12, Lg/bsp;

    invoke-direct {v12, v13, v1}, Lg/bsp;-><init>(Lg/bkh;Lg/ewl;)V

    :try_start_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v25, v1

    const/16 v26, 0x0

    goto :goto_4

    :catch_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v26, v1

    const/16 v25, 0x0

    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gfj;

    move-object/from16 v29, v2

    iget-object v2, v13, Lg/gfj;->f:Lg/csl;

    iget-object v3, v2, Lg/csl;->a:Lg/cep;

    iget-object v2, v2, Lg/csl;->b:[B

    move-wide/from16 v30, v4

    new-instance v4, Lg/cep;

    invoke-direct {v4, v14}, Lg/cep;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lg/cep;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Lg/fzm;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Lg/fzm;->c:Ljava/lang/Object;

    goto :goto_6

    :cond_6
    new-instance v4, Lg/cep;

    const-string v5, "json"

    invoke-direct {v4, v5}, Lg/cep;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lg/cep;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lg/fzm;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lg/fzm;->d:Ljava/lang/Object;

    move-object v3, v2

    :goto_6
    iget-wide v4, v13, Lg/gfj;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lg/fzm;->e:Ljava/lang/Object;

    iget-wide v4, v13, Lg/gfj;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lg/fzm;->b:Ljava/lang/Object;

    const-string v2, "tz-offset"

    iget-object v4, v13, Lg/gfj;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_7
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lg/fzm;->g:Ljava/lang/Object;

    const-string v2, "net-type"

    invoke-virtual {v13, v2}, Lg/gfj;->h(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lg/byo;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/byo;

    const-string v4, "mobile-subtype"

    invoke-virtual {v13, v4}, Lg/gfj;->h(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lg/cme;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cme;

    new-instance v5, Lg/bce;

    invoke-direct {v5, v2, v4}, Lg/bce;-><init>(Lg/byo;Lg/cme;)V

    iput-object v5, v3, Lg/fzm;->a:Ljava/lang/Object;

    iget-object v2, v13, Lg/gfj;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iput-object v2, v3, Lg/fzm;->f:Ljava/lang/Object;

    :cond_8
    iget-object v2, v3, Lg/fzm;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_9

    const-string v2, " eventTimeMs"

    goto :goto_8

    :cond_9
    const-string v2, ""

    :goto_8
    iget-object v4, v3, Lg/fzm;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_a

    const-string v4, " eventUptimeMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    iget-object v4, v3, Lg/fzm;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    const-string v4, " timezoneOffsetSeconds"

    invoke-static {v2, v4}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v32, Lg/bcj;

    iget-object v2, v3, Lg/fzm;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    iget-object v2, v3, Lg/fzm;->f:Ljava/lang/Object;

    move-object/from16 v35, v2

    check-cast v35, Ljava/lang/Integer;

    iget-object v2, v3, Lg/fzm;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    iget-object v2, v3, Lg/fzm;->c:Ljava/lang/Object;

    move-object/from16 v38, v2

    check-cast v38, [B

    iget-object v2, v3, Lg/fzm;->d:Ljava/lang/Object;

    move-object/from16 v39, v2

    check-cast v39, Ljava/lang/String;

    iget-object v2, v3, Lg/fzm;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    iget-object v2, v3, Lg/fzm;->a:Ljava/lang/Object;

    move-object/from16 v42, v2

    check-cast v42, Lg/bce;

    invoke-direct/range {v32 .. v42}, Lg/bcj;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLg/ih;)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_9
    move-object/from16 v3, p1

    move-object/from16 v2, v29

    move-wide/from16 v4, v30

    goto/16 :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v15}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lg/cep;->toString()Ljava/lang/String;

    goto :goto_9

    :cond_f
    move-object/from16 v29, v2

    move-wide/from16 v30, v4

    new-instance v19, Lg/dow;

    move-object/from16 v27, v1

    move-object/from16 v24, v12

    invoke-direct/range {v19 .. v28}, Lg/dow;-><init>(JJLg/bsp;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Lg/egd;)V

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v29, v2

    move-wide/from16 v30, v4

    const/4 v4, 0x5

    new-instance v1, Lg/aeq;

    invoke-direct {v1, v0}, Lg/aeq;-><init>(Ljava/util/ArrayList;)V

    iget-object v0, v7, Lg/cov;->a:Ljava/net/URL;

    if-eqz v29, :cond_13

    :try_start_2
    invoke-static/range {v29 .. v29}, Lg/dzj;->f([B)Lg/dzj;

    move-result-object v2

    iget-object v3, v2, Lg/dzj;->e:Ljava/lang/String;

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    iget-object v2, v2, Lg/dzj;->d:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-static {v2}, Lg/cov;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_12
    move-object/from16 v22, v3

    :goto_b
    move-object/from16 v20, v0

    goto :goto_c

    :catch_2
    new-instance v0, Lg/dzy;

    sget-object v1, Lg/ecw;->FATAL_ERROR:Lg/ecw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lg/dzy;-><init>(Lg/ecw;J)V

    goto/16 :goto_10

    :cond_13
    const/16 v22, 0x0

    goto :goto_b

    :goto_c
    :try_start_3
    new-instance v19, Lg/dzh;

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v21, v1

    invoke-direct/range {v19 .. v24}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    new-instance v0, Lg/aoi;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v7}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    move-object/from16 v1, v19

    const/4 v13, 0x5

    :cond_14
    invoke-virtual {v0, v1}, Lg/aoi;->j(Lg/dzh;)Lg/fks;

    move-result-object v2

    iget-object v3, v2, Lg/fks;->c:Ljava/lang/Object;

    check-cast v3, Ljava/net/URL;

    if-eqz v3, :cond_15

    const-string v4, "Following redirect to: %s"

    invoke-static {v15, v4, v3}, Lg/baf;->ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v19, Lg/dzh;

    iget-object v4, v1, Lg/dzh;->f:Ljava/lang/Object;

    move-object/from16 v21, v4

    check-cast v21, Lg/aeq;

    iget-object v1, v1, Lg/dzh;->g:Ljava/lang/Object;

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v24}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object/from16 v1, v19

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_16

    add-int/lit8 v13, v13, -0x1

    const/4 v3, 0x1

    if-ge v13, v3, :cond_14

    :cond_16
    iget v0, v2, Lg/fks;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_17

    iget-wide v0, v2, Lg/fks;->b:J

    new-instance v2, Lg/dzy;

    sget-object v3, Lg/ecw;->OK:Lg/ecw;

    invoke-direct {v2, v3, v0, v1}, Lg/dzy;-><init>(Lg/ecw;J)V

    move-object v0, v2

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_17
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1a

    const/16 v1, 0x194

    if-ne v0, v1, :cond_18

    goto :goto_e

    :cond_18
    const/16 v1, 0x190

    if-ne v0, v1, :cond_19

    new-instance v0, Lg/dzy;

    sget-object v1, Lg/ecw;->INVALID_PAYLOAD:Lg/ecw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lg/dzy;-><init>(Lg/ecw;J)V

    goto :goto_10

    :cond_19
    new-instance v0, Lg/dzy;

    sget-object v1, Lg/ecw;->FATAL_ERROR:Lg/ecw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lg/dzy;-><init>(Lg/ecw;J)V

    goto :goto_10

    :cond_1a
    :goto_e
    new-instance v0, Lg/dzy;

    sget-object v1, Lg/ecw;->TRANSIENT_ERROR:Lg/ecw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lg/dzy;-><init>(Lg/ecw;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_10

    :goto_f
    const-string v1, "Could not make request to the backend"

    invoke-static {v15, v1, v0}, Lg/baf;->bd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lg/dzy;

    sget-object v1, Lg/ecw;->TRANSIENT_ERROR:Lg/ecw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lg/dzy;-><init>(Lg/ecw;J)V

    :goto_10
    sget-object v1, Lg/ecw;->TRANSIENT_ERROR:Lg/ecw;

    iget-object v2, v0, Lg/dzy;->a:Lg/ecw;

    if-ne v2, v1, :cond_1b

    new-instance v0, Lg/evx;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v2, v10

    move-wide/from16 v4, v30

    invoke-direct/range {v0 .. v5}, Lg/evx;-><init>(Lg/dwp;Ljava/lang/Iterable;Lg/ku;J)V

    invoke-virtual {v9, v0}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/lit8 v0, p2, 0x1

    iget-object v4, v1, Lg/dwp;->b:Lg/ahe;

    invoke-virtual {v4, v3, v0, v2}, Lg/ahe;->d(Lg/ku;IZ)V

    return-void

    :cond_1b
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v7, v10

    move-wide/from16 v4, v30

    new-instance v8, Lg/ftr;

    const/4 v10, 0x3

    invoke-direct {v8, v1, v10, v7}, Lg/ftr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v8}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    sget-object v8, Lg/ecw;->OK:Lg/ecw;

    if-ne v2, v8, :cond_1c

    iget-wide v7, v0, Lg/dzy;->b:J

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-eqz v29, :cond_1f

    new-instance v0, Lg/aoi;

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v0}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    goto :goto_12

    :cond_1c
    sget-object v0, Lg/ecw;->INVALID_PAYLOAD:Lg/ecw;

    if-ne v2, v0, :cond_1f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ess;

    iget-object v7, v7, Lg/ess;->c:Lg/gfj;

    iget-object v7, v7, Lg/gfj;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1d
    const/16 v16, 0x1

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1e
    new-instance v2, Lg/ftr;

    const/4 v7, 0x4

    invoke-direct {v2, v1, v7, v0}, Lg/ftr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    :cond_1f
    :goto_12
    move-object/from16 v2, v29

    const-wide/16 v7, 0x0

    goto/16 :goto_0

    :cond_20
    new-instance v0, Lg/erk;

    invoke-direct {v0, v4, v5, v1, v3}, Lg/erk;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    return-void

    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null status"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

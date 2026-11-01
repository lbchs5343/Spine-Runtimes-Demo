.class public Lcom/bytedance/sdk/component/kk/d/s;
.super Lcom/bytedance/sdk/component/kk/d/p;


# instance fields
.field dq:Lcom/bytedance/sdk/component/d/dq/jy;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/d/p;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/d/dq/fw;)Lcom/bytedance/sdk/component/d/dq/o;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->s()Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/d/dq/fw;)Lcom/bytedance/sdk/component/d/dq/o;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/d/dq/fw;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/d/dq/o;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/d/dq/d/o;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/component/d/dq/d/o;->dq:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/bytedance/sdk/component/d/dq/d/o;->dq:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/d/dq/o;)Ljava/nio/charset/Charset;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/d/dq/o;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/component/d/dq/f;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->kk()Lcom/bytedance/sdk/component/d/dq/no;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/kk/d;->dq(Lcom/bytedance/sdk/component/d/dq/no;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/kk/d;
    .locals 14

    const-string v0, "content-type"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PostExecutor"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v0, "execute: Url is Empty"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/kk/p/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/component/kk/d;

    const-string v7, "URL_NULL_MSG"

    const-string v9, "URL_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v4

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    if-nez v2, :cond_1

    const-string v0, "RequestBody is null, content type is not support!!"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/kk/p/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/component/kk/d;

    const-string v7, "BODY_NULL_MSG"

    const-string v9, "BODY_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v4

    :cond_1
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v6}, Lcom/bytedance/sdk/component/kk/p/dq;->dq(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->p()[B

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/kk/d/p;->mn:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->p()[B

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/d/dq/fw;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/d/dq/o;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :goto_3
    new-instance v1, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1389

    const/4 v5, 0x0

    const-string v6, "BODY_NULL_BODY"

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "RequestBody is null, content type is not support!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/kk/d/s$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/kk/d/s$1;-><init>(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/kk/dq/dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void
.end method

.method public dq(Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/d/dq/jy;->dq(Lcom/bytedance/sdk/component/d/dq/o;[B)Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/s$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/s$dq;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/d/dq/s$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/s$dq;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/s$dq;->dq()Lcom/bytedance/sdk/component/d/dq/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "{}"

    :goto_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/d/dq/jy;->dq(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "{}"

    :cond_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/d/dq/jy;->dq(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s;->dq:Lcom/bytedance/sdk/component/d/dq/jy;

    return-void
.end method

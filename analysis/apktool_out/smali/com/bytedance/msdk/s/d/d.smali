.class public Lcom/bytedance/msdk/s/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/s/d/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/msdk/s/d/dq<",
        "Lcom/bytedance/msdk/s/dq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:I = -0x1

.field public static volatile dq:Z = false

.field private static volatile ox:Z = true


# instance fields
.field private p:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/msdk/s/d/d;->p:I

    iput p1, p0, Lcom/bytedance/msdk/s/d/d;->s:I

    sget p1, Lcom/bytedance/msdk/s/d/d;->d:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->d()I

    move-result p1

    sput p1, Lcom/bytedance/msdk/s/d/d;->d:I

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/msdk/s/d/d;->d:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sput v0, Lcom/bytedance/msdk/s/d/d;->d:I

    :cond_0
    return-void
.end method

.method private d(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/d/d;->ox(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    const-string v2, "buildAdEventV3BodyRaw"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    return-object v0
.end method

.method private dq(Ljava/lang/String;[B)Lcom/bytedance/msdk/s/s;
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/p/d;->dq()Lcom/bytedance/msdk/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/p/d;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/d;->ia()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-Tt-Env"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-use-ppe"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "User-Agent"

    sget-object v1, Lcom/bytedance/msdk/d/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/json; charset=utf-8"

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d/s;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/s/d/d;->dq(Lorg/json/JSONObject;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget v2, p0, Lcom/bytedance/msdk/s/d/d;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bytedance/msdk/s/d/d;->s:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doUploadApplogAdEventV3"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignore:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uploadEvent"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_4

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    const-string p1, "server say not success"

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object p2

    if-nez v1, :cond_5

    const-string v3, "::"

    invoke-static {p2, v3}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    move-object p1, p2

    goto :goto_2

    :cond_6
    const-string p1, "error unknown"

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/bytedance/msdk/s/s;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/bytedance/msdk/s/s;-><init>(ZILjava/lang/String;Z)V

    return-object v0
.end method

.method private dq(Ljava/lang/String;[BZ)Lcom/bytedance/msdk/s/s;
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/p/d;->dq()Lcom/bytedance/msdk/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/p/d;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/d;->ia()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-Tt-Env"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-use-ppe"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "x-pglcypher"

    const-string p3, "4"

    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p3, "union_sdk_encode"

    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p1, "application/octet-stream;tt-data=a"

    :goto_0
    const-string p3, "User-Agent"

    sget-object v1, Lcom/bytedance/msdk/d/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d/s;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/bytedance/msdk/s/d/d;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/msdk/s/d/d;->s:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doUploadApplogAdEvent"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uploadEvent"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_5

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    const-string p1, "server say not success"

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_6

    const-string v2, "::"

    invoke-static {p2, v2}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const/4 p2, 0x0

    goto :goto_4

    :cond_6
    move-object p1, p2

    goto :goto_3

    :cond_7
    const-string p1, "error unknown"

    goto :goto_3

    :goto_4
    new-instance p3, Lcom/bytedance/msdk/s/s;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/bytedance/msdk/s/s;-><init>(ZILjava/lang/String;Z)V

    return-object p3
.end method

.method private dq(Z)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/bytedance/msdk/s/d/d;->ox:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/bytedance/msdk/s/d/d;->ox:Z

    const-string p1, "1"

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/bytedance/msdk/s/d/d;->dq:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/bytedance/msdk/s/d/d;->dq:Z

    const-string p1, "4"

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "3"

    return-object p1

    :cond_2
    const-string p1, "2"

    return-object p1
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "v3_Id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "v3_err_msg"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/bl;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_1

    const-string v1, "success"

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_2
    return v0
.end method

.method private dq(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-array p1, v0, [B

    return-object p1

    :cond_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v0, [B

    return-object p1
.end method

.method private dq(Ljava/util/List;Z)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;Z)[B"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/d/d;->d(Ljava/util/List;)[B

    move-result-object p1

    const-string v0, "buildAdEventV3Body"

    if-nez p1, :cond_0

    const-string v1, "zipData is null"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-gtz v1, :cond_1

    const-string v1, "zipData len 0"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq([B)[B

    move-result-object p1

    goto :goto_1

    :cond_2
    array-length p2, p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/s/d/d;->dq([BI)[B

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    const-string p2, "data is null"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    array-length p2, p1

    if-gtz p2, :cond_4

    const-string p2, "data len 0"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private dq([BI)[B
    .locals 3

    const/4 v0, 0x0

    const-string v1, "encrypt"

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    :try_start_0
    array-length v2, p1

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/msdk/ia/f;->dq([BI)[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "inputData is "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    const-string p1, "0"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private ox(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "http_user_agent"

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_ip"

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->le()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "header"

    invoke-static {}, Lcom/bytedance/msdk/ia/wp;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/s/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/s/dq;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "event_v3"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "magic_tag"

    const-string v1, "ss_app_log"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAdEventV3Json"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private p(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;)[B"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/d/d;->ox(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildAdEventV3Body2"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public dq(Ljava/util/List;)Lcom/bytedance/msdk/s/s;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;)",
            "Lcom/bytedance/msdk/s/s;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "TTMediationSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--==-- v3: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/s/d/d;->dq()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/util/List;Z)[B

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/ox;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;[BZ)Lcom/bytedance/msdk/s/s;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/d/d;->p(Ljava/util/List;)[B

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/ox;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;[B)Lcom/bytedance/msdk/s/s;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/f/ox;->kx()I

    move-result v6

    if-lt v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v10, v5, v1

    iget-boolean v7, v0, Lcom/bytedance/msdk/s/s;->dq:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/s/d/d;->dq(Z)Ljava/lang/String;

    move-result-object v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/bytedance/msdk/s/s;->d:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "::"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/s/s;->ox:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/bytedance/msdk/ia/bl;->dq(ZILjava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_2
    iget v0, p0, Lcom/bytedance/msdk/s/d/d;->p:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/bytedance/msdk/s/d/d;->p:I

    const/16 v5, 0x14

    if-ge v0, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "uploadEvent"

    invoke-static {v5, v0}, Lcom/bytedance/msdk/s/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "ReportNetApiImpl"

    const-string v5, "uploadEvent error:"

    invoke-static {v0, v5}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v10, v5, v1

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/s/d/d;->dq(Z)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-1::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/bytedance/msdk/ia/bl;->dq(ZILjava/lang/String;JLjava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/s/s;

    const/16 v0, 0x1fd

    const-string v1, "service_busy"

    invoke-direct {p1, v3, v0, v1, v3}, Lcom/bytedance/msdk/s/s;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Z
    .locals 2

    sget v0, Lcom/bytedance/msdk/s/d/d;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

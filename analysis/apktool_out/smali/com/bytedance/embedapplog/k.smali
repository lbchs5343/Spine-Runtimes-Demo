.class Lcom/bytedance/embedapplog/k;
.super Lcom/bytedance/embedapplog/r;


# static fields
.field static final d:[J

.field static final ox:[J

.field private static final p:[J


# instance fields
.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/32 v3, 0xe09c0

    aput-wide v3, v1, v2

    sput-object v1, Lcom/bytedance/embedapplog/k;->d:[J

    new-array v0, v0, [J

    aput-wide v3, v0, v2

    sput-object v0, Lcom/bytedance/embedapplog/k;->ox:[J

    const/16 v0, 0xa

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/embedapplog/k;->p:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0x1770
        0x2bf20
        0x2bf20
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/le;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/r;-><init>(Lcom/bytedance/embedapplog/le;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/k;->s:Z

    return-void
.end method


# virtual methods
.method public d()[J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->no()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/bytedance/embedapplog/k;->ox:[J

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/k;->d:[J

    return-object v0

    :cond_1
    sget-object v0, Lcom/bytedance/embedapplog/k;->ox:[J

    return-object v0

    :cond_2
    sget-object v0, Lcom/bytedance/embedapplog/k;->p:[J

    return-object v0
.end method

.method public dq()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->ig()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/le;->mn()Lcom/bytedance/embedapplog/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/e;->ox()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1499700

    goto :goto_0

    :cond_0
    const v2, 0x2932e00

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ox()Z
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "magic_tag"

    const-string v4, "ss_app_log"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "device_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/embedapplog/k;->s:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/bytedance/embedapplog/k;->s:Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/le;->ia()Lcom/bytedance/embedapplog/util/dq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/util/dq;->dq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->p()Lcom/bytedance/embedapplog/d;

    move-result-object v7

    invoke-static {v1, v4, v5, v6, v7}, Lcom/bytedance/embedapplog/v;->dq(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/yy;->dq(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "install_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ssid"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_2
    return v2
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "r"

    return-object v0
.end method

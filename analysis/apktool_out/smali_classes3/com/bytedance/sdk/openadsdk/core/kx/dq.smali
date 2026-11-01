.class public Lcom/bytedance/sdk/openadsdk/core/kx/dq;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/bytedance/sdk/openadsdk/core/kx/dq;


# instance fields
.field private volatile d:I

.field private volatile ox:J

.field private volatile p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->ox:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p:J

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    return-object v0
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->ox:J

    return-wide v0
.end method

.method public d(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "callback"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dq(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia(I)V

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    return-void
.end method

.method public dq(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->ox:J

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p:J

    return-void
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public dq(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "register"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public iw()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ws()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    :cond_3
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    return v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p:J

    return-wide v0
.end method

.method public p()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ws()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;-><init>()V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/ox;->dq(Lorg/json/JSONObject;I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;-><init>()V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;->dq(Lorg/json/JSONObject;I)V

    return-void

    :cond_2
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    return-void
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

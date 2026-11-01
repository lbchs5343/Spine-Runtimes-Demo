.class public Lcom/bytedance/sdk/openadsdk/core/e/dq;
.super Ljava/lang/Object;


# instance fields
.field private final dq:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq:I

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/e/dq$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/dq;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/e/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->iw()V

    return-void
.end method

.method private dq(Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 5

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "state"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->d(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->ox(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->p(Ljava/lang/String;)I

    move-result v1

    if-nez p4, :cond_1

    if-le v0, v1, :cond_3

    :cond_1
    const-string p4, "api_rule"

    const-string v1, "="

    invoke-virtual {p1, p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "plugin_rule"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_v"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "plugin_v"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p3, v2, p4}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->dq(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, -0x1

    if-ne v0, p1, :cond_3

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->ox(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->p(Ljava/lang/String;)I

    move-result p3

    if-le p1, p3, :cond_3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/no;->dq(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private dq(IILjava/lang/String;)Z
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ">="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "=="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "<="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    if-lt p1, p2, :cond_6

    return v1

    :cond_6
    return v2

    :pswitch_1
    if-gt p1, p2, :cond_7

    return v1

    :cond_7
    return v2

    :pswitch_2
    if-le p1, p2, :cond_8

    return v1

    :cond_8
    return v2

    :pswitch_3
    if-ne p1, p2, :cond_9

    return v1

    :cond_9
    return v2

    :pswitch_4
    if-ge p1, p2, :cond_a

    return v1

    :cond_a
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
        0x781 -> :sswitch_2
        0x7a0 -> :sswitch_1
        0x7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private iw()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq$2;

    const-string v1, "csj-plugin-check"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/dq;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(I)I

    move-result v0

    return v0
.end method

.method public dq()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(I)I

    move-result v0

    return v0
.end method

.method public dq(I)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq:I

    shr-int p1, v0, p1

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->p()I

    move-result p1

    return p1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    neg-int p1, v0

    return p1

    :cond_1
    return v0
.end method

.method public dq(Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.byted.live.lite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->el()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->d()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const-string v0, "com.byted.csj.ext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->ox()I

    move-result p1

    return p1

    :cond_2
    const-string v0, "com.byted.pangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq()I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->p()I

    move-result p1

    return p1
.end method

.method public ox()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(I)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public s()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->hg()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.byted.live.lite"

    const/4 v4, 0x4

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    const-string v3, "com.byted.csj.ext"

    const/16 v4, 0x8

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    const-string v3, "com.byted.mixed"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    const-string v3, "com.byted.pangle"

    invoke-direct {p0, v0, v3, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "onReceiveServerStatus"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

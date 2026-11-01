.class public Lcom/bytedance/sdk/openadsdk/core/mn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/mn$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private volatile dq:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->d:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/mn;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/mn$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/mn;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/mn;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/mn;

    return-object v0
.end method

.method private dq(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->kk()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v0

    new-instance v1, Lcom/bytedance/embedapplog/ia;

    const-string v2, "unionser_slardar_applog"

    const-string v3, "164362"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/embedapplog/ia;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->mn()Z

    move-result v2

    invoke-static {v2}, Lcom/bytedance/embedapplog/dq;->dq(Z)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/ia;->d(Z)V

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/ia;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/ia;->dq(Z)V

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v4, 0x11f8

    if-lt v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/ia;->ox(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v4, 0x1324

    if-lt v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/ia;->dq(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->dq()Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Lcom/bytedance/embedapplog/ia;->p(Z)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/mn$1;

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/mn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/mn;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    invoke-virtual {v1, v4}, Lcom/bytedance/embedapplog/ia;->dq(Lcom/bytedance/embedapplog/mn;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/ia;->d(I)Lcom/bytedance/embedapplog/ia;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/mn$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/mn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/mn;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/dq;->dq(Lcom/bytedance/embedapplog/s;)V

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/dq;->dq(Landroid/content/Context;Lcom/bytedance/embedapplog/ia;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    const-string v0, "host_appid"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_plugin"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "6.6.0.7"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plugin_version"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_api_version"

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "use_apm_sdk"

    const-string v3, "1"

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    const-string v3, "applog"

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;III)V

    invoke-static {p1}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->ia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/embedapplog/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    const-string v0, "unionser_slardar_applog"

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_version_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "164362"

    return-object v0
.end method

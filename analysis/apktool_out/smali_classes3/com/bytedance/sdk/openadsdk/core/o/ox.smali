.class public Lcom/bytedance/sdk/openadsdk/core/o/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    return-void
.end method

.method private d()Lcom/bytedance/sdk/openadsdk/core/r/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/fw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eb()Lcom/bytedance/sdk/openadsdk/core/r/c;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/er;->dq(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "live_short_touch_params"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extra_pangle_scheme_params"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/er;->dq(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "is_reward_deep_link_to_live"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object p1
.end method

.method private dq(I)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ls()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v7

    const/4 v4, 0x1

    move v6, p1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method private dq(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u662f\u5426\u7acb\u5373\u6253\u5f00\u5e94\u7528"

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    const-string v0, "\u662f\u5426\u7acb\u5373\u6253\u5f00"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    invoke-direct {v7, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;Landroid/content/Intent;)V

    const-string v5, "\u7acb\u5373\u6253\u5f00"

    const-string v6, "\u9000\u51fa"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dq(ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "deeplink_fail_realtime"

    const-string v4, "open_url_app"

    const-string v5, "internal"

    const-string v6, "main"

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {v7, v7, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Landroid/content/Intent;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;ILjava/util/Map;)V

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v0, v1, v3, p1}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {p1, p2, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v7}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {v0, v8, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {v7, v7, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/bytedance/sdk/component/utils/d;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Landroid/content/Intent;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    const-string v1, "deeplink_success_realtime"

    invoke-static {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    invoke-direct {p0, v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    nop

    move v7, v0

    goto :goto_0

    :catchall_1
    nop

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(I)V

    if-eqz v7, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public dq()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/content/Intent;J)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;

    move-object v2, p0

    move-object v5, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;JLandroid/content/Intent;Lcom/bytedance/sdk/openadsdk/core/ir/dq;)V

    invoke-virtual {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$dq;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;ZZ)Z
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "open_fallback_url"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ox()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lorg/json/JSONObject;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v4
.end method

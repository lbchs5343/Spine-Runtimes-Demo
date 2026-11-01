.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ia:Z

.field private iw:Z

.field private mn:I

.field private ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

.field private p:Z

.field private s:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->iw:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->mn:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ia:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->s:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ugen_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/r;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ugen_md5"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/r;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_num"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->py()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "app_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->mn()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "comment_num"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->iw()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hand_icon_url"

    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/ugeno-source/download_hand_tap.json"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method

.method private dq()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "download_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x6

    if-ne v1, p3, :cond_0

    :try_start_0
    const-string v1, "easy_dl_render_fail_code"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ev()Lcom/bytedance/sdk/openadsdk/core/r/wp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/wp;->ox()Ljava/lang/String;

    move-result-object p1

    const-string p4, "easy_dl_render_fail_msg"

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "easy_dl_render_fail_dsl"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "show_easy_dl_dialog_code"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string p3, "pop_up"

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
    .locals 12

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    move-result-object v3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->p()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(Lorg/json/JSONArray;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ox()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(F)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->ox()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_2
    const-string p1, ""

    goto :goto_1

    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    invoke-static {p1, v7, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)I

    move-result v9

    const-string v11, ""
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v10, 0x0

    move-object v6, p0

    move-object v8, p2

    :try_start_4
    invoke-direct/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v6

    move-object v2, v8

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :cond_3
    move-object v1, p0

    move-object v2, p2

    goto :goto_4

    :cond_4
    move-object v1, p0

    move-object v2, p2

    :try_start_5
    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string p2, "pop_up"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p1, v2, p2, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "dialog_title"

    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dialog_icon_url"

    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dialog_app_description"

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_5
    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, v4, p3, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private dq(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "ugen_dl_render_fail_msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ugen_dl_render_fail"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string p3, "pop_up"

    invoke-static {p2, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "is_easy_dl_dialog_pop_up_style"

    const/4 v1, 0x1

    invoke-virtual {p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p3, v1, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x5f5e100

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    long-to-double p1, p1

    const-wide v0, 0x4197d78400000000L    # 1.0E8

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "%d\u4ebf+"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    long-to-double p1, p1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "%d\u4e07+"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "-"

    return-object p1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->iw:Z

    return-void
.end method

.method public dq(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x5f5e100

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%d\u4ebf+"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%d\u4e07+"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "-"

    return-object p1
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->mn:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->s:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq(Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ah()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    if-eqz v0, :cond_2

    :cond_1
    move-object v2, p0

    move-object v5, p2

    move-object v6, p4

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;

    const-string v3, "tt_download_check"

    move-object v2, p0

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :goto_0
    invoke-direct {p0, p1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p:Z

    return-void
.end method

.method public ox(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, "-"

    return-object p1

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "%.1fMB"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ia:Z

    return-void
.end method

.method public p(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ia:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->ox(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->iw:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->d(Z)V

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->mn:I

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->dq(I)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq()Z

    move-result p1

    return p1
.end method

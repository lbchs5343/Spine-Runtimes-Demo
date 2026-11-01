.class public Lcom/bytedance/sdk/openadsdk/core/wn;
.super Ljava/lang/Object;


# static fields
.field private static dq:Z


# direct methods
.method private static d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "feed_video_middle_page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 6

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTPlayableWebPageActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "multi_process_data"

    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;->op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    instance-of v1, p4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v1, :cond_2

    check-cast p4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->no()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Landroid/content/Intent;)V

    return-object v5
.end method

.method private static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;Z)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    instance-of v0, p4, Lcom/bytedance/sdk/openadsdk/f/d/d/o;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTWebPageActivity;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v4, p5

    goto/16 :goto_5

    :cond_0
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/wn;->dq:Z

    if-nez v0, :cond_4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    move-object v7, v0

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :goto_2
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Ljava/util/Map;ZLandroid/content/Intent;)V

    move-object p4, v7

    move-object v1, p1

    move-object v5, p4

    move-object v4, p5

    move-object v0, v2

    :goto_3
    move-object v2, v3

    move v3, p3

    goto :goto_5

    :cond_4
    move-object v0, p0

    move-object v3, p2

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_4
    move-object v1, p1

    move-object v5, p4

    move-object v4, p5

    goto :goto_3

    :cond_5
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :goto_5
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Landroid/content/Intent;)V

    move-object p4, v5

    return-object p4
.end method

.method private static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Ljava/util/Map;ZLandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "multi_process_data"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    instance-of v2, p2, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;->op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    instance-of v2, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v2, :cond_2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->no()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v1, :cond_3

    const-string p2, "video_is_auto_play"

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    invoke-virtual {p5, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "videoDataModel="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "videoDataModel"

    invoke-static {v2, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->dq(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-nez v1, :cond_4

    if-eqz p4, :cond_8

    :cond_4
    if-eqz v1, :cond_5

    :try_start_0
    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    long-to-float p2, v2

    iget-wide v0, v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->s:J

    long-to-float p4, v0

    div-float/2addr p2, p4

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    goto :goto_0

    :cond_5
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    const-wide/16 v1, 0x64

    iput-wide v1, p2, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    const/4 p4, 0x1

    iput-boolean p4, p2, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    iput-boolean p4, p2, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x64

    :goto_0
    if-nez p3, :cond_6

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_6
    const-string p4, "play_percent"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p4, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoScrollWebPageActivity;

    if-nez p3, :cond_7

    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result p3

    if-lez p3, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result p3

    if-le p2, p3, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_8
    return-void
.end method

.method private static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Z)V

    :cond_0
    const-string v0, "url"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gecko_id"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->lk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sdk_version"

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ad_id"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "icon_url"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "event_tag"

    invoke-virtual {p5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_outer_click"

    invoke-virtual {p5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_2

    const/high16 p0, 0x10000000

    invoke-virtual {p5, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/wn;->dq:Z

    return-void
.end method

.method private static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;ZZLjava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p7, :cond_0

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1, v9}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    sput-boolean v10, Lcom/bytedance/sdk/openadsdk/core/wn;->dq:Z

    return v8

    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v10

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v1, p8

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1, v9}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    sput-boolean v10, Lcom/bytedance/sdk/openadsdk/core/wn;->dq:Z

    return v8

    :cond_2
    invoke-static/range {p8 .. p8}, Lcom/bytedance/sdk/component/utils/q;->dq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v10

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_4

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-static {p0, v1, v9}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    return v8

    :catch_0
    return v10
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "is_replace_dialog"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Landroid/content/Intent;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "multi_process_data"

    invoke-virtual {v5, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x0

    invoke-static {v0, v5, p0}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;Z)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/lang/String;ZZZ)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->o()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ig()Z

    move-result v7

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/wn;->d(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez p2, :cond_2

    if-nez v8, :cond_2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTMiddlePageActivity;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v9

    if-eqz v9, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->cd()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->cd()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->dq()Z

    move-result p0

    if-eqz p0, :cond_3

    return v10

    :cond_3
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/l;->bl(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p3, :cond_4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v8, :cond_7

    if-nez v0, :cond_7

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-direct {p0, v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0, v5, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;ZZ)Z

    move-result p2

    if-eqz p2, :cond_6

    return v10

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v9, p0

    move-object v5, p1

    move v8, p3

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;ZZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static dq(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;->bl()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method private static dq(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "embeded_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "embeded_ad_landingpage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

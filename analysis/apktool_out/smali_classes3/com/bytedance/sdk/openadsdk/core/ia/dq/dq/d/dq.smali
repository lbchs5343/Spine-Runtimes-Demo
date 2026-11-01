.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field private d:Z

.field private dq:Z

.field private ia:Z

.field private ig:Ljava/lang/String;

.field private iw:I

.field private kk:Ljava/lang/String;

.field private mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private no:Z

.field private o:I

.field private ox:Landroid/content/Context;

.field private p:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->iw:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->no:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->kk:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->o:I

    return-void
.end method

.method private d(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "video_is_auto_play"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ia:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    long-to-float v1, v1

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->s:J

    long-to-float v0, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    const-wide/16 v1, 0x64

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    const-string v2, "multi_process_data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->iw:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoScrollWebPageActivity;

    if-nez v1, :cond_4

    return-object v2

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fp()I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    return-object v2

    :catchall_0
    :cond_5
    :goto_1
    return-object p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->dq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
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

.method private ox()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->no:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ig:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    const-string v1, "url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ig:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gecko_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->lk()Ljava/lang/String;

    move-result-object v1

    const-string v2, "web_title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    sget v1, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_extra"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    const-string v2, "icon_url"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    const-string v1, "event_tag"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->kk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    const-string v1, "is_outer_click"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private p()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->s:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;->op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v1

    :cond_2
    const-string v0, "multi_process_data"

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->s:Ljava/lang/Object;

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->no()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method


# virtual methods
.method public d()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d:Z

    if-eqz v1, :cond_0

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTPlayableWebPageActivity;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->s:Ljava/lang/Object;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/f/d/d/o;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTWebPageActivity;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->s:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_4
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v3

    :cond_6
    return-object v2
.end method

.method public d(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d:Z

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->iw:I

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mp:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ig:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq:Z

    return-void
.end method

.method public dq(Ljava/lang/Class;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mp:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    const-string p1, "is_outer_click"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->mn:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ox:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;)V

    invoke-static {p1, v0, v2}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    return v1
.end method

.method public dq(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->ia:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->no:Z

    return-void
.end method

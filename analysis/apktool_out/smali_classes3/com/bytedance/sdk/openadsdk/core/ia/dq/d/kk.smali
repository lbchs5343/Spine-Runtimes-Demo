.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
    dq = "SINGLETON"
.end annotation


# instance fields
.field private d:Landroid/content/Context;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "context"
    .end annotation
.end field

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private iw:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_open_web_page"
    .end annotation
.end field

.field private mn:Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "pip_controller"
    .end annotation
.end field

.field private ox:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "url"
    .end annotation
.end field

.field private p:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "interaction_type"
    .end annotation
.end field

.field private s:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "activity_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->ox:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->dq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->ox:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->iw:Z

    const-string v1, "UChain_LP"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "mIsOpenWebPage = true"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->dq()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    return p1

    :cond_1
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return p1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->mn:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    return v2

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->d:Landroid/content/Context;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->s:I

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(I)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->d:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    const-string v3, "is_outer_click"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_5

    const-string v3, "param == null"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :cond_5
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "context"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activity_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 v4, -0x1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_0
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->d:Landroid/content/Context;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;)Z

    return v2
.end method

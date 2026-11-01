.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;


# instance fields
.field private ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Ljava/lang/String;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field private mn:I

.field private s:Lcom/bytedance/sdk/openadsdk/core/r/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->kk:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    return-object p0
.end method

.method private d()Z
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/le;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "open_url_app"

    const-string v6, "internal"

    const-string v7, "main"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s$1;

    invoke-direct {v8, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;)V

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v0, v1, v8, v6}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    invoke-static {v0, v1, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    return v3

    :cond_1
    return v2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    invoke-static {v0, v8, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/component/utils/d;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    const-string v4, "deeplink_success_realtime"

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    return v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private dq()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/le;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/le;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->d()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->ox()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private ox()Z
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/le;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->mn:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->ia:Ljava/util/Map;

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->dq()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->kk:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->kk:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->mn:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/r/k;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->iw:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;->ia:Ljava/util/Map;

    return-void
.end method

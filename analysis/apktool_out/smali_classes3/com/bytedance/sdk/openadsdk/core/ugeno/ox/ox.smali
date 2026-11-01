.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;
.implements Lg/ahr;
.implements Lcom/bytedance/sdk/component/adexpress/d/p;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/cyx;",
        "Lg/ahr;",
        "Lcom/bytedance/sdk/component/adexpress/d/p<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/p;"
    }
.end annotation


# instance fields
.field protected cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

.field protected d:Landroid/content/Context;

.field protected dq:Lg/ajp;

.field protected f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected fw:Lcom/bytedance/sdk/component/utils/i;

.field private gh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/dlv;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field protected ia:Landroid/widget/FrameLayout;

.field protected ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field protected iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected jy:Lg/dlv;

.field protected kk:Lcom/bytedance/sdk/component/adexpress/d/ia;

.field private le:Z

.field protected mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

.field protected mp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected no:Lcom/bytedance/sdk/component/adexpress/d/q;

.field protected o:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;

.field protected ox:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field protected p:Lorg/json/JSONObject;

.field protected q:Lg/dlv;

.field private r:Ljava/lang/String;

.field protected s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->le:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    new-instance v1, Lg/ajp;

    invoke-direct {v1, p1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ju()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p2, "event_template"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->le:Z

    sget-object p2, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private d(Lg/fzc;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "uttieUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 3

    iget-object v0, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "clickEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->o:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;->dq()V

    :cond_3
    const-string p1, "uttieUrl"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/fzc;Lg/dvh;Lg/eho;I)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v1}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    return-void

    :cond_2
    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Lg/eho;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/fzc;Lg/dvh;Lg/eho;I)V

    return-void
.end method

.method private dq(Lg/dlv;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            "Ljava/util/List<",
            "Lg/dlv;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lg/eyh;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lg/dlv;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast p1, Lg/eyh;

    invoke-virtual {p1}, Lg/eyh;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dlv;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/dlv;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lg/dlv;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private dq(Lg/fzc;)V
    .locals 7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uchain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_1
    const-string p1, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string p1, "material_meta"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p1, "ugen_event_params"

    invoke-virtual {v6, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kx()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ugen_view_visibility"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private dq(Lg/fzc;Lg/dvh;Lg/eho;I)V
    .locals 10

    const-string p3, "ugen_id"

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lg/fzc;->b:Lg/dlv;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v2, "nodeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clickEvent"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const-string v2, "subConvertLinkTag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dpaPosition"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_2
    const-string v4, "muteVideo"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, ""

    if-eqz v4, :cond_3

    const-string v2, "muteSrc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->r:Ljava/lang/String;

    const-string v2, "unmuteSrc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->i:Ljava/lang/String;

    const/4 v4, 0x5

    :goto_0
    move-object v2, v7

    goto/16 :goto_2

    :cond_3
    const-string v4, "dislike"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    goto :goto_0

    :cond_4
    const-string v4, "skip"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    goto :goto_0

    :cond_5
    const-string v4, "openPolicy"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    goto :goto_0

    :cond_6
    const-string v4, "openAppPolicy"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x9

    goto :goto_0

    :cond_7
    const-string v4, "openAppPermission"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xa

    goto :goto_0

    :cond_8
    const-string v4, "close"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v8, 0x8

    if-eqz v4, :cond_9

    move-object v2, v7

    const/16 v4, 0x8

    goto :goto_2

    :cond_9
    const-string v4, "openAppFunctionDesc"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0xc

    goto :goto_0

    :cond_a
    const-string v4, "videoControl"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "pauseVideo"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_1

    :cond_b
    const-string v4, "onDismiss"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object p1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-virtual {p1, p1}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, v8}, Lg/dlv;->d(I)V

    return-void

    :cond_c
    const-string v4, "onShow"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object p1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-virtual {p1, p1}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, v6}, Lg/dlv;->d(I)V

    return-void

    :cond_d
    move-object v2, v7

    const/4 v4, 0x0

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v4, 0x4

    goto/16 :goto_0

    :goto_2
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    invoke-virtual {v0}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-lez p4, :cond_f

    :try_start_0
    const-string v7, "convertActionType"

    invoke-virtual {v5, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_f
    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p4

    :try_start_1
    instance-of v0, p4, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    move-object v0, p4

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\u4e0b\u8f7d"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "is_compliant_download"

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_10
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ju()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->le:Z

    if-eqz v0, :cond_11

    const-string v0, "uchain"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "uchain_event_name"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_11
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->bl()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_12
    :goto_3
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk:Lcom/bytedance/sdk/component/adexpress/d/ia;

    if-eqz v0, :cond_13

    invoke-interface {v0, p4, v4, p3}, Lcom/bytedance/sdk/component/adexpress/d/ia;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_13
    if-eqz p2, :cond_14

    iget-object p1, p1, Lg/fzc;->a:Lg/fzc;

    if-eqz p1, :cond_14

    invoke-interface {p2, p1}, Lg/dvh;->dq(Lg/fzc;)V

    :cond_14
    :goto_4
    return-void
.end method

.method private dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v1}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    return-void

    :cond_2
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private ox(Lg/fzc;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "uttieUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private ox(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/utils/i;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->mn()Z

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->us()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tn()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->ox(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->bs()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->d(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rw()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->aq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->d(Lorg/json/JSONObject;)V

    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-array v4, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v4, v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;

    move-object v3, p0

    move-object v7, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;[FLg/dvh;Ljava/util/concurrent/atomic/AtomicBoolean;Lg/fzc;Lg/eho;)V

    move-object v9, v7

    move-object v7, v4

    move-object v4, v9

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$dq;)V

    iget-object p1, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$3;

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Ljava/util/concurrent/atomic/AtomicBoolean;[F)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$d;)V

    iget-object p1, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void
.end method

.method private p(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Lg/eho;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Ljava/lang/ref/WeakReference;Lcom/bytedance/sdk/openadsdk/core/d/ox;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Lg/fzc;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Lg/fzc;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v1, "lottieEvent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v0
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->gh:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->gh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dlv;

    invoke-virtual {v1}, Lg/dlv;->vf()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/adexpress/d/mn;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    invoke-virtual {p1, p0}, Lg/ajp;->s(Lg/cyx;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iput-object p0, p1, Lg/ajp;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object p1

    invoke-interface {p1}, Lg/dbw;->d()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object p1

    invoke-interface {p1}, Lg/dbw;->ox()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ox()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dq(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->q:Lg/dlv;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;->dq(JJ)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk:Lcom/bytedance/sdk/component/adexpress/d/ia;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v0

    invoke-interface {v0}, Lg/dbw;->dq()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p()Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->q:Lg/dlv;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;->dq(Landroid/widget/FrameLayout;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s()Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->jy:Lg/dlv;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lg/bix;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;->d(Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->ir()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    invoke-virtual {v1}, Lg/dlv;->u()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->gh:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    invoke-direct {p0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/dlv;Ljava/util/List;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    invoke-virtual {v3}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    invoke-virtual {v4}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->h()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->ji()F

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->kk(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->no(Landroid/content/Context;)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    int-to-float v5, v5

    cmpl-float v7, v3, v5

    if-lez v7, :cond_5

    move v3, v5

    :cond_5
    int-to-float v5, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_6

    move v4, v5

    :cond_6
    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_7

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v3, v3

    const/4 v8, -0x2

    invoke-direct {v7, v3, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {v8, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-lez v6, :cond_9

    cmpg-float v3, v0, v5

    if-gtz v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(D)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(D)V

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(D)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(D)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x89

    invoke-interface {p1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->no:Lcom/bytedance/sdk/component/adexpress/d/q;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void

    :cond_b
    const/16 v0, 0x8a

    invoke-interface {p1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_c
    :goto_3
    const/16 v0, 0x85

    invoke-interface {p1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->o:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ia;

    return-void
.end method

.method public dq(Lg/dlv;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(I)V

    return-void
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 2

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Lg/fzc;->c:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox(Lg/fzc;Lg/dvh;Lg/eho;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p(Lg/fzc;Lg/dvh;Lg/eho;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iget-object p2, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget-object p2, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d(Lg/fzc;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox(Lg/fzc;)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x14

    if-eq v0, v1, :cond_9

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p(Lg/fzc;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d(Lg/fzc;Lg/dvh;Lg/eho;)V

    goto :goto_0

    :cond_7
    iget v0, p1, Lg/fzc;->c:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/fzc;)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/fzc;Lg/dvh;Lg/eho;I)V

    :cond_9
    :goto_0
    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    const-string p2, "next"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Lg/fzc;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput p3, p2, Lg/fzc;->c:I

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p3, p2, Lg/fzc;->d:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    iput-object p1, p2, Lg/fzc;->b:Lg/dlv;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/CharSequence;IIZ)V
    .locals 3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "count_down_skip_container"

    invoke-virtual {p2, v0}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v1, "count_down"

    invoke-virtual {p2, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v2, "skip"

    invoke-virtual {v1, v2}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v1

    instance-of v2, p2, Lg/efb;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lg/efb;

    if-eqz v2, :cond_5

    const-string v2, "s "

    if-nez p3, :cond_4

    const-string p3, "0"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    check-cast p2, Lg/efb;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/efb;->mn(Ljava/lang/String;)V

    check-cast v1, Lg/efb;

    const-string p1, "| \u8df3\u8fc7"

    invoke-virtual {v1, p1}, Lg/efb;->mn(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lg/fmg;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    :goto_0
    check-cast p2, Lg/efb;

    invoke-virtual {p2}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lg/fmg;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    check-cast v1, Lg/efb;

    const-string p1, "\u8df3\u8fc7"

    invoke-virtual {v1, p1}, Lg/efb;->mn(Ljava/lang/String;)V

    return-void

    :cond_4
    check-cast p2, Lg/efb;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/efb;->mn(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public ia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->le:Z

    return v0
.end method

.method public ig()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "corver_container"

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public iw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/dlv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->gh:Ljava/util/List;

    return-object v0
.end method

.method public kk()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->bl()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public mn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ia:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "corver_container"

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->d()V

    :cond_1
    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    return v0
.end method

.method public p()Lg/dlv;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "VideoPlaceholder"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    return-object v0
.end method

.method public s()Lg/dlv;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "PlayableComponent"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "mute_image"

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v0

    check-cast p1, Lg/fde;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lg/fde;->ia(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v0

    check-cast p1, Lg/fde;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lg/fde;->ia(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lg/dlv;->p()V

    :cond_3
    :goto_1
    return-void
.end method

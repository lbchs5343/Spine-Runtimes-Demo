.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

.field private dq:Landroid/content/Context;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;

.field private ig:Ljava/lang/String;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;

.field private mn:Lg/dlv;

.field private mp:I

.field private no:Lcom/bytedance/sdk/openadsdk/core/c;

.field private o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

.field private ox:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

.field private s:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ig:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mp:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lg/dlv;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mn:Lg/dlv;

    return-object p0
.end method

.method private d(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p1, Lg/fzc;->b:Lg/dlv;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onDismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "onShow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;->ox(Lg/dlv;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ox:Lg/dlv;

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/dlv;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ox:Lg/dlv;

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg/dlv;->d(I)V

    :cond_4
    :goto_0
    const-string v0, "reportType"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$5;

    invoke-direct {v1, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;Ljava/lang/String;)V

    const-string p3, "agg_click"

    invoke-virtual {v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p1, Lg/fzc;->a:Lg/fzc;

    if-eqz p1, :cond_6

    invoke-interface {p2, p1}, Lg/dvh;->dq(Lg/fzc;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private d(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lg/co;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;",
            ")V"
        }
    .end annotation

    new-instance v0, Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    new-instance v2, Lg/dmm;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/dmm;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_material"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/co;

    iget-object v6, v6, Lg/co;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ig:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mp:I

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v5, "key_data_list"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "key_js_object"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v2, Lg/dmm;->c:Ljava/util/HashMap;

    iput-object v2, v0, Lg/ajp;->a:Lg/dmm;

    iget-object v1, v2, Lg/dmm;->b:Lorg/json/JSONObject;

    iput-object v1, v0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ox:Lg/dlv;

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ox:Lg/dlv;

    const-string v1, "recycler_layout"

    invoke-virtual {p1, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mn:Lg/dlv;

    instance-of v1, p1, Lg/eid;

    if-eqz v1, :cond_2

    check-cast p1, Lg/eid;

    iput-object p2, p1, Lg/eid;->a:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)V

    iput-object v1, p1, Lg/eid;->g:Lg/gco;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mn:Lg/dlv;

    check-cast p1, Lg/eid;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)V

    iput-object v1, p1, Lg/eid;->ab:Lg/cal;

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)V

    iput-object p1, v0, Lg/ajp;->b:Lg/f;

    invoke-virtual {v0, p0}, Lg/ajp;->s(Lg/cyx;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/co;

    :try_start_0
    const-string v1, "ugen_sub_meta"

    iget-object p2, p2, Lg/co;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(J)V

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ox:Lg/dlv;

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(Lg/dlv;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    const-string v0, "ugeno render fail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    const-string p1, ""

    invoke-interface {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;

    return-object p0
.end method


# virtual methods
.method public dq()Lg/dlv;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->mn:Lg/dlv;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->ia:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->s:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    return-void
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Lg/fzc;->c:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d(Lg/fzc;Lg/dvh;Lg/eho;)V

    return-void

    :cond_1
    const/16 p3, 0xa

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;->d(Lg/dlv;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->no:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz p1, :cond_2

    const-string p2, "webviewVisible"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lg/co;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

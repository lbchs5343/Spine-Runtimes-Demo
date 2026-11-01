.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;
.implements Lcom/bytedance/sdk/component/utils/e$dq;
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/d;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field private ia:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final iw:Lcom/bytedance/sdk/component/utils/e;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

.field private p:Lcom/bytedance/sdk/openadsdk/core/c;

.field private s:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance p1, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 5

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    new-instance p3, Lg/ajp;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d:Landroid/content/Context;

    invoke-direct {p3, v0}, Lg/ajp;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg/dmm;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lg/dmm;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/d;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v2, "key_js_object"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_material"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v1, Lg/dmm;->b:Lorg/json/JSONObject;

    iput-object v0, v1, Lg/dmm;->c:Ljava/util/HashMap;

    iput-object v1, p3, Lg/ajp;->a:Lg/dmm;

    iput-object p2, p3, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-virtual {p3, p1}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->dq:Lg/dlv;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    const-string p3, "UGenWidget is null"

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3, p0}, Lg/ajp;->s(Lg/cyx;)V

    invoke-virtual {p3, p2}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    const-string v0, "easy_pl_material"

    const-string v1, "creative_tags"

    const-string v2, "description"

    const-string v3, "icon_url"

    const-string v4, "score"

    const-string v5, "package_name"

    const-string v6, "developer_name"

    const-string v7, "app_version"

    const-string v8, "app_name"

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return-object v9

    :cond_0
    const-string v10, "easy_dl_dialog"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v9

    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ugen_download_dialog"

    invoke-virtual {v10, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->dq:Lg/dlv;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(Lg/dlv;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    const/16 v0, 0xa

    const-string v1, "load time out"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    return-void
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p2, p1, Lg/fzc;->c:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    const/4 p3, -0x1

    goto :goto_1

    :sswitch_0
    const-string p2, "openAppPolicy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "downloadEvent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "closeDialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "openAppFunctionDesc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :sswitch_4
    const-string p2, "openAppPermission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->p(Landroid/app/Dialog;)V

    return-void

    :pswitch_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->dq(Landroid/app/Dialog;)V

    return-void

    :pswitch_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->ox(Landroid/app/Dialog;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->dq()V

    return-void

    :pswitch_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->d(Landroid/app/Dialog;)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_4
        -0x1b5c2c60 -> :sswitch_3
        -0xfeb92a0 -> :sswitch_2
        0x78cef2 -> :sswitch_1
        0x49c19b89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

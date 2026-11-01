.class public abstract Lcom/bytedance/msdk/iw/dq/o;
.super Lcom/bytedance/msdk/iw/dq/p;


# instance fields
.field protected dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/iw/dq/p;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/dq/ox;->mn()Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/msdk/api/p/no;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/dq/p;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static d(Lcom/bytedance/msdk/api/p/no;)Lcom/bytedance/msdk/iw/dq/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/iw/dq/no;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/dq/no;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/iw/dq/kk;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/dq/kk;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    return-object v0
.end method

.method public static kk()Lcom/bytedance/msdk/iw/dq/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/iw/dq/no;

    invoke-direct {v0}, Lcom/bytedance/msdk/iw/dq/no;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/iw/dq/kk;

    invoke-direct {v0}, Lcom/bytedance/msdk/iw/dq/kk;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dq()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->jy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_paid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->le()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pangle_title_bar_theme"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_allow_show_notify"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_allow_show_page_when_screen_lock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->gh()[I

    move-result-object v1

    const-string v2, "pangle_direct_download_networktype"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->k()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_need_clear_task_reset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_keywords"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->mp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_support_multi_process"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/dq/ox;->mn()Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/o;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appId\u4e3a\u7a7a"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

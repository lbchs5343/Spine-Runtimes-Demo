.class public final Lcom/bytedance/sdk/openadsdk/core/ox/ox;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/ox/ox;


# instance fields
.field private dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile ia:Z

.field private volatile iw:Ljava/lang/String;

.field private kk:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private no:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:Landroid/content/SharedPreferences;

.field private ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->no:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "https://"

    invoke-static {v1, v0, p0}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->no()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private dq(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_bidding_opt_libra"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_bidding_opt_libra"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private dq(II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private ig()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k/dq;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->dq(Lcom/bytedance/sdk/openadsdk/core/k/dq;)Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->s()Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->ox(Lcom/bytedance/sdk/openadsdk/core/k/dq;)Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->p(Lcom/bytedance/sdk/openadsdk/core/k/dq;)Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->d(Lcom/bytedance/sdk/openadsdk/core/k/dq;)Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->s(Lcom/bytedance/sdk/openadsdk/core/k/dq;)Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    return-void
.end method

.method private no()V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->s()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/d;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->dq()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/api/ad/union/ping"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ox/ox$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->d(I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq(Landroid/content/Context;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->p()Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ig()V

    const-wide/32 v0, 0xf731400

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/kx;->dq(J)Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private o()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_bidding_opt_libra"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(I)V
    .locals 1

    const-string v0, "key_net_queue_limit"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ia:Z

    if-nez v0, :cond_1

    const-string v0, "key_support_multiprocess"

    const/4 v1, 0x2

    const-string v2, "sp_bidding_opt_libra"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ia:Z

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dq(I)V
    .locals 1

    const-string v0, "key_req_body_opt"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_url_ads"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "network_module"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->ox(I)V

    const-string v0, "if_req_body_opt"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(I)V

    const-string v0, "net_queue_limit"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d(I)V

    const-string v0, "req_build_opt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p(I)V

    const-string v0, "_use_pl_"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const-string p1, "key_support_multiprocess"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public ia()V
    .locals 3

    :try_start_0
    const-string v0, "sp_bidding_opt_libra"

    invoke-static {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public iw()I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "key_network_module"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "sp_bidding_opt_libra"

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method public iw(I)Z
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(II)Z

    move-result p1

    return p1
.end method

.method public kk()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;

    const-string v1, "advance_init_rb"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ox/ox;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method

.method public mn()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "key_req_build_opt"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "sp_bidding_opt_libra"

    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox(I)V
    .locals 1

    const-string v0, "key_network_module"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public ox()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "key_req_body_opt"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v4, "sp_bidding_opt_libra"

    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v3, :cond_3

    return v3

    :catchall_0
    :cond_3
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    const-string v0, "api-access.pangolin-sdk-toutiao.com"

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "key_url_ads"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "sp_bidding_opt_libra"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)V
    .locals 1

    const-string v0, "key_req_build_opt"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public s()I
    .locals 4

    const/4 v0, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "key_net_queue_limit"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "sp_bidding_opt_libra"

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->o:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->no:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_use_pl_"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->no:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;,
        Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Landroid/widget/Toast;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

.field private final ox:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->ox:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq:Landroid/widget/Toast;

    return-object p0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/q;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/q;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "is_apply_coupon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "success"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->p:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "has_applied"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->p:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->p:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;->dq()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;->dq(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->ox:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq:Landroid/widget/Toast;

    return-object p1
.end method

.method private dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->p:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

    if-eqz v0, :cond_0

    const-string v1, "net_fail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;->dq(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/r/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->ox(Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/q;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/q;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/q;->p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "is_apply_coupon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq()V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vr()Lcom/bytedance/sdk/openadsdk/core/r/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/q;->dq(Z)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq()V

    return-void
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/core/r/q;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vr()Lcom/bytedance/sdk/openadsdk/core/r/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->p:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;

    return-void
.end method

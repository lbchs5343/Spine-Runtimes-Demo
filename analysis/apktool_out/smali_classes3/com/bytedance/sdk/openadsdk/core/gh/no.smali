.class Lcom/bytedance/sdk/openadsdk/core/gh/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;


# static fields
.field public static final dq:Lcom/bytedance/sdk/openadsdk/core/gh/no;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/no;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/gh/no;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/no;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/no;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/gh/no;Lcom/bytedance/sdk/openadsdk/no/dq/dq;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/no;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Z)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Z)V
    .locals 4

    const-string p2, "event_extra"

    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/no/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;->dq()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/gh/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const-string v2, "stats_index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdk_session_id"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "csj_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/no;->n()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "wrong_stats_url"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/ir/c;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wrong_applog_url"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/ir/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox(B)V

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d(B)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq(B)V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Lcom/bytedance/sdk/component/ia/d/p/dq/dq;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;

    const-string v2, "uploadLogEvent"

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/no;Ljava/lang/String;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

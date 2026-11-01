.class public final Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ia:Lorg/json/JSONObject;

.field private iw:Ljava/lang/String;

.field private kk:Lcom/bytedance/sdk/openadsdk/iw/dq/d;

.field private mn:Ljava/lang/String;

.field private o:Lcom/bytedance/sdk/openadsdk/iw/dq/dq;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Lcom/bytedance/sdk/openadsdk/iw/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->o:Lcom/bytedance/sdk/openadsdk/iw/dq/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ia:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ia:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ox:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ia:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ox:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/mp;->dq(Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->o:Lcom/bytedance/sdk/openadsdk/iw/dq/dq;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ig/dq;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->kk:Lcom/bytedance/sdk/openadsdk/iw/dq/d;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/ig/dq;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/dq/d;->dq(Lorg/json/JSONObject;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/dq/ox;-><init>()V

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/ig/dq;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/dq/ox;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "AdEvent"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->ox:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/dq;Ljava/lang/String;)V

    return-void
.end method

.method public iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->iw:Ljava/lang/String;

    return-object p0
.end method

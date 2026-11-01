.class Lcom/bytedance/embedapplog/j;
.super Lcom/bytedance/embedapplog/ji;


# instance fields
.field private final iw:Lcom/bytedance/embedapplog/u;

.field private final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/ji;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/j;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/embedapplog/j;->iw:Lcom/bytedance/embedapplog/u;

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->ig()Lcom/bytedance/embedapplog/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->ig()Lcom/bytedance/embedapplog/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ia;->n()Lcom/bytedance/embedapplog/mn;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/embedapplog/mn;->dq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

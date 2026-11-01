.class public Lcom/bytedance/sdk/openadsdk/iw/ox/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/iw/ox/p;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:Lorg/json/JSONObject;

.field private p:Lcom/bytedance/sdk/openadsdk/iw/ox/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->s:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->ox:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->p:Lcom/bytedance/sdk/openadsdk/iw/ox/p;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->s:Z

    return-void
.end method

.method public ox()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->ox:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->ox:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->ox:Lorg/json/JSONObject;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/iw/ox/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->p:Lcom/bytedance/sdk/openadsdk/iw/ox/p;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->s:Z

    return v0
.end method

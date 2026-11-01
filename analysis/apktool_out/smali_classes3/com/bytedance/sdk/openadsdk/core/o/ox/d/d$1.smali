.class final Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

.field final synthetic dq:Z

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/bytedance/sdk/openadsdk/f/d/dq/dq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->dq:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->ox:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/ox;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->dq:Z

    const-string v1, "is_button"

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;->dq(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->ox:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->p:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->ox:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;->p:Ljava/lang/String;

    const-string v6, "param is null"

    move-object v5, v4

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

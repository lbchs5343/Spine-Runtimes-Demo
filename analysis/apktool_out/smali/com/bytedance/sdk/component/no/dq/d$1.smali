.class Lcom/bytedance/sdk/component/no/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/p/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/no/dq/d;->d()Lcom/bytedance/sdk/component/no/p/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/no/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/no/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d$1;->dq:Lcom/bytedance/sdk/component/no/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/dq;->mn()Lcom/bytedance/sdk/component/no/ox/dq;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/no/dq/d$1;->dq:Lcom/bytedance/sdk/component/no/dq/d;

    invoke-static {v2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/dq/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/ox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/dq;->ox()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/sdk/component/no/ox/ox;->d(Lcom/bytedance/sdk/component/no/ox/dq;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/no/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d$1;->dq:Lcom/bytedance/sdk/component/no/dq/d;

    invoke-static {v1, v0, p2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/dq/d;Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/dq;->mn()Lcom/bytedance/sdk/component/no/ox/dq;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/no/dq/d$1;->dq:Lcom/bytedance/sdk/component/no/dq/d;

    invoke-static {v2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/dq/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/ox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/dq;->ox()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/sdk/component/no/ox/ox;->dq(Lcom/bytedance/sdk/component/no/ox/dq;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/no/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d$1;->dq:Lcom/bytedance/sdk/component/no/dq/d;

    invoke-static {v1, v0, p2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/dq/d;Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

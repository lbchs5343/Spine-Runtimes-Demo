.class final Lcom/bytedance/msdk/core/admanager/o$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/ox/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/api/ox/dq;

.field final synthetic ox:Lcom/bytedance/msdk/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/ox/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/o$6;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/o$6;->ox:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/ox/dq;->d()F

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/ox/dq;->dq()Z

    move-result v0

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/ox/dq;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/ox/dq;->p()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$6;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/o$6;->ox:Lcom/bytedance/msdk/d/s;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/ox;->ig()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "adnName"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/ox;->mp()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "ecpm"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

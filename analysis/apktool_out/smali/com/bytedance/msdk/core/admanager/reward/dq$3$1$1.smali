.class Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->n()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isGroMoreServerSideVerify"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->kk(Lcom/bytedance/msdk/core/admanager/reward/dq;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "transId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    const-string v2, ""

    const-string v3, "gromoreExtra"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->o(Lcom/bytedance/msdk/core/admanager/reward/dq;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->no(Lcom/bytedance/msdk/core/admanager/reward/dq;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "errorMsg"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    iget-object v3, v3, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v3, v3, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/ox;->ig()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "adnName"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/ox;->mp()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "ecpm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

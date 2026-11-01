.class Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;->dq(ZILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/os/Bundle;

.field final synthetic dq:Z

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;ZLandroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;

    iput-boolean p2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->dq:Z

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->d:Landroid/os/Bundle;

    iput p4, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->ox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "reward_extra_key_reward_amount"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig;->ig(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig;->mp(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->n()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_2
    return v1
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->dq:Z

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->d:Landroid/os/Bundle;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "reward_extra_key_reward_name"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig;->q(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->p:Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq;->d:Lcom/bytedance/msdk/dq/ox/ig;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig;->jy(Lcom/bytedance/msdk/dq/ox/ig;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public p()Ljava/util/Map;
    .locals 3
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

    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$2$2;->ox:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rewardType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

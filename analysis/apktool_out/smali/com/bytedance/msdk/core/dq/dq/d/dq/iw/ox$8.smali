.class Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->dq:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->s(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->s(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)Lcom/bytedance/msdk/api/dq/d;

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

    const/4 v0, 0x1

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->s(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->s(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$8;->dq:Ljava/util/Map;

    return-object v0
.end method

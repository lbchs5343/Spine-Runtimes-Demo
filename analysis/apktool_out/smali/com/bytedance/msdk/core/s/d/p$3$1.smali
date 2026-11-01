.class Lcom/bytedance/msdk/core/s/d/p$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/s/d/p$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/s/d/p$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/d/p$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$3$1;->dq:Lcom/bytedance/msdk/core/s/d/p$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/o/s;->p()Lcom/bytedance/msdk/core/o/s;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/p$3$1;->dq:Lcom/bytedance/msdk/core/s/d/p$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/p$3;->s:Lcom/bytedance/msdk/core/s/d/p;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/d/p;->ox(Lcom/bytedance/msdk/core/s/d/p;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/o/s;->dq(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

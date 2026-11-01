.class Lcom/bytedance/sdk/gromore/init/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/init/o;->dq(Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/init/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/o$1;->d:Lcom/bytedance/sdk/gromore/init/o;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/init/o$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/o$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;->dq(I)V

    :cond_0
    return-void
.end method

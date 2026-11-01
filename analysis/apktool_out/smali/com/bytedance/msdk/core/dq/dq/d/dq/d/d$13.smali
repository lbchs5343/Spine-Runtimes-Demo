.class Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;

    iput p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;

    iget v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;->dq:I

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;I)V

    return-void
.end method

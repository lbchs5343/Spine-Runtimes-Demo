.class Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;->d(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d$6;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;

    iput p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d$6;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d$6;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;

    iget v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d$6;->dq:I

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;->dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/s/d;I)V

    return-void
.end method

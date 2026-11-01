.class Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq$3$1;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->ox(Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)V

    return-void
.end method

.class Lcom/bytedance/sdk/component/ia/d/d$1;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ia/d/d;

.field final synthetic dq:Lcom/bytedance/sdk/component/ia/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d$1;->d:Lcom/bytedance/sdk/component/ia/d/d;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d$1;->dq:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d$1;->d:Lcom/bytedance/sdk/component/ia/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d;)Lcom/bytedance/sdk/component/ia/dq/s;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d$1;->d:Lcom/bytedance/sdk/component/ia/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d$1;->dq:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d;I)V

    return-void
.end method

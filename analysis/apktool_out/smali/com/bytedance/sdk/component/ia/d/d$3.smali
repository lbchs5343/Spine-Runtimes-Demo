.class Lcom/bytedance/sdk/component/ia/d/d$3;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ia/dq/p;

.field final synthetic dq:Lcom/bytedance/sdk/component/ia/dq/d;

.field final synthetic ox:Lcom/bytedance/sdk/component/ia/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->ox:Lcom/bytedance/sdk/component/ia/d/d;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->dq:Lcom/bytedance/sdk/component/ia/dq/d;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->d:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->ox:Lcom/bytedance/sdk/component/ia/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->dq:Lcom/bytedance/sdk/component/ia/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d$3;->d:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d;Lcom/bytedance/sdk/component/ia/dq/d;I)V

    return-void
.end method

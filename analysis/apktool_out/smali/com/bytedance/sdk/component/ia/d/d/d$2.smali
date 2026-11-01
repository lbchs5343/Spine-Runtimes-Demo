.class Lcom/bytedance/sdk/component/ia/d/d/d$2;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/p;Lcom/bytedance/sdk/component/ia/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/component/ia/dq/p;

.field final synthetic ox:Lcom/bytedance/sdk/component/ia/d/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->ox:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->dq:Lcom/bytedance/sdk/component/ia/dq/p;

    iput-wide p4, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->d:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->ox:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->dq:Lcom/bytedance/sdk/component/ia/dq/p;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ia/d/d/d$2;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ia/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d/d;Lcom/bytedance/sdk/component/ia/dq/p;J)V

    return-void
.end method

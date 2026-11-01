.class Lcom/bytedance/sdk/component/ia/d/iw/ox$1;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ia/d/iw/ox;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/iw/ox;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;->d:Lcom/bytedance/sdk/component/ia/d/iw/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;->dq:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;->d:Lcom/bytedance/sdk/component/ia/d/iw/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq(Lcom/bytedance/sdk/component/ia/d/iw/ox;)Lcom/bytedance/sdk/component/ia/d/iw/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/d/iw/s;->dq()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;->d:Lcom/bytedance/sdk/component/ia/d/iw/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;->dq:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq(Lcom/bytedance/sdk/component/ia/d/iw/ox;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

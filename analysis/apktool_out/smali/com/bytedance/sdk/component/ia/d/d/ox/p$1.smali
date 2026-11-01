.class Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Ljava/util/List;ZJILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Ljava/util/List;

.field final synthetic iw:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

.field final synthetic ox:J

.field final synthetic p:I

.field final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d/ox/p;Ljava/lang/String;Ljava/util/List;ZJILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->dq:Ljava/util/List;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->d:Z

    iput-wide p5, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->ox:J

    iput p7, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->p:I

    iput-object p8, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->s:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->iw:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->dq:Ljava/util/List;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->d:Z

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->ox:J

    iget v5, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->p:I

    iget-object v6, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;->s:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Lcom/bytedance/sdk/component/ia/d/d/ox/p;Ljava/util/List;ZJILjava/lang/Object;)V

    return-void
.end method

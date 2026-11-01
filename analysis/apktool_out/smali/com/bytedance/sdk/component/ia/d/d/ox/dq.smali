.class public Lcom/bytedance/sdk/component/ia/d/d/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Lcom/bytedance/sdk/component/ia/d/d/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ia/d/d/ox/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->dq:Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->d:Ljava/util/List;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/d/d/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->dq:Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    return-object v0
.end method

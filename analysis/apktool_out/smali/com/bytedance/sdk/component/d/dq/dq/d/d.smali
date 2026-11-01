.class public Lcom/bytedance/sdk/component/d/dq/dq/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/kk$dq;


# instance fields
.field d:Lcom/bytedance/sdk/component/d/dq/q;

.field dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/kk;",
            ">;"
        }
    .end annotation
.end field

.field ox:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bytedance/sdk/component/d/dq/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/kk;",
            ">;",
            "Lcom/bytedance/sdk/component/d/dq/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->ox:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->dq:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->d:Lcom/bytedance/sdk/component/d/dq/q;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->d:Lcom/bytedance/sdk/component/d/dq/q;

    iget p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->ox:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->ox:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/d/dq/kk;

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/d/dq/kk;->dq(Lcom/bytedance/sdk/component/d/dq/kk$dq;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    return-object p1
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/d;->d:Lcom/bytedance/sdk/component/d/dq/q;

    return-object v0
.end method

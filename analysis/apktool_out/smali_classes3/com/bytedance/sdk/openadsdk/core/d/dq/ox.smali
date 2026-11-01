.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;",
            ">;"
        }
    .end annotation
.end field

.field private volatile iw:I

.field private final mn:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field private p:Landroid/view/View;

.field private volatile s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/d/p;

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->s:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->s:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->p:Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq(Landroid/view/View;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d:Ljava/util/Map;

    invoke-virtual {p1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d:Ljava/util/Map;

    invoke-virtual {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    return-void

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d()V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d(I)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->s:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->d(I)V

    return-void

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->s:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "continueHandle fail for state = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->iw:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickHandlerChain"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->p:Landroid/view/View;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

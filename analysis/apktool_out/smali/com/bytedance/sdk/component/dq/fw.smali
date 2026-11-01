.class public Lcom/bytedance/sdk/component/dq/fw;
.super Ljava/lang/Object;


# static fields
.field static dq:Lcom/bytedance/sdk/component/dq/le;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/dq/dq;

.field private volatile iw:Z

.field private final ox:Lcom/bytedance/sdk/component/mp/dq;

.field private final p:Lcom/bytedance/sdk/component/dq/o;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/dq/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/dq/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/fw;->s:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/dq/fw;->iw:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/fw;->p:Lcom/bytedance/sdk/component/dq/o;

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/dq/o;->ia:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/component/dq/fw;->dq:Lcom/bytedance/sdk/component/dq/le;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/o;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/dq/le;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/i;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/o;->d:Lcom/bytedance/sdk/component/dq/dq;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/component/dq/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/dq/e;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/o;->d:Lcom/bytedance/sdk/component/dq/dq;

    iput-object v2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    invoke-virtual {v2, p1, v1}, Lcom/bytedance/sdk/component/dq/dq;->dq(Lcom/bytedance/sdk/component/dq/o;Lcom/bytedance/sdk/component/dq/i;)V

    iget-object v1, p1, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    iput-object v1, p0, Lcom/bytedance/sdk/component/dq/fw;->ox:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v1, p1, Lcom/bytedance/sdk/component/dq/o;->o:Lcom/bytedance/sdk/component/dq/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/dq/o;->iw:Z

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Z)V

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/dq/o;->mn:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/wp;->dq(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/fw;->iw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge2 is already released!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/mp/dq;)Lcom/bytedance/sdk/component/dq/o;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/dq/o;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/dq/o;-><init>(Lcom/bytedance/sdk/component/mp/dq;)V

    return-object v0
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/s<",
            "**>;)",
            "Lcom/bytedance/sdk/component/dq/fw;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/fw;->d()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/component/dq/dq;->mn:Lcom/bytedance/sdk/component/dq/mn;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/dq/mn;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)V

    return-object p0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;
    .locals 0
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/s<",
            "**>;)",
            "Lcom/bytedance/sdk/component/dq/fw;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/fw;->d()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/component/dq/dq;->mn:Lcom/bytedance/sdk/component/dq/mn;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/dq/mn;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)V

    return-object p0
.end method

.method public dq()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/fw;->iw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/dq/dq;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/fw;->iw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/fw;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/fw;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/fw;->d:Lcom/bytedance/sdk/component/dq/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/dq/dq;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

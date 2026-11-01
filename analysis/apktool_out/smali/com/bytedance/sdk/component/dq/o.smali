.class public Lcom/bytedance/sdk/component/dq/o;
.super Ljava/lang/Object;


# instance fields
.field d:Lcom/bytedance/sdk/component/dq/dq;

.field dq:Lcom/bytedance/sdk/component/mp/dq;

.field f:Lcom/bytedance/sdk/component/dq/no$d;

.field ia:Z

.field final ig:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iw:Z

.field jy:Z

.field kk:Lcom/bytedance/sdk/component/dq/mp;

.field mn:Z

.field final mp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field no:Ljava/lang/String;

.field o:Lcom/bytedance/sdk/component/dq/q;

.field ox:Ljava/lang/String;

.field p:Lcom/bytedance/sdk/component/dq/ia;

.field q:Z

.field s:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->ox:Ljava/lang/String;

    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->no:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->ig:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->mp:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->ox:Ljava/lang/String;

    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->no:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->ig:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->mp:Ljava/util/Set;

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    return-void
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/o;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->d:Lcom/bytedance/sdk/component/dq/dq;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->p:Lcom/bytedance/sdk/component/dq/ia;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/dq/fw;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/o;->ox()V

    new-instance v0, Lcom/bytedance/sdk/component/dq/fw;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/dq/fw;-><init>(Lcom/bytedance/sdk/component/dq/o;)V

    return-object v0
.end method

.method public d(Z)Lcom/bytedance/sdk/component/dq/o;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/dq/o;->mn:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/dq/o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/o;->jy:Z

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/dq;)Lcom/bytedance/sdk/component/dq/o;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/o;->d:Lcom/bytedance/sdk/component/dq/dq;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/ig;)Lcom/bytedance/sdk/component/dq/o;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/ia;->dq(Lcom/bytedance/sdk/component/dq/ig;)Lcom/bytedance/sdk/component/dq/ia;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/o;->p:Lcom/bytedance/sdk/component/dq/ia;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/o;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/o;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/dq/o;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/dq/o;->iw:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/o;->s:Landroid/content/Context;

    return-object v0
.end method

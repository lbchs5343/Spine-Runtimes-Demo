.class public Lcom/bytedance/sdk/component/no/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/p/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/no/dq/d$dq;
    }
.end annotation


# instance fields
.field private d:Lorg/json/JSONObject;

.field private dq:Ljava/lang/String;

.field private iw:I

.field private ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/component/no/p/ox;

.field private s:Lcom/bytedance/sdk/component/no/dq/dq;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/no/dq/d$dq;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->iw:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lcom/bytedance/sdk/component/no/dq/d$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->iw:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lcom/bytedance/sdk/component/no/dq/d$dq;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/no/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->d(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->ox(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->p(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/bytedance/sdk/component/no/dq/dq;-><init>(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->s:Lcom/bytedance/sdk/component/no/dq/dq;

    iput v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->iw:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->s(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->iw(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->iw(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->ox(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->d:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->p(Lcom/bytedance/sdk/component/no/dq/d$dq;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->ox:Ljava/util/Map;

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->mn(Lcom/bytedance/sdk/component/no/dq/d$dq;)Lcom/bytedance/sdk/component/no/p/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/d;->p:Lcom/bytedance/sdk/component/no/p/ox;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/no/dq/d$dq;Lcom/bytedance/sdk/component/no/dq/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/no/dq/d;-><init>(Lcom/bytedance/sdk/component/no/dq/d$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/no/dq/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/no/dq/d;Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/no/ox/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/no/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->d:Lorg/json/JSONObject;

    invoke-direct {v0, p1, v1, p2}, Lcom/bytedance/sdk/component/no/dq/dq;-><init>(Lcom/bytedance/sdk/component/no/ox/dq;Lorg/json/JSONObject;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Lcom/bytedance/sdk/component/no/p/p;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->p:Lcom/bytedance/sdk/component/no/p/ox;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/no/p/ox;->dq(Lcom/bytedance/sdk/component/no/dq/dq;)V

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/no/dq/dq;->iw()V

    sget-object v1, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/ox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/no/dq/dq;->ox()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p2}, Lcom/bytedance/sdk/component/no/ox/ox;->ox(Lcom/bytedance/sdk/component/no/ox/dq;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/no/ox/dq;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/no/p/s;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/no/dq/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/no/dq/d$1;-><init>(Lcom/bytedance/sdk/component/no/dq/d;)V

    return-object v0
.end method

.method public dq()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->iw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->p:Lcom/bytedance/sdk/component/no/p/ox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->s:Lcom/bytedance/sdk/component/no/dq/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/no/p/ox;->dq(Lcom/bytedance/sdk/component/no/dq/dq;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->s:Lcom/bytedance/sdk/component/no/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/no/dq/dq;->iw()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/ox;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/no/ox/ox;->dq()Lcom/bytedance/sdk/component/no/ox/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/d;->ox:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/no/dq/d;->dq(Lcom/bytedance/sdk/component/no/ox/dq;Ljava/util/Map;)V

    return-void
.end method

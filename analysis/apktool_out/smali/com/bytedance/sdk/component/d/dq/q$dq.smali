.class public Lcom/bytedance/sdk/component/d/dq/q$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/dq/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field dq:Lcom/bytedance/sdk/component/d/dq/dq;

.field iw:Lcom/bytedance/sdk/component/d/dq/jy;

.field mn:Lcom/bytedance/sdk/component/d/dq/iw$dq;

.field ox:Lcom/bytedance/sdk/component/d/dq/mn;

.field p:Ljava/lang/String;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/iw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/iw$dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->mn:Lcom/bytedance/sdk/component/d/dq/iw$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->ox:Lcom/bytedance/sdk/component/d/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->ox()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->p()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->dq()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->s:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->iw:Lcom/bytedance/sdk/component/d/dq/jy;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->s()Lcom/bytedance/sdk/component/d/dq/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()Lcom/bytedance/sdk/component/d/dq/q;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/dq/q$dq$1;-><init>(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/dq;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/iw;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/iw;->d()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->d:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/mn;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->ox:Lcom/bytedance/sdk/component/d/dq/mn;

    return-object p0
.end method

.method public dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/dq/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/mn;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected url: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/q$dq;->iw:Lcom/bytedance/sdk/component/d/dq/jy;

    return-object p0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    return-object p1
.end method

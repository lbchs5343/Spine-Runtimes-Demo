.class public Lcom/bytedance/sdk/component/ia/d/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/ox;",
            ">;"
        }
    .end annotation
.end field

.field public static final dq:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/ia/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private static ox:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/ia/dq/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->d:Ljava/util/List;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->ox:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq()V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/dq;)Lcom/bytedance/sdk/component/ia/dq/mn;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/d;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/d;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ia/d/d;-><init>(Lcom/bytedance/sdk/component/ia/dq/dq;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ia/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/s;)V

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    :goto_1
    const-string p0, "log_error"

    const-string v0, "config or adLogFrom or context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/ox;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->d:Ljava/util/List;

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/iw;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq(Lcom/bytedance/sdk/component/ia/dq/iw;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/ox;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->dq(Z)V

    return-void
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/ia/d/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d;->s()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d;->iw()Lcom/bytedance/sdk/component/ia/dq/kk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/d;->mn()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static iw(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->ox()V

    return-void
.end method

.method public static mn(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->ox:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/mn;->s()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/bytedance/sdk/component/ia/d/dq;->ox:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ia/d/d;-><init>()V

    invoke-virtual {v0, p0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static p(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->d()V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/mn;->p()V

    return-void
.end method

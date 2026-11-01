.class public Lcom/bytedance/sdk/component/mn/ox/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/mn/ox/dq;


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/mn/dq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "tt_ad_sdk_multi_sp"

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/mn/dq;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/mn/ox/dq/dq;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/mn/ox/dq/dq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public d(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->dq:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

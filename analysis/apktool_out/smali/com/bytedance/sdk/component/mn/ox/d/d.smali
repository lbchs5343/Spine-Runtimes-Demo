.class public Lcom/bytedance/sdk/component/mn/ox/d/d;
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
.field private dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/mn/ox/d/d;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/ox/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    return-void
.end method

.method public static dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/dq;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "tt_ad_sdk_multi_sp"

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/mn/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/component/mn/ox/d/d;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/mn/dq;

    if-nez v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/component/mn/ox/d/d;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/mn/ox/d/d;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public d(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d()V

    return-void
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->d(Ljava/lang/String;Z)Z

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;F)V

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;J)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq:Lcom/bytedance/sdk/component/mn/ox/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/d/dq;->dq(Ljava/lang/String;Z)V

    return-void
.end method

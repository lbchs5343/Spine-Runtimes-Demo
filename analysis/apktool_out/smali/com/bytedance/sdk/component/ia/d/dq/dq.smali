.class public abstract Lcom/bytedance/sdk/component/ia/d/dq/dq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
.end method

.method public dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->d(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->d(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->d(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z
.end method

.method public abstract dq(Ljava/lang/String;)Z
.end method

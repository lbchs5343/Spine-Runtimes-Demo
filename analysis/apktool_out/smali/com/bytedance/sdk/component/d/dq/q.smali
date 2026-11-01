.class public abstract Lcom/bytedance/sdk/component/d/dq/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/dq/q$dq;
    }
.end annotation


# instance fields
.field public dq:Lcom/bytedance/sdk/component/d/dq/ig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/bytedance/sdk/component/d/dq/mn;
.end method

.method public abstract dq()Ljava/lang/Object;
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/q;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    return-void
.end method

.method public iw()Lcom/bytedance/sdk/component/d/dq/jy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>(Lcom/bytedance/sdk/component/d/dq/q;)V

    return-object v0
.end method

.method public abstract ox()Ljava/lang/String;
.end method

.method public abstract p()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract s()Lcom/bytedance/sdk/component/d/dq/dq;
.end method

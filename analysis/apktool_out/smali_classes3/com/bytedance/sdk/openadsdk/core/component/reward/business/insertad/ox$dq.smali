.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:Ljava/lang/String;

.field ia:I

.field iw:Lorg/json/JSONArray;

.field kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;

.field mn:Z

.field ox:I

.field p:Z

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->ox:I

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->s:Z

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->d:I

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->iw:Lorg/json/JSONArray;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->p:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;
    .locals 11

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->d:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->ox:I

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->p:Z

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->s:Z

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->iw:Lorg/json/JSONArray;

    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->mn:Z

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->ia:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;-><init>(Ljava/lang/String;IIZZLorg/json/JSONArray;ZLcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;ILcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$1;)V

    return-object v0
.end method

.method public ox(I)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->ia:I

    return-object p0
.end method

.method public ox(Z)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox$dq;->mn:Z

    return-object p0
.end method

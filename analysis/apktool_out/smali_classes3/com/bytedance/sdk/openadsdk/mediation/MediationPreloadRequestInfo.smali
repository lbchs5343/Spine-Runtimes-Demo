.class public Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/IMediationPreloadRequestInfo;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private dq:I

.field private ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/openadsdk/AdSlot;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->dq:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->ox:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdSlot()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->dq:I

    return v0
.end method

.method public getPrimeRitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/MediationPreloadRequestInfo;->ox:Ljava/util/List;

    return-object v0
.end method

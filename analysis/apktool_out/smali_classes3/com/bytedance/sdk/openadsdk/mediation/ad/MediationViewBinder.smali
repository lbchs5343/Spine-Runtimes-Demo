.class public Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;
    }
.end annotation


# instance fields
.field public final callToActionId:I

.field public final decriptionTextId:I

.field public final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final groupImage1Id:I

.field public final groupImage2Id:I

.field public final groupImage3Id:I

.field public final iconImageId:I

.field public final layoutId:I

.field public final logoLayoutId:I

.field public final mainImageId:I

.field public final mediaViewId:I

.field public final shakeViewContainerId:I

.field public final sourceId:I

.field public final titleId:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->layoutId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->titleId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->decriptionTextId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->p:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->callToActionId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->s:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->iconImageId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mainImageId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->mn:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mediaViewId:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->ia:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->sourceId:I

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->q:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->extras:Ljava/util/Map;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->o:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage1Id:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->no:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage2Id:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->ig:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage3Id:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->kk:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->logoLayoutId:I

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder$Builder;->mp:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->shakeViewContainerId:I

    return-void
.end method


# virtual methods
.method public getCallToActionId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->callToActionId:I

    return v0
.end method

.method public getDecriptionTextId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->decriptionTextId:I

    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getGroupImage1Id()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage1Id:I

    return v0
.end method

.method public getGroupImage2Id()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage2Id:I

    return v0
.end method

.method public getGroupImage3Id()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->groupImage3Id:I

    return v0
.end method

.method public getIconImageId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->iconImageId:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->layoutId:I

    return v0
.end method

.method public getLogoLayoutId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->logoLayoutId:I

    return v0
.end method

.method public getMainImageId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mainImageId:I

    return v0
.end method

.method public getMediaViewId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mediaViewId:I

    return v0
.end method

.method public getShakeViewContainerId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->shakeViewContainerId:I

    return v0
.end method

.method public getSourceId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->sourceId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->titleId:I

    return v0
.end method

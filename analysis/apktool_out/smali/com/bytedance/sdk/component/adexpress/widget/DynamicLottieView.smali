.class public Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;
.super Lg/gkb;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iw:I

.field private mn:I

.field private ox:Z

.field private p:Z

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/gkb;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->dq:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->dq:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    return-object p0
.end method

.method private no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/gkb;->setAnimationFromUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)V

    invoke-virtual {p0, v0}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    invoke-virtual {p0}, Lg/gkb;->dq()V

    return-void
.end method

.method private o()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/lotties/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/gkb;->setAnimationFromUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)V

    invoke-virtual {p0, v0}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    if-eqz v0, :cond_9

    new-instance v0, Lg/dpc;

    invoke-direct {v0, p0}, Lg/dpc;-><init>(Lg/gkb;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    const-string v2, "app_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    const-string v3, "description"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    const-string v5, ""

    const-string v6, "..."

    const/4 v7, 0x0

    if-lez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    if-le v4, v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    if-gtz v4, :cond_1

    move-object v1, v5

    :cond_1
    :goto_0
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->iw:I

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->iw:I

    if-le v4, v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->iw:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    if-gtz v4, :cond_3

    move-object v3, v5

    :cond_3
    :goto_1
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->mn:I

    if-lez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->mn:I

    if-le v4, v8, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->mn:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    if-gtz v4, :cond_5

    move-object v2, v5

    :cond_5
    :goto_2
    const-string v4, "{appName}"

    iget-object v5, v0, Lg/dpc;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lg/dpc;->d:Lg/gkb;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lg/gkb;->invalidate()V

    :cond_6
    const-string v4, "{adTitle}"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lg/gkb;->invalidate()V

    :cond_7
    const-string v3, "{adDesc}"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lg/gkb;->invalidate()V

    :cond_8
    invoke-virtual {p0, v0}, Lg/gkb;->setTextDelegate(Lg/dpc;)V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$2;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)V

    invoke-virtual {p0, v0}, Lg/gkb;->setFontAssetDelegate(Lg/fav;)V

    :cond_9
    invoke-virtual {p0}, Lg/gkb;->dq()V

    return-void
.end method


# virtual methods
.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/gkb;->setProgress(F)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ox:Z

    invoke-virtual {p0, v0}, Lg/gkb;->dq(Z)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->p:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->no()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->o()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lg/gkb;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->kk()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lg/gkb;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lg/gkb;->iw()V

    return-void
.end method

.method public setAnimationsLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ox:Z

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->ia:Ljava/util/Map;

    return-void
.end method

.method public setImageLottieTosPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d:Ljava/lang/String;

    return-void
.end method

.method public setLottieAdDescMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->mn:I

    return-void
.end method

.method public setLottieAdTitleMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->iw:I

    return-void
.end method

.method public setLottieAppNameMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->s:I

    return-void
.end method

.method public setOnlyLoadNetImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->p:Z

    return-void
.end method

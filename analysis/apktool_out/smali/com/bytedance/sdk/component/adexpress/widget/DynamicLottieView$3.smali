.class Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->no()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;->dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lg/hcl;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lg/hcl;->d:Ljava/lang/String;

    iget-object v2, p1, Lg/hcl;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;->dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;

    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;->dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;

    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->s()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3$2;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;Lg/hcl;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/ia;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;Lg/hcl;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;)Lcom/bytedance/sdk/component/iw/kk;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;->dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView$3;->dq:Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;->d(Lcom/bytedance/sdk/component/adexpress/widget/DynamicLottieView;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private ia:I

.field private iw:I

.field private kk:I

.field private mn:I

.field private ox:[I

.field private p:[F

.field private s:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ia:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->kk:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinmian8"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->kk(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->dq:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinxian3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->kk(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->d:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->iw:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->mn:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ia:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->kk:I

    return-void
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->d:I

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->dq:I

    return-object p0
.end method

.method public dq([I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ox:[I

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/widget/mp;
    .locals 10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/mp;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ox:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->p:[F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->d:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->s:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->iw:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->mn:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ia:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->kk:I

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/mp;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v0
.end method

.method public ox(I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->iw:I

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->ia:I

    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/mp$dq;->kk:I

    return-object p0
.end method

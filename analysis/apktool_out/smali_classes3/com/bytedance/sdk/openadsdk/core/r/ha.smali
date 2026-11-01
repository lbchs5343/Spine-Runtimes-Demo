.class public Lcom/bytedance/sdk/openadsdk/core/r/ha;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/ha$d;,
        Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:I

.field private ia:I

.field private ig:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

.field private iw:I

.field private jy:I

.field private kk:Ljava/lang/String;

.field private mn:I

.field private mp:I

.field private no:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

.field private o:Ljava/lang/String;

.field private ox:Z

.field private p:I

.field private q:Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ox:Z

    const-string v0, "#008DEA"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->kk:Ljava/lang/String;

    const-string v0, "\u70b9\u51fb\u67e5\u770b"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->f()I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->fw()I

    move-result p0

    return p0
.end method

.method private f()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private fw()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v1, 0x4

    const-string v2, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->s:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->kk:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "#008DEA"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->kk:Ljava/lang/String;

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    const/16 v1, 0x14

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/ha$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/ha;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->dq:I

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->dq:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ox:Z

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const-string v1, "\u524d\u5f80\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const-string p1, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-void

    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-void

    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d:Ljava/lang/String;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/ha$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/ha;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->no:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/ha;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->q:Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;

    return-void
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->jy:I

    return v0
.end method

.method public ia(I)V
    .locals 1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->mp:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->mp:I

    return-void
.end method

.method public ig()Lcom/bytedance/sdk/openadsdk/core/r/ha$d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->no:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->mn:I

    return v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->jy:I

    return-void
.end method

.method public jy()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->mp:I

    return v0
.end method

.method public kk()I
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    return v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ia:I

    return v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    return-void
.end method

.method public mp()Lcom/bytedance/sdk/openadsdk/core/r/ha$d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ha$d;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->kk:Ljava/lang/String;

    return-object v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->iw:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->p:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const-string p1, "\u626d\u52a8\u624b\u673a"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p1, "\u5411\u4e0a\u6ed1\u52a8"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string p1, "\u6447\u4e00\u6447"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->o:Ljava/lang/String;

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ox:Z

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->s:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->mn:I

    return-void
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->q:Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->iw:I

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha;->ia:I

    return-void
.end method

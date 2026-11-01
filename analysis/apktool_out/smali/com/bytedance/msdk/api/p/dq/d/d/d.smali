.class public abstract Lcom/bytedance/msdk/api/p/dq/d/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;
    }
.end annotation


# instance fields
.field protected d:Lcom/bytedance/msdk/core/no/no;

.field protected dq:Z

.field protected iw:I

.field protected mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected ox:Lcom/bytedance/msdk/dq/dq;

.field protected p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

.field protected s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq:Z

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->s:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->iw:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public abstract d(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
.end method

.method public final d(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->s:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->s:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e2\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u5fc5\u987b\u7531GroMore\u89e6\u53d1show\u65f6\u624d\u4f1a\u751f\u6548"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public final dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/core/no/o;ILcom/bytedance/msdk/dq/dq$dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/no;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/core/no/o;",
            "I",
            "Lcom/bytedance/msdk/dq/dq$dq;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u81ea\u5b9a\u4e49ADN \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a\u5bf9\u8c61 ----------   adSlot = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_SDK_Init"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    const-string v0, "const_is_custom"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;-><init>(Lcom/bytedance/msdk/api/p/dq/d/d/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v0, p7}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq$dq;)V

    move p7, p6

    move-object p6, p5

    move-object p5, p2

    move-object p2, p1

    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual/range {p1 .. p7}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/o;I)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->no()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u8c03\u7528\u9519\u8bef\u9700\u8981\u5728load\u6210\u529f\u4e4b\u540e\u624d\u53ef\u4ee5\u8c03\u7528"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->o()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->jy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final jy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final mp()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public final no()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public final ox(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->iw:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->iw:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter click\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e60\u6b21"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public final q()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->ia()I

    move-result v0

    return v0
.end method

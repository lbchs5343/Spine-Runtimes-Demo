.class public abstract Lcom/bytedance/msdk/ox/dq/dq/ia;
.super Lcom/bytedance/msdk/ox/dq/dq/ox;


# instance fields
.field private ox:I

.field private p:I

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/dq/dq/ox;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->ox:I

    iput p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->p:I

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->s:Z

    return-void
.end method


# virtual methods
.method public final d(Lcom/bytedance/msdk/ox/dq/dq/dq;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->s:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->ox:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->ox:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/dq/dq/dq;->dq()V

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

.method public abstract dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/bytedance/msdk/ox/dq/dq/ia;->s:Z

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/msdk/ox/dq/dq/ia;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/ox/dq/dq/dq;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->p:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->p:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/dq/dq/dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter click\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e60\u6b21"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public no()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ia;->s:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x17c3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

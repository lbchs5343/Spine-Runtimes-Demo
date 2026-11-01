.class public Lcom/bytedance/sdk/openadsdk/core/o/d/d;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private dq:Ljava/lang/String;

.field private iw:Ljava/lang/String;

.field private ox:J

.field private p:J

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    return-object p1
.end method

.method private static d(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->p:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic dq(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "onDownloadFinished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "onDownloadPaused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "onDownloadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "onDownloadActive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "onInstalled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "onIdle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox:J

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox:J

    iget-wide v9, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->p:J

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    invoke-interface/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->d(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-wide v14, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox:J

    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->p:J

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    move-wide/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-interface/range {v13 .. v19}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox:J

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->p:J

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    invoke-interface/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->s:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->iw:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3c6545ad -> :sswitch_5
        -0x1a8ba5 -> :sswitch_4
        0x3596556d -> :sswitch_3
        0x3dfd6aa4 -> :sswitch_2
        0x4f136f95 -> :sswitch_1
        0x63e39919 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

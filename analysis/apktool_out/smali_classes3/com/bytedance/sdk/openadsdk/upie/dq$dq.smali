.class public Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/upie/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private iw:J

.field private ox:Ljava/lang/String;

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->s:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->p:I

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->iw:J

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/upie/dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/dq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/dq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->ox:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/dq;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->p:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/dq;I)I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->s:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq;->d(Lcom/bytedance/sdk/openadsdk/upie/dq;I)I

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->iw:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/dq;J)J

    return-object v0
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->ox:Ljava/lang/String;

    return-object p0
.end method

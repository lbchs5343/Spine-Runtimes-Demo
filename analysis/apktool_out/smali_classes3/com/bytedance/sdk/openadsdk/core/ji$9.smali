.class Lcom/bytedance/sdk/openadsdk/core/ji$9;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

.field final synthetic iw:J

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/h$ox;

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->mn:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->ox:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->p:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->s:I

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->iw:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->mn:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->p:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->s:I

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$9;->iw:J

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    return-void
.end method

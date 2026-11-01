.class Lcom/bytedance/sdk/openadsdk/core/ji$19;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/h$d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/d;

.field final synthetic iw:I

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->mn:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->dq:Lcom/bytedance/sdk/openadsdk/core/r/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->d:Lcom/bytedance/sdk/openadsdk/core/h$d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->s:I

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->iw:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->mn:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->dq:Lcom/bytedance/sdk/openadsdk/core/r/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->d:Lcom/bytedance/sdk/openadsdk/core/h$d;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->s:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->iw:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->mn:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->dq:Lcom/bytedance/sdk/openadsdk/core/r/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$19;->d:Lcom/bytedance/sdk/openadsdk/core/h$d;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

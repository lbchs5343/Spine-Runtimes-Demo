.class public final Lcom/bytedance/msdk/api/p/dq/d/ox/ox;
.super Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/String;

.field private final dq:Ljava/lang/String;

.field private final ox:I

.field private final p:I

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->d:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->ox:I

    iput p4, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->p:I

    iput-object p5, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->ox:I

    return v0
.end method

.method public dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x1f43

    iget-object v2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x1f48

    iget v2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->ox:I

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const/16 v1, 0x1f9e

    iget v2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->p:I

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const/16 v1, 0x2163

    iget-object v2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method

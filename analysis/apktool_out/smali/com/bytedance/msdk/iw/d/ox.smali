.class public Lcom/bytedance/msdk/iw/d/ox;
.super Ljava/lang/Object;


# instance fields
.field private final dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/msdk/iw/d/ox;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/iw/d/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/d/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method


# virtual methods
.method public dq()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/iw/d/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const/16 v1, 0x206d

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

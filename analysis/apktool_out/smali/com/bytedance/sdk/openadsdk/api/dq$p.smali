.class Lcom/bytedance/sdk/openadsdk/api/dq$p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/dq;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$p;->dq:Lcom/bytedance/sdk/openadsdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq;Lcom/bytedance/sdk/openadsdk/api/dq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$p;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$p;->dq:Lcom/bytedance/sdk/openadsdk/api/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Lcom/bykv/vk/openvk/api/proto/Result;)V

    const/4 p1, 0x0

    return-object p1
.end method

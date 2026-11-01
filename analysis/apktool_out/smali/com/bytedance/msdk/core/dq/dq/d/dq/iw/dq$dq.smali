.class Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

.field private dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    :cond_0
    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const p3, 0xea60

    const/4 v0, 0x0

    const-string v1, "adn return data is null"

    const/16 v2, -0x3e7

    const v3, 0xc355

    const-class v4, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-ne p1, p3, :cond_1

    invoke-interface {p2, v3, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const p3, 0xea61

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p1, :cond_4

    const p1, 0xc356

    invoke-interface {p2, p1, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->dq()I

    move-result p3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const p3, 0xea63

    if-ne p1, p3, :cond_4

    invoke-interface {p2, v3, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq$dq;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

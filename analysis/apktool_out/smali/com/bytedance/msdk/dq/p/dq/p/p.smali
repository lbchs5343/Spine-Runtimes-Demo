.class public Lcom/bytedance/msdk/dq/p/dq/p/p;
.super Lcom/bytedance/msdk/api/p/dq/mn/d;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/mn/d;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x2139

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->ox(Ljava/lang/String;)V

    const/16 v0, 0x213a

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->p(Ljava/lang/String;)V

    const/16 v0, 0x213b

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(J)V

    const/16 v0, 0x213c

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->s(Ljava/lang/String;)V

    const/16 v0, 0x213d

    const-class v1, Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(Ljava/util/Map;)V

    const/16 v0, 0x213e

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->iw(Ljava/lang/String;)V

    const/16 v0, 0x213f

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->mn(Ljava/lang/String;)V

    const/16 v0, 0x2140

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/util/Map;)V

    const/16 v0, 0x2167

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

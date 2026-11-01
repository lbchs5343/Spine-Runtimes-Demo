.class Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private volatile d:Z

.field private dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

.field private ox:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->d:Z

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

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

    const p3, 0xea68

    const v0, 0xc355

    const-string v1, "adn return data is null"

    const/16 v2, -0x3e7

    const-class v3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v4, 0x1

    if-ne p1, p3, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->d:Z

    if-nez p1, :cond_7

    iput-boolean v4, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->d:Z

    invoke-interface {p2, v0, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_0

    new-instance p3, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/d;

    invoke-direct {p3, p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/d;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2, v2, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const p3, 0xea61

    if-ne p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->d:Z

    if-nez p1, :cond_7

    iput-boolean v4, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->d:Z

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p1, :cond_7

    const p1, 0xc356

    invoke-interface {p2, p1, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->dq()I

    move-result p3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const p3, 0xea60

    if-ne p1, p3, :cond_5

    invoke-interface {p2, v0, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;

    iget-object p3, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-direct {p2, p3, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;->no()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p2, :cond_7

    new-instance p3, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;

    invoke-direct {p3, p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const p2, 0xea71

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/p;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(ILjava/lang/String;)V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

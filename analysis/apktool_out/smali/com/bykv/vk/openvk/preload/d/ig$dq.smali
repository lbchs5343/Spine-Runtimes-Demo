.class public final Lcom/bykv/vk/openvk/preload/d/ig$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/d/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/d/ia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/d/ia;",
            ">;)",
            "Lcom/bykv/vk/openvk/preload/d/ig$dq;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

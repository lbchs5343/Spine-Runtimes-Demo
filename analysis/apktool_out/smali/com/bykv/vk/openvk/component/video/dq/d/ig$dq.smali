.class public Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field d:I

.field final dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/ig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->p()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq()V
    .locals 2

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;->ox()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;->dq:Ljava/lang/String;

    return-object v0
.end method

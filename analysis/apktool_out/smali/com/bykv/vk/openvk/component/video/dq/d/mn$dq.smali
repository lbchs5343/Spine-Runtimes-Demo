.class final Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

.field dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

.field ox:Ljava/net/Socket;

.field p:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->p:Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    return-object p0
.end method

.method public dq(Ljava/net/Socket;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->ox:Ljava/net/Socket;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bykv/vk/openvk/component/video/dq/d/mn;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->ox:Ljava/net/Socket;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

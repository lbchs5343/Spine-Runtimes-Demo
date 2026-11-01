.class final Lcom/bykv/vk/openvk/preload/d/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/preload/d/d<",
        "TIN;>;"
    }
.end annotation


# instance fields
.field private dq:Lcom/bykv/vk/openvk/preload/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TIN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TIN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/d/mp;->dq:Lcom/bykv/vk/openvk/preload/d/d;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/p<",
            "*TO;>;>;)TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/mp;->dq:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/d/d;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final dq(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/p<",
            "TI;*>;>;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/mp;->dq:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

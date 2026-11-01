.class abstract Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field d:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/ia$p<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field ox:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/ia$p<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field p:I

.field final synthetic s:Lcom/bykv/vk/openvk/preload/dq/d/ia;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ia;)V
    .locals 1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/dq/d/ia;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/ia$p;->p:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->ox:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iget p1, p1, Lcom/bykv/vk/openvk/preload/dq/d/ia;->p:I

    iput p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->p:I

    return-void
.end method


# virtual methods
.method public final dq()Lcom/bykv/vk/openvk/preload/dq/d/ia$p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/dq/d/ia$p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/dq/d/ia;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/bykv/vk/openvk/preload/dq/d/ia;->p:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->p:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/ia$p;->p:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->ox:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/dq/d/ia;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->ox:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->dq(Lcom/bykv/vk/openvk/preload/dq/d/ia$p;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->ox:Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->s:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    iget v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/ia;->p:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->p:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

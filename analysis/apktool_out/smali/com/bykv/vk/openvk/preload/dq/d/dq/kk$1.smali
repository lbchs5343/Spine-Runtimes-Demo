.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;
.super Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Ljava/lang/reflect/Field;

.field final synthetic iw:Z

.field final synthetic mn:Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;

.field final synthetic ox:Lcom/bykv/vk/openvk/preload/dq/r;

.field final synthetic p:Lcom/bykv/vk/openvk/preload/dq/iw;

.field final synthetic s:Lcom/bykv/vk/openvk/preload/dq/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->mn:Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->dq:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->d:Z

    iput-object p7, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    iput-object p8, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->p:Lcom/bykv/vk/openvk/preload/dq/iw;

    iput-object p9, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->s:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    iput-boolean p10, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->iw:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->iw:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->dq:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->dq:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->p:Lcom/bykv/vk/openvk/preload/dq/iw;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->s:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method

.method public final dq(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->kk:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;->dq:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

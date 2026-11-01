.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final dq:Lcom/bykv/vk/openvk/preload/dq/i;


# instance fields
.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;

    invoke-direct {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->d:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v3, p1, v2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void
.end method

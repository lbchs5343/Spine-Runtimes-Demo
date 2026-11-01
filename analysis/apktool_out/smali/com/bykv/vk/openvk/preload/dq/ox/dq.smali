.class public Lcom/bykv/vk/openvk/preload/dq/ox/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Type;

.field public final dq:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final ox:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->ox:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->ox:I

    return-void
.end method

.method public static dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->ox:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d;->ox(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

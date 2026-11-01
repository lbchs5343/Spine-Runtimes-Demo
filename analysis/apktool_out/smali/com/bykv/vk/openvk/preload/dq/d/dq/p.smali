.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# instance fields
.field private final dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/dq/d;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/d/ox;",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/dq/dq/d;",
            ")",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bykv/vk/openvk/preload/dq/dq/d;->dq()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/preload/dq/d/kk;->dq()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/dq/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_2

    :cond_0
    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/dq/i;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/i;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/dq/fw;

    if-nez v0, :cond_3

    instance-of v1, p0, Lcom/bykv/vk/openvk/preload/dq/o;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/fw;

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    instance-of v2, p0, Lcom/bykv/vk/openvk/preload/dq/o;

    if-eqz v2, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/o;

    :cond_5
    new-instance p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;-><init>(Lcom/bykv/vk/openvk/preload/dq/fw;Lcom/bykv/vk/openvk/preload/dq/o;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)V

    :goto_2
    if-eqz p0, :cond_6

    invoke-interface {p3}, Lcom/bykv/vk/openvk/preload/dq/dq/d;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/r;->dq()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p0

    :cond_6
    return-object p0
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    const-class v1, Lcom/bykv/vk/openvk/preload/dq/dq/d;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/dq/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-static {v1, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;->dq(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/dq/d;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p1

    return-object p1
.end method

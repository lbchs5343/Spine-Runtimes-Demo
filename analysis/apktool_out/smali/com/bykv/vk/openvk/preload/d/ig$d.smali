.class public final Lcom/bykv/vk/openvk/preload/d/ig$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/d/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private d:Lcom/bykv/vk/openvk/preload/d/d/dq;

.field private dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/d/ig$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/ig;",
            ">;)",
            "Lcom/bykv/vk/openvk/preload/d/ia;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$d;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    iput-object v0, p1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object p1

    return-object p1
.end method

.method public final dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/ig$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/d/ig$dq;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duplicated branch name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

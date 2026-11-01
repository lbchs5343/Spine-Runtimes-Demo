.class final Lcom/bykv/vk/openvk/preload/dq/d/ia$dq$1;
.super Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/d/ia<",
        "TK;TV;>.ox<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq$1;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ia;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->dq()Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    move-result-object v0

    return-object v0
.end method

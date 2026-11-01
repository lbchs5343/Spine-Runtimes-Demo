.class final Lcom/bykv/vk/openvk/preload/dq/d/ox$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/d/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Type;

.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/ia;

.field final synthetic ox:Lcom/bykv/vk/openvk/preload/dq/d/ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/ia;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;->ox:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;->dq:Lcom/bykv/vk/openvk/preload/dq/ia;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;->d:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;->dq:Lcom/bykv/vk/openvk/preload/dq/ia;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/ia;->dq()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

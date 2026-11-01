.class final Lcom/bykv/vk/openvk/preload/dq/d/ia$d$1;
.super Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/ia$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/d/ia<",
        "TK;TV;>.ox<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/d/ia$d;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ia$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$d$1;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia$d;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/dq/d/ia$d;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ia;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/ia$ox;->dq()Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    move-result-object v0

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/ia$p;->iw:Ljava/lang/Object;

    return-object v0
.end method

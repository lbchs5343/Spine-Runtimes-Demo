.class public final Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "os"
    .end annotation
.end field

.field private dq:Ljava/util/List;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "gecko_accesskey"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ox:I
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "msg_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;->ox:I

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;->dq:Ljava/util/List;

    return-void
.end method

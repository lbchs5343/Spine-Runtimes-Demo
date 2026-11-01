.class public Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "packages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;",
            ">;"
        }
    .end annotation
.end field

.field public dq:Lcom/bykv/vk/openvk/preload/geckox/ig/d;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "common"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;->d:Ljava/util/List;

    return-void
.end method

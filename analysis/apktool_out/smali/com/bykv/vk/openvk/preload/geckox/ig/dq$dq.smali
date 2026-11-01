.class public Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/ig/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "group_name"
    .end annotation
.end field

.field public dq:Ljava/util/List;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "target_channels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

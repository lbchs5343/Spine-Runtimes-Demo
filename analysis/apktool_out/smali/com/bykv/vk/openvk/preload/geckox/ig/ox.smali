.class public Lcom/bykv/vk/openvk/preload/geckox/ig/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/ig/ox$dq;,
        Lcom/bykv/vk/openvk/preload/geckox/ig/ox$d;
    }
.end annotation


# instance fields
.field private d:Ljava/util/Map;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "universal_strategies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/ox$d;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Ljava/util/Map;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "packages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/ox$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;->d:Ljava/util/Map;

    return-object v0
.end method

.method public dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;->dq:Ljava/util/Map;

    return-object v0
.end method

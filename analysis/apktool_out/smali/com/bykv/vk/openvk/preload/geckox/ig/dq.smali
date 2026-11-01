.class public Lcom/bykv/vk/openvk/preload/geckox/ig/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;,
        Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;,
        Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/util/Map;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "deployments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Lcom/bykv/vk/openvk/preload/geckox/ig/d;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "common"
    .end annotation
.end field

.field private ox:Ljava/util/Map;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "local"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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
.method public d(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->ox:Ljava/util/Map;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/preload/geckox/ig/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ig/d;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->d:Ljava/util/Map;

    return-void
.end method

.method public ox(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->p:Ljava/util/Map;

    return-void
.end method

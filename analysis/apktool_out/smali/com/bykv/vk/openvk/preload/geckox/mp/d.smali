.class public Lcom/bykv/vk/openvk/preload/geckox/mp/d;
.super Ljava/lang/Object;


# instance fields
.field public final d:Ljava/lang/String;

.field public final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ox:I

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->dq:Ljava/util/Map;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->d:Ljava/lang/String;

    iput p3, p0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->ox:I

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->p:Ljava/lang/String;

    return-void
.end method

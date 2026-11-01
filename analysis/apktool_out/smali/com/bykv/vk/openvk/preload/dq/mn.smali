.class public final Lcom/bykv/vk/openvk/preload/dq/mn;
.super Ljava/lang/Object;


# instance fields
.field public d:Lcom/bykv/vk/openvk/preload/dq/gh;

.field public dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

.field public f:Z

.field public ia:Ljava/lang/String;

.field public ig:Z

.field public final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;"
        }
    .end annotation
.end field

.field public jy:Z

.field public kk:I

.field public mn:Z

.field public mp:Z

.field public no:Z

.field public o:I

.field public ox:Lcom/bykv/vk/openvk/preload/dq/s;

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/ia<",
            "*>;>;"
        }
    .end annotation
.end field

.field public q:Z

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/gh;->dq:Lcom/bykv/vk/openvk/preload/dq/gh;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->d:Lcom/bykv/vk/openvk/preload/dq/gh;

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p;->dq:Lcom/bykv/vk/openvk/preload/dq/p;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->ox:Lcom/bykv/vk/openvk/preload/dq/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->s:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->iw:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->mn:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->kk:I

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->o:I

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->no:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->ig:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->mp:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->q:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->jy:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->f:Z

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/dq/mn;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/mn;->s:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object p1

    check-cast p2, Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

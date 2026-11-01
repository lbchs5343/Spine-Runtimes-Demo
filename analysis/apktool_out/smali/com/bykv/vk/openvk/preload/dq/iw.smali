.class public final Lcom/bykv/vk/openvk/preload/dq/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/iw$dq;
    }
.end annotation


# static fields
.field private static final cd:Lcom/bykv/vk/openvk/preload/dq/ox/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final d:Lcom/bykv/vk/openvk/preload/dq/d/p;

.field final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;"
        }
    .end annotation
.end field

.field final fw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;"
        }
    .end annotation
.end field

.field private final gh:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/dq/iw$dq<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bykv/vk/openvk/preload/dq/d/ox;

.field final ia:Z

.field final ig:Ljava/lang/String;

.field final iw:Z

.field final jy:Lcom/bykv/vk/openvk/preload/dq/gh;

.field final kk:Z

.field private final le:Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

.field final mn:Z

.field final mp:I

.field final no:Z

.field public final o:Z

.field final ox:Lcom/bykv/vk/openvk/preload/dq/s;

.field final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/ia<",
            "*>;>;"
        }
    .end annotation
.end field

.field final q:I

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "*>;>;"
        }
    .end annotation
.end field

.field final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/iw;->cd:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p;->dq:Lcom/bykv/vk/openvk/preload/dq/p;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v11, Lcom/bykv/vk/openvk/preload/dq/gh;->dq:Lcom/bykv/vk/openvk/preload/dq/gh;

    const/4 v14, 0x2

    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object/from16 v16, v15

    move-object/from16 v17, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/bykv/vk/openvk/preload/dq/iw;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/p;Lcom/bykv/vk/openvk/preload/dq/s;Ljava/util/Map;ZZZZZZZLcom/bykv/vk/openvk/preload/dq/gh;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/p;Lcom/bykv/vk/openvk/preload/dq/s;Ljava/util/Map;ZZZZZZZLcom/bykv/vk/openvk/preload/dq/gh;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/d/p;",
            "Lcom/bykv/vk/openvk/preload/dq/s;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/ia<",
            "*>;>;ZZZZZZZ",
            "Lcom/bykv/vk/openvk/preload/dq/gh;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->gh:Ljava/lang/ThreadLocal;

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->r:Ljava/util/Map;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->d:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->ox:Lcom/bykv/vk/openvk/preload/dq/s;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->p:Ljava/util/Map;

    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-direct {v2, p3}, Lcom/bykv/vk/openvk/preload/dq/d/ox;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->i:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->s:Z

    iput-boolean p5, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->iw:Z

    iput-boolean p6, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->mn:Z

    iput-boolean p7, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->ia:Z

    iput-boolean p8, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->kk:Z

    iput-boolean p9, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->o:Z

    iput-boolean p10, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->no:Z

    iput-object p11, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->jy:Lcom/bykv/vk/openvk/preload/dq/gh;

    move-object/from16 p3, p12

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->ig:Ljava/lang/String;

    move/from16 p3, p13

    iput p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->mp:I

    move/from16 p3, p14

    iput p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->q:I

    move-object/from16 p3, p15

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->f:Ljava/util/List;

    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->fw:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->vw:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p4, p17

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->n:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->mp:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->mn:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->kk:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->no:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/gh;->dq:Lcom/bykv/vk/openvk/preload/dq/gh;

    if-ne p11, p4, :cond_0

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->r:Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/bykv/vk/openvk/preload/dq/iw$3;

    invoke-direct {p4}, Lcom/bykv/vk/openvk/preload/dq/iw$3;-><init>()V

    :goto_0
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-static {p6, v1, p4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_1

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->le:Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_1

    :cond_1
    new-instance p6, Lcom/bykv/vk/openvk/preload/dq/iw$1;

    invoke-direct {p6, p0}, Lcom/bykv/vk/openvk/preload/dq/iw$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;)V

    :goto_1
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    invoke-static {v1, v3, p6}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_2

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->i:Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_2

    :cond_2
    new-instance p6, Lcom/bykv/vk/openvk/preload/dq/iw$2;

    invoke-direct {p6, p0}, Lcom/bykv/vk/openvk/preload/dq/iw$2;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;)V

    :goto_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1, p6}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->wp:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->jy:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->fw:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/bykv/vk/openvk/preload/dq/iw$4;

    invoke-direct {p6, p4}, Lcom/bykv/vk/openvk/preload/dq/iw$4;-><init>(Lcom/bykv/vk/openvk/preload/dq/r;)V

    invoke-virtual {p6}, Lcom/bykv/vk/openvk/preload/dq/r;->dq()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p6

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p6}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/bykv/vk/openvk/preload/dq/iw$5;

    invoke-direct {p6, p4}, Lcom/bykv/vk/openvk/preload/dq/iw$5;-><init>(Lcom/bykv/vk/openvk/preload/dq/r;)V

    invoke-virtual {p6}, Lcom/bykv/vk/openvk/preload/dq/r;->dq()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p4

    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p6, p4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->gh:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->kx:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->ir:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->c:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->ji:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-static {p4, p6}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->bl:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-static {p4, p6}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->er:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->j:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->l:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->gx:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->v:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->vf:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->p:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/ox;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->xz:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/no;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/o;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->by:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->d:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/d;

    invoke-direct {p4, v2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;

    invoke-direct {p4, v2, p5}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Z)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

    invoke-direct {p4, v2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->le:Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->ha:Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;

    invoke-direct {p5, v2, p2, p1, p4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/s;Lcom/bykv/vk/openvk/preload/dq/d/p;Lcom/bykv/vk/openvk/preload/dq/d/dq/p;)V

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->dq:Ljava/util/List;

    return-void
.end method

.method private dq(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->mn:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->kk:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->s:Z

    iput-boolean p1, v0, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    return-object v0
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/no;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static dq(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/ig;
        }
    .end annotation

    iget-boolean v0, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iget-boolean v1, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->ia:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iget-boolean v2, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->s:Z

    iput-boolean v3, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    :try_start_0
    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_1
    move-exception p1

    new-instance v3, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {v3, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    throw p1
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/no;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/ig;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static dq(Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/dq/p/dq;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object p0

    sget-object p1, Lcom/bykv/vk/openvk/preload/dq/p/d;->o:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/bykv/vk/openvk/preload/dq/ig;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/bykv/vk/openvk/preload/dq/p/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/ig;
        }
    .end annotation

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p2

    iget-boolean v0, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iget-boolean v1, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->ia:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iget-boolean v2, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->s:Z

    iput-boolean v3, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    throw p1
.end method

.method private dq(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/ig;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/i;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/i;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->le:Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/dq/i;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/bykv/vk/openvk/preload/dq/i;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GSON cannot serialize "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->r:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/iw;->cd:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/r;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->gh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->gh:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/dq/iw$dq;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/iw$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/dq/iw$dq;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/dq/i;

    invoke-interface {v4, p0, p1}, Lcom/bykv/vk/openvk/preload/dq/i;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v3, v2, Lcom/bykv/vk/openvk/preload/dq/iw$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/r;

    if-nez v3, :cond_6

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/dq/iw$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/r;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->r:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->gh:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (pangle-v3200) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->gh:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw v2
.end method

.method public final dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p1

    return-object p1
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/p/dq;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/ig;,
            Lcom/bykv/vk/openvk/preload/dq/cd;
        }
    .end annotation

    iget-boolean v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    :try_start_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_1
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_0

    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    throw p2
.end method

.method public final dq(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->dq:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/iw;->i:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

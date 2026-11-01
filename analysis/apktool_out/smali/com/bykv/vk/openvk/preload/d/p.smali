.class public abstract Lcom/bykv/vk/openvk/preload/d/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static mn:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field

.field dq:Lcom/bykv/vk/openvk/preload/d/p;

.field public iw:J

.field public ox:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field

.field p:Lcom/bykv/vk/openvk/preload/d/d/dq;

.field s:Lcom/bykv/vk/openvk/preload/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/d/p;->mn:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/d/d/dq;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            "TIN;",
            "Lcom/bykv/vk/openvk/preload/d/d/dq;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/mp;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/d/mp;-><init>(Lcom/bykv/vk/openvk/preload/d/d;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/d/p;->dq:Lcom/bykv/vk/openvk/preload/d/p;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/d/p;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz p2, :cond_0

    iget-wide p1, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bykv/vk/openvk/preload/d/p;->mn:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    :goto_0
    invoke-virtual {p0, p5}, Lcom/bykv/vk/openvk/preload/d/p;->dq([Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Pipeline ID use up!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {v0, v1, p0, p1}, Lcom/bykv/vk/openvk/preload/d/d/dq;->d(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs dq([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

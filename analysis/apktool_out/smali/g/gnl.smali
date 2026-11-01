.class public final Lg/gnl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cbr;

.field public final b:Lg/deg;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lg/cbr;Lg/deg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lg/gnl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lg/gnl;->a:Lg/cbr;

    iput-object p2, p0, Lg/gnl;->b:Lg/deg;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 3

    iget-object v0, p0, Lg/gnl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg/gnl;->b:Lg/deg;

    invoke-interface {v0, p1, p2}, Lg/deg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

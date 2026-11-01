.class public final Lg/hh;
.super Lg/bzh;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/fyw;

.field public final synthetic b:Ljava/lang/Object;

.field public final c:Lg/aov;

.field public d:Lg/amv;


# direct methods
.method public constructor <init>(Lg/aov;Lg/fyw;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lg/hh;->a:Lg/fyw;

    iput-object p3, p0, Lg/hh;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lg/bzh;-><init>()V

    iput-object p1, p0, Lg/hh;->c:Lg/aov;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lg/bfw;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lg/hh;->c:Lg/aov;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/hh;->d:Lg/amv;

    :goto_1
    if-eqz v1, :cond_4

    sget-object v2, Lg/bfw;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    iget-object p1, p0, Lg/hh;->d:Lg/amv;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lg/bfw;->m(Lg/bfw;)V

    return-void

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_4
    return-void
.end method

.method public final f(Ljava/lang/Object;)Lg/hy;
    .locals 1

    check-cast p1, Lg/bfw;

    iget-object p1, p0, Lg/hh;->a:Lg/fyw;

    invoke-virtual {p1}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/hh;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/eg;->f:Lg/hy;

    return-object p1
.end method

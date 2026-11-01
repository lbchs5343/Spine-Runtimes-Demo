.class public final Lg/eov;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fcx;

.field public static final b:Lg/fcx;

.field public static final c:Lg/fcx;

.field public static final d:Lg/fcx;

.field public static final e:Lg/fcx;

.field public static final f:Lg/fcx;


# instance fields
.field public final g:F

.field public h:Lg/ceq;

.field public final i:Ljava/lang/Object;

.field public j:F

.field public final k:Lg/awt;

.field public l:F

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/ArrayList;

.field public p:F

.field public final q:Ljava/util/ArrayList;

.field public r:Z

.field public s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fcx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->b:Lg/fcx;

    new-instance v0, Lg/fcx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->a:Lg/fcx;

    new-instance v0, Lg/fcx;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->d:Lg/fcx;

    new-instance v0, Lg/fcx;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->e:Lg/fcx;

    new-instance v0, Lg/fcx;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->f:Lg/fcx;

    new-instance v0, Lg/fcx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/fcx;-><init>(I)V

    sput-object v0, Lg/eov;->c:Lg/fcx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lg/awt;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/eov;->l:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lg/eov;->p:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/eov;->r:Z

    iput-boolean v1, p0, Lg/eov;->m:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lg/eov;->s:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/eov;->o:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/eov;->q:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/eov;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg/eov;->k:Lg/awt;

    sget-object p1, Lg/eov;->d:Lg/fcx;

    if-eq p2, p1, :cond_4

    sget-object p1, Lg/eov;->e:Lg/fcx;

    if-eq p2, p1, :cond_4

    sget-object p1, Lg/eov;->f:Lg/fcx;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lg/eov;->c:Lg/fcx;

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    iput p1, p0, Lg/eov;->g:F

    goto :goto_2

    :cond_1
    sget-object p1, Lg/eov;->b:Lg/fcx;

    if-eq p2, p1, :cond_3

    sget-object p1, Lg/eov;->a:Lg/fcx;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lg/eov;->g:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    iput p1, p0, Lg/eov;->g:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lg/eov;->g:F

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lg/eov;->h:Lg/ceq;

    iput v0, p0, Lg/eov;->j:F

    iput-boolean v1, p0, Lg/eov;->n:Z

    return-void
.end method

.method public static t()Lg/cpp;
    .locals 4

    sget-object v0, Lg/cpp;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lg/cpp;

    new-instance v2, Lg/fdy;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lg/fdy;-><init>(I)V

    invoke-direct {v1, v2}, Lg/cpp;-><init>(Lg/fdy;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cpp;

    return-object v0
.end method


# virtual methods
.method public final u()V
    .locals 5

    iget-object v0, p0, Lg/eov;->h:Lg/ceq;

    iget-wide v0, v0, Lg/ceq;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    invoke-static {}, Lg/eov;->t()Lg/cpp;

    move-result-object v0

    iget-object v0, v0, Lg/cpp;->d:Lg/fdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lg/eov;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eov;->n:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(F)V
    .locals 7

    iget-boolean v0, p0, Lg/eov;->m:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lg/eov;->j:F

    return-void

    :cond_0
    iget-object v0, p0, Lg/eov;->h:Lg/ceq;

    if-nez v0, :cond_1

    new-instance v0, Lg/ceq;

    invoke-direct {v0, p1}, Lg/ceq;-><init>(F)V

    iput-object v0, p0, Lg/eov;->h:Lg/ceq;

    :cond_1
    iget-object v0, p0, Lg/eov;->h:Lg/ceq;

    float-to-double v1, p1

    iput-wide v1, v0, Lg/ceq;->f:D

    double-to-float p1, v1

    float-to-double v1, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v3, p1

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_9

    const v3, -0x800001

    float-to-double v4, v3

    cmpg-double v6, v1, v4

    if-ltz v6, :cond_8

    iget v1, p0, Lg/eov;->g:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lg/ceq;->b:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double v1, v1, v4

    iput-wide v1, v0, Lg/ceq;->c:D

    invoke-static {}, Lg/eov;->t()Lg/cpp;

    move-result-object v0

    iget-object v0, v0, Lg/cpp;->d:Lg/fdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_7

    iget-boolean v0, p0, Lg/eov;->m:Z

    if-nez v0, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eov;->m:Z

    iget-boolean v0, p0, Lg/eov;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/eov;->k:Lg/awt;

    iget-object v1, p0, Lg/eov;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lg/awt;->as(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lg/eov;->p:F

    :cond_2
    iget v0, p0, Lg/eov;->p:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_5

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_5

    invoke-static {}, Lg/eov;->t()Lg/cpp;

    move-result-object p1

    iget-object v0, p1, Lg/cpp;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lg/cpp;->d:Lg/fdy;

    iget-object v2, p1, Lg/cpp;->c:Lg/fvi;

    iget-object v1, v1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    new-instance v3, Lg/fie;

    invoke-direct {v3, v2}, Lg/fie;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_4

    invoke-static {}, Lg/hce;->g()F

    move-result v1

    iput v1, p1, Lg/cpp;->i:F

    iget-object v1, p1, Lg/cpp;->b:Lg/gtb;

    if-nez v1, :cond_3

    new-instance v1, Lg/gtb;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lg/gtb;-><init>(ILjava/lang/Object;)V

    iput-object v1, p1, Lg/cpp;->b:Lg/gtb;

    :cond_3
    iget-object p1, p1, Lg/cpp;->b:Lg/gtb;

    iget-object v1, p1, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v1, Lg/cji;

    if-nez v1, :cond_4

    new-instance v1, Lg/cji;

    invoke-direct {v1, p1}, Lg/cji;-><init>(Lg/gtb;)V

    iput-object v1, p1, Lg/gtb;->d:Ljava/lang/Object;

    invoke-static {v1}, Lg/hce;->c(Lg/cji;)Z

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    :cond_7
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(F)V
    .locals 2

    iget-object v0, p0, Lg/eov;->k:Lg/awt;

    iget-object v1, p0, Lg/eov;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lg/awt;->aq(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lg/eov;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lg/tn;->w(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

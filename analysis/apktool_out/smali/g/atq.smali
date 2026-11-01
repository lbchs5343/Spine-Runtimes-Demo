.class public abstract Lg/atq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fgq;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/fgq;

    invoke-direct {v0}, Lg/h;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/h;->b:Z

    new-instance v1, Lg/ud;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg/ud;-><init>(I)V

    invoke-virtual {v0, v1}, Lg/h;->_k(Lg/fqk;)V

    new-instance v1, Lg/fya;

    invoke-direct {v1}, Lg/fqk;-><init>()V

    invoke-virtual {v0, v1}, Lg/h;->_k(Lg/fqk;)V

    new-instance v1, Lg/ud;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/ud;-><init>(I)V

    invoke-virtual {v0, v1}, Lg/h;->_k(Lg/fqk;)V

    sput-object v0, Lg/atq;->a:Lg/fgq;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/atq;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/atq;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Lg/fqk;)V
    .locals 2

    sget-object v0, Lg/atq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Lg/atq;->a:Lg/fgq;

    :cond_0
    invoke-virtual {p1}, Lg/fqk;->i()Lg/fqk;

    move-result-object p1

    invoke-static {}, Lg/atq;->e()Lg/tl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fqk;

    invoke-virtual {v1, p0}, Lg/fqk;->u(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lg/fqk;->bh(Landroid/view/ViewGroup;Z)V

    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lg/cwi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lg/cwi;->a:Lg/fqk;

    iput-object p0, v0, Lg/cwi;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public static e()Lg/tl;
    .locals 3

    sget-object v0, Lg/atq;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/tl;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

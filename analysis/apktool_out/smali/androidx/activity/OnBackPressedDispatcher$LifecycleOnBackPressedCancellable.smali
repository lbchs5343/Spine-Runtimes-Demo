.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;
.implements Lg/gyx;


# instance fields
.field public a:Lg/cwu;

.field public final synthetic c:Landroidx/activity/b;

.field public final d:Lg/euu;

.field public final e:Lg/bcn;


# direct methods
.method public constructor <init>(Landroidx/activity/b;Lg/euu;Lg/bcn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/b;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lg/euu;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Lg/bcn;

    invoke-virtual {p2, p0}, Lg/euu;->l(Lg/ajm;)V

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 8

    sget-object p1, Lg/dtn;->ON_START:Lg/dtn;

    if-ne p2, p1, :cond_0

    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "onBackPressedCallback"

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Lg/bcn;

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v2, Landroidx/activity/b;->e:Lg/fbz;

    invoke-virtual {p1, p2}, Lg/fbz;->addLast(Ljava/lang/Object;)V

    new-instance p1, Lg/cwu;

    invoke-direct {p1, v2, p2}, Lg/cwu;-><init>(Landroidx/activity/b;Lg/bcn;)V

    iget-object v0, p2, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/activity/b;->h()V

    new-instance v0, Lg/bwm;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-class v3, Landroidx/activity/b;

    const-string v4, "updateEnabledCallbacks"

    const-string v5, "updateEnabledCallbacks()V"

    invoke-direct/range {v0 .. v7}, Lg/bwm;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p2, Lg/bcn;->e:Lg/fgb;

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lg/cwu;

    return-void

    :cond_0
    sget-object p1, Lg/dtn;->ON_STOP:Lg/dtn;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lg/cwu;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lg/cwu;->cancel()V

    return-void

    :cond_1
    sget-object p1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lg/euu;

    invoke-virtual {v0, p0}, Lg/euu;->n(Lg/esc;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Lg/bcn;

    iget-object v0, v0, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lg/cwu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cwu;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lg/cwu;

    return-void
.end method

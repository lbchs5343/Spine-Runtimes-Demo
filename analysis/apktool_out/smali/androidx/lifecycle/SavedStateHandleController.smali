.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public a:Z

.field public final c:Ljava/lang/String;

.field public final d:Lg/gzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/gzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->d:Lg/gzf;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 1

    sget-object v0, Lg/dtn;->ON_DESTROY:Lg/dtn;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg/euu;->n(Lg/esc;)V

    :cond_0
    return-void
.end method

.method public final e(Lg/euu;Lg/hbu;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {p1, p0}, Lg/euu;->l(Lg/ajm;)V

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->d:Lg/gzf;

    iget-object p1, p1, Lg/gzf;->c:Lg/fet;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lg/hbu;->j(Ljava/lang/String;Lg/fet;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

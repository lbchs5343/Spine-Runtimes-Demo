.class public abstract Lg/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lg/dtn;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lg/iz;

    if-eqz v0, :cond_0

    check-cast p0, Lg/iz;

    invoke-interface {p0}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p0

    instance-of v0, p0, Lg/ajs;

    if-eqz v0, :cond_0

    check-cast p0, Lg/ajs;

    invoke-virtual {p0, p1}, Lg/ajs;->k(Lg/dtn;)V

    :cond_0
    return-void
.end method

.method public static b(Lg/emf;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-object v0, Lg/ako$a;->Companion:Lg/cqy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/ako$a;

    invoke-direct {v0}, Lg/ako$a;-><init>()V

    invoke-static {p0, v0}, Lg/io;->f(Landroid/app/Activity;Lg/ako$a;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lg/ako;

    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

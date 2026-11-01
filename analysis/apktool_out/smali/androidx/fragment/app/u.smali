.class public abstract Landroidx/fragment/app/u;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Lg/aaz;
.implements Lg/ecf;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Lg/ajs;

.field final mFragments:Lg/eyr;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/p;

    invoke-direct {v0, p0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/u;)V

    new-instance v1, Lg/eyr;

    invoke-direct {v1, v0}, Lg/eyr;-><init>(Landroidx/fragment/app/p;)V

    iput-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/q;

    invoke-direct {v1, p0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/u;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Lg/hbu;->j(Ljava/lang/String;Lg/fet;)V

    new-instance v0, Landroidx/fragment/app/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/u;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Lg/dts;)V

    new-instance v0, Landroidx/fragment/app/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/u;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(Lg/dts;)V

    new-instance v0, Landroidx/fragment/app/d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/u;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lg/buv;)V

    return-void
.end method

.method public static c(Landroidx/fragment/app/v;Lg/fqv;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/v;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/u;->c(Landroidx/fragment/app/v;Lg/fqv;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lg/cdn;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lg/cdn;->f()V

    iget-object v2, v2, Lg/cdn;->a:Lg/ajs;

    iget-object v2, v2, Lg/ajs;->g:Lg/fqv;

    sget-object v4, Lg/fqv;->STARTED:Lg/fqv;

    invoke-virtual {v2, v4}, Lg/fqv;->b(Lg/fqv;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lg/cdn;

    iget-object v0, v0, Lg/cdn;->a:Lg/ajs;

    invoke-virtual {v0, p1}, Lg/ajs;->p(Lg/fqv;)V

    const/4 v0, 0x1

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Lg/ajs;

    iget-object v2, v2, Lg/ajs;->g:Lg/fqv;

    sget-object v4, Lg/fqv;->STARTED:Lg/fqv;

    invoke-virtual {v2, v4}, Lg/fqv;->b(Lg/fqv;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Lg/ajs;

    invoke-virtual {v0, p1}, Lg/ajs;->p(Lg/fqv;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    iget-object v0, v0, Landroidx/fragment/app/v;->v:Landroidx/fragment/app/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/o;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lg/emf;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/u;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/u;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/u;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lg/cyt;->a(Lg/iz;)Lg/gkm;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lg/gkm;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/v;->bh(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/v;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    return-object v0
.end method

.method public getSupportLoaderManager()Lg/cyt;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lg/cyt;->a(Lg/iz;)Lg/gkm;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object v0

    sget-object v1, Lg/fqv;->CREATED:Lg/fqv;

    invoke-static {v0, v1}, Landroidx/fragment/app/u;->c(Landroidx/fragment/app/v;Lg/fqv;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    invoke-virtual {v0}, Lg/eyr;->b()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v0, Lg/dtn;->ON_CREATE:Lg/dtn;

    invoke-virtual {p1, v0}, Lg/ajs;->k(Lg/dtn;)V

    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object p1, p1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object p1, p1, Lg/fay;->f:Lg/dmi;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/v;->aj:Z

    iput-boolean v0, p1, Landroidx/fragment/app/v;->ag:Z

    iget-object v1, p1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v0, v1, Landroidx/fragment/app/l;->f:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/v;->cd(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/u;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/u;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->as()V

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object p1, p1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object p1, p1, Lg/fay;->f:Lg/dmi;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/v;->bx(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/u;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->cd(I)V

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v1, Lg/dtn;->ON_PAUSE:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    invoke-virtual {v0}, Lg/eyr;->b()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    invoke-virtual {v0}, Lg/eyr;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/u;->mResumed:Z

    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v1, v1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Lg/fay;->f:Lg/dmi;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->ci(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v1, Lg/dtn;->ON_RESUME:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v0, v0, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Lg/fay;->f:Lg/dmi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/v;->aj:Z

    iput-boolean v1, v0, Landroidx/fragment/app/v;->ag:Z

    iget-object v2, v0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v1, v2, Landroidx/fragment/app/l;->f:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->cd(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    invoke-virtual {v0}, Lg/eyr;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/u;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/u;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v1, v1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Lg/fay;->f:Lg/dmi;

    iput-boolean v0, v1, Landroidx/fragment/app/v;->aj:Z

    iput-boolean v0, v1, Landroidx/fragment/app/v;->ag:Z

    iget-object v3, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v0, v3, Landroidx/fragment/app/l;->f:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/v;->cd(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v1, v1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Lg/fay;->f:Lg/dmi;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/v;->ci(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v2, Lg/dtn;->ON_START:Lg/dtn;

    invoke-virtual {v1, v2}, Lg/ajs;->k(Lg/dtn;)V

    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v1, v1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Lg/fay;->f:Lg/dmi;

    iput-boolean v0, v1, Landroidx/fragment/app/v;->aj:Z

    iput-boolean v0, v1, Landroidx/fragment/app/v;->ag:Z

    iget-object v2, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v0, v2, Landroidx/fragment/app/l;->f:Z

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->cd(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    invoke-virtual {v0}, Lg/eyr;->b()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/u;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object v1, v1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Lg/fay;->f:Lg/dmi;

    iput-boolean v0, v1, Landroidx/fragment/app/v;->ag:Z

    iget-object v2, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v0, v2, Landroidx/fragment/app/l;->f:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->cd(I)V

    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v1, Lg/dtn;->ON_STOP:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Lg/bca;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Lg/bca;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/u;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public abstract supportInvalidateOptionsMenu()V
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

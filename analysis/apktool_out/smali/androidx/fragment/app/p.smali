.class public final Landroidx/fragment/app/p;
.super Lg/fay;
.source "SourceFile"

# interfaces
.implements Lg/gpp;
.implements Lg/fxh;
.implements Lg/dnu;
.implements Lg/gbv;
.implements Lg/gyj;
.implements Lg/eud;
.implements Lg/cdh;
.implements Lg/gff;
.implements Lg/cem;
.implements Lg/bkp;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-direct {p0, p1}, Lg/fay;-><init>(Landroidx/fragment/app/u;)V

    return-void
.end method


# virtual methods
.method public final addMenuProvider(Lg/arz;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Lg/arz;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Lg/dts;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(Lg/dts;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnPictureInPictureModeChangedListener(Lg/dts;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnTrimMemoryListener(Lg/dts;)V

    return-void
.end method

.method public final b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/u;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/a;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/a;

    move-result-object v0

    return-object v0
.end method

.method public final getLifecycle()Lg/euu;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/b;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object v0

    return-object v0
.end method

.method public final getSavedStateRegistry()Lg/hbu;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lg/hbu;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModelStore()Lg/wg;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Lg/wg;

    move-result-object v0

    return-object v0
.end method

.method public final removeMenuProvider(Lg/arz;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Lg/arz;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnConfigurationChangedListener(Lg/dts;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(Lg/dts;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnPictureInPictureModeChangedListener(Lg/dts;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(Lg/dts;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnTrimMemoryListener(Lg/dts;)V

    return-void
.end method

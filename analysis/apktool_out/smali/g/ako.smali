.class public Lg/ako;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/ako$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg/dtn;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lg/dz;->a(Landroid/app/Activity;Lg/dtn;)V

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Lg/dtn;->ON_CREATE:Lg/dtn;

    invoke-virtual {p0, p1}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lg/dtn;->ON_DESTROY:Lg/dtn;

    invoke-virtual {p0, v0}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lg/dtn;->ON_PAUSE:Lg/dtn;

    invoke-virtual {p0, v0}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lg/dtn;->ON_RESUME:Lg/dtn;

    invoke-virtual {p0, v0}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lg/dtn;->ON_START:Lg/dtn;

    invoke-virtual {p0, v0}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Lg/dtn;->ON_STOP:Lg/dtn;

    invoke-virtual {p0, v0}, Lg/ako;->b(Lg/dtn;)V

    return-void
.end method

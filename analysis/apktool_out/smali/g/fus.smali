.class public abstract Lg/fus;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lg/iz;


# instance fields
.field public final f:Lg/dzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lg/dzh;

    invoke-direct {v0, p0}, Lg/dzh;-><init>(Lg/fus;)V

    iput-object v0, p0, Lg/fus;->f:Lg/dzh;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Lg/euu;
    .locals 1

    iget-object v0, p0, Lg/fus;->f:Lg/dzh;

    iget-object v0, v0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Lg/ajs;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fus;->f:Lg/dzh;

    sget-object v0, Lg/dtn;->ON_START:Lg/dtn;

    invoke-virtual {p1, v0}, Lg/dzh;->v(Lg/dtn;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lg/fus;->f:Lg/dzh;

    sget-object v1, Lg/dtn;->ON_CREATE:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/dzh;->v(Lg/dtn;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lg/dtn;->ON_STOP:Lg/dtn;

    iget-object v1, p0, Lg/fus;->f:Lg/dzh;

    invoke-virtual {v1, v0}, Lg/dzh;->v(Lg/dtn;)V

    sget-object v0, Lg/dtn;->ON_DESTROY:Lg/dtn;

    invoke-virtual {v1, v0}, Lg/dzh;->v(Lg/dtn;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lg/fus;->f:Lg/dzh;

    sget-object v1, Lg/dtn;->ON_START:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/dzh;->v(Lg/dtn;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

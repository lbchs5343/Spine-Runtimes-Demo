.class public final synthetic Lg/gph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lg/fsr;


# direct methods
.method public synthetic constructor <init>(Lg/fsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gph;->a:Lg/fsr;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lg/gph;->a:Lg/fsr;

    iget-boolean v1, v0, Lg/fsr;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/fsr;->d:Z

    sget-object v1, Lg/fsr;->a:Landroid/os/Handler;

    new-instance v2, Lg/fvi;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

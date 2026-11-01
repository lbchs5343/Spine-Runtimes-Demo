.class public final synthetic Lg/ewy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lg/eax;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lg/eax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ewy;->a:Landroid/os/Handler;

    iput-object p2, p0, Lg/ewy;->b:Lg/eax;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lg/ewy;->a:Landroid/os/Handler;

    iget-object v0, p0, Lg/ewy;->b:Lg/eax;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

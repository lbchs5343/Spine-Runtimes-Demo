.class public final synthetic Lg/csb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg/amu;

.field public final synthetic b:Lg/ero;

.field public final synthetic c:Lg/eih;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lg/ero;Lg/eih;ILg/amu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/csb;->b:Lg/ero;

    iput-object p2, p0, Lg/csb;->c:Lg/eih;

    iput p3, p0, Lg/csb;->d:I

    iput-object p4, p0, Lg/csb;->a:Lg/amu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Lg/csb;->c:Lg/eih;

    invoke-virtual {v3}, Lg/eih;->a()I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/csb;->b:Lg/ero;

    iget-object v6, v1, Lg/ero;->an:Landroid/os/Handler;

    new-instance v0, Lg/vy;

    iget v2, p0, Lg/csb;->d:I

    iget-object v5, p0, Lg/csb;->a:Lg/amu;

    invoke-direct/range {v0 .. v5}, Lg/vy;-><init>(Lg/ero;ILg/eih;ILg/amu;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

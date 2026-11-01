.class public final Lg/djn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lg/cfo;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lg/cfo;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/djn;->b:Lg/cfo;

    iput p2, p0, Lg/djn;->c:I

    iput p3, p0, Lg/djn;->d:I

    iput-object p4, p0, Lg/djn;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg/djn;->b:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget v1, p0, Lg/djn;->d:I

    iget-object v2, p0, Lg/djn;->a:Landroid/os/Bundle;

    iget v3, p0, Lg/djn;->c:I

    invoke-virtual {v0, v3, v1, v2}, Lg/gwy;->onActivityResized(IILandroid/os/Bundle;)V

    return-void
.end method

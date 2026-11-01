.class public final Lg/fil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lg/cfo;

.field public final synthetic d:I

.field public final synthetic e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lg/cfo;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fil;->c:Lg/cfo;

    iput p2, p0, Lg/fil;->d:I

    iput-object p3, p0, Lg/fil;->e:Landroid/net/Uri;

    iput-boolean p4, p0, Lg/fil;->a:Z

    iput-object p5, p0, Lg/fil;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg/fil;->c:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-boolean v1, p0, Lg/fil;->a:Z

    iget-object v2, p0, Lg/fil;->b:Landroid/os/Bundle;

    iget v3, p0, Lg/fil;->d:I

    iget-object v4, p0, Lg/fil;->e:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4, v1, v2}, Lg/gwy;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method

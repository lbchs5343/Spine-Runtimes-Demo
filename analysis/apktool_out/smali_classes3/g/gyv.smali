.class public final Lg/gyv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:Lg/cxt;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public synthetic constructor <init>(Lg/fx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lg/fx;->c:Z

    iput-boolean v0, p0, Lg/gyv;->c:Z

    iget v0, p1, Lg/fx;->e:I

    iput v0, p0, Lg/gyv;->e:I

    iget v0, p1, Lg/fx;->f:I

    iput v0, p0, Lg/gyv;->f:I

    iget-boolean v0, p1, Lg/fx;->a:Z

    iput-boolean v0, p0, Lg/gyv;->a:Z

    iget v0, p1, Lg/fx;->d:I

    iput v0, p0, Lg/gyv;->b:I

    iget-object v0, p1, Lg/fx;->b:Lg/cxt;

    iput-object v0, p0, Lg/gyv;->d:Lg/cxt;

    iget-boolean p1, p1, Lg/fx;->g:Z

    iput-boolean p1, p0, Lg/gyv;->g:Z

    return-void
.end method

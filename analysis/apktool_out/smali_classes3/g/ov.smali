.class public final Lg/ov;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lg/cxt;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method public synthetic constructor <init>(Lg/bkx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lg/bkx;->d:Z

    iput-boolean v0, p0, Lg/ov;->d:Z

    iget v0, p1, Lg/bkx;->g:I

    iput v0, p0, Lg/ov;->g:I

    iget-boolean v0, p1, Lg/bkx;->h:Z

    iput-boolean v0, p0, Lg/ov;->h:Z

    iget v0, p1, Lg/bkx;->c:I

    iput v0, p0, Lg/ov;->b:I

    iget-object v0, p1, Lg/bkx;->b:Lg/cxt;

    iput-object v0, p0, Lg/ov;->c:Lg/cxt;

    iget-boolean v0, p1, Lg/bkx;->e:Z

    iput-boolean v0, p0, Lg/ov;->e:Z

    iget-boolean v0, p1, Lg/bkx;->i:Z

    iput-boolean v0, p0, Lg/ov;->i:Z

    iget v0, p1, Lg/bkx;->a:I

    iput v0, p0, Lg/ov;->a:I

    iget p1, p1, Lg/bkx;->f:I

    iput p1, p0, Lg/ov;->f:I

    return-void
.end method

.class public abstract Lg/den;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public i:Ljava/lang/String;

.field public j:I

.field public k:Z

.field public l:Ljava/util/ArrayList;

.field public m:I

.field public n:Ljava/lang/CharSequence;

.field public o:I

.field public p:Ljava/util/ArrayList;

.field public q:I

.field public r:Ljava/util/ArrayList;

.field public s:I

.field public t:I

.field public u:Ljava/lang/CharSequence;

.field public v:I

.field public w:Z


# virtual methods
.method public abstract h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public final x(Lg/fzt;)V
    .locals 1

    iget-object v0, p0, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lg/den;->t:I

    iput v0, p1, Lg/fzt;->b:I

    iget v0, p0, Lg/den;->v:I

    iput v0, p1, Lg/fzt;->c:I

    iget v0, p0, Lg/den;->m:I

    iput v0, p1, Lg/fzt;->e:I

    iget v0, p0, Lg/den;->o:I

    iput v0, p1, Lg/fzt;->i:I

    return-void
.end method

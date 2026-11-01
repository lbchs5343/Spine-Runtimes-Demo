.class public final Lg/fm;
.super Lg/cet;
.source "SourceFile"


# instance fields
.field public u:Lg/adh;

.field public v:Lg/gez;

.field public final w:Lg/adh;

.field public x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/adh;Lg/adh;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/a;-><init>()V

    iput-object p1, p0, Lg/fm;->w:Lg/adh;

    iput-object p2, p0, Lg/fm;->u:Lg/adh;

    iget-object p2, p1, Lg/adh;->f:Lg/fm;

    if-nez p2, :cond_0

    iput-object p0, p1, Lg/adh;->f:Lg/fm;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final m(Lg/jn;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/a;->m(Lg/jn;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fm;->x:Ljava/lang/Object;

    iput-object p1, p0, Lg/fm;->v:Lg/gez;

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lg/fm;->w:Lg/adh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/adh;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/adh;->c:Z

    iput-boolean v1, v0, Lg/adh;->l:Z

    invoke-virtual {v0}, Lg/adh;->n()V

    new-instance v1, Lg/ezv;

    invoke-direct {v1, v0}, Lg/ezv;-><init>(Lg/adh;)V

    iput-object v1, v0, Lg/adh;->m:Lg/ezv;

    invoke-virtual {v0}, Lg/adh;->o()V

    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lg/cet;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/fm;->u:Lg/adh;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/adh;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/adh;->j:Z

    iput-boolean v0, p1, Lg/adh;->l:Z

    iput-boolean v0, p1, Lg/adh;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fm;->u:Lg/adh;

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lg/fm;->w:Lg/adh;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/adh;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fm;->w:Lg/adh;

    invoke-static {v1, v0}, Lg/erl;->au(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Z)Lg/adh;
    .locals 5

    iget-object v0, p0, Lg/fm;->w:Lg/adh;

    invoke-virtual {v0}, Lg/adh;->n()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/adh;->l:Z

    iget-object v2, p0, Lg/fm;->v:Lg/gez;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lg/fm;->m(Lg/jn;)V

    if-eqz p1, :cond_0

    iget-boolean v4, v2, Lg/gez;->g:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lg/gez;->e:Ljava/lang/Object;

    check-cast v4, Lg/cuz;

    iput-boolean v3, v4, Lg/cuz;->g:Z

    :cond_0
    iget-object v4, v0, Lg/adh;->f:Lg/fm;

    if-eqz v4, :cond_5

    if-ne v4, p0, :cond_4

    const/4 v4, 0x0

    iput-object v4, v0, Lg/adh;->f:Lg/fm;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lg/gez;->g:Z

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    iput-boolean v1, v0, Lg/adh;->c:Z

    iput-boolean v3, v0, Lg/adh;->j:Z

    iput-boolean v3, v0, Lg/adh;->l:Z

    iput-boolean v3, v0, Lg/adh;->e:Z

    iget-object p1, p0, Lg/fm;->u:Lg/adh;

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lg/fm;->x:Ljava/lang/Object;

    iget-object v1, p0, Lg/fm;->v:Lg/gez;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/a;->m(Lg/jn;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/a;->n(Lg/iz;Lg/jn;)V

    :cond_0
    return-void
.end method

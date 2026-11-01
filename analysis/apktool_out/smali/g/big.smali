.class public Lg/big;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/exs;


# instance fields
.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Lg/mi;

.field public final d:Ljava/util/ArrayList;

.field public e:Lg/gfv;

.field public f:Lg/mi;

.field public g:I

.field public h:Lg/eeh;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>(Lg/mi;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/big;->f:Lg/mi;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/big;->i:Z

    iput-boolean v1, p0, Lg/big;->k:Z

    sget-object v2, Lg/gfv;->UNKNOWN:Lg/gfv;

    iput-object v2, p0, Lg/big;->e:Lg/gfv;

    const/4 v2, 0x1

    iput v2, p0, Lg/big;->a:I

    iput-object v0, p0, Lg/big;->h:Lg/eeh;

    iput-boolean v1, p0, Lg/big;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/big;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/big;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/big;->c:Lg/mi;

    return-void
.end method


# virtual methods
.method public m(I)V
    .locals 1

    iget-boolean v0, p0, Lg/big;->j:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/big;->j:Z

    iput p1, p0, Lg/big;->l:I

    iget-object p1, p0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/exs;

    invoke-interface {v0, v0}, Lg/exs;->v(Lg/exs;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final n(Lg/mi;)V
    .locals 1

    iget-object v0, p0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lg/big;->j:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p1}, Lg/exs;->v(Lg/exs;)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/big;->j:Z

    iput v0, p0, Lg/big;->l:I

    iput-boolean v0, p0, Lg/big;->k:Z

    iput-boolean v0, p0, Lg/big;->i:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/big;->c:Lg/mi;

    iget-object v1, v1, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/big;->e:Lg/gfv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/big;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lg/big;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unresolved"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") <t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lg/exs;)V
    .locals 5

    iget-object p1, p0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/big;

    iget-boolean v1, v1, Lg/big;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/big;->k:Z

    iget-object v1, p0, Lg/big;->f:Lg/mi;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Lg/exs;->v(Lg/exs;)V

    :cond_2
    iget-boolean v1, p0, Lg/big;->i:Z

    if-eqz v1, :cond_3

    iget-object p1, p0, Lg/big;->c:Lg/mi;

    invoke-interface {p1, p0}, Lg/exs;->v(Lg/exs;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    instance-of v4, v3, Lg/eeh;

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    if-ne v2, v0, :cond_7

    iget-boolean p1, v1, Lg/big;->j:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lg/big;->h:Lg/eeh;

    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lg/big;->j:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lg/big;->a:I

    iget p1, p1, Lg/big;->l:I

    mul-int v0, v0, p1

    iput v0, p0, Lg/big;->g:I

    :cond_6
    iget p1, v1, Lg/big;->l:I

    iget v0, p0, Lg/big;->g:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lg/big;->m(I)V

    :cond_7
    iget-object p1, p0, Lg/big;->f:Lg/mi;

    if-eqz p1, :cond_8

    invoke-interface {p1, p0}, Lg/exs;->v(Lg/exs;)V

    :cond_8
    :goto_1
    return-void
.end method

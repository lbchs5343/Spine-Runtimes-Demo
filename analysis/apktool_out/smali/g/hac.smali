.class public final Lg/hac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lg/brh;

.field public final c:Lg/dih;

.field public d:Ljava/util/HashSet;

.field public e:Lg/hac;

.field public f:Lg/crb;

.field public g:I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lg/brh;Lg/dih;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/hac;->d:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lg/hac;->i:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lg/hac;->a:I

    iput-object p1, p0, Lg/hac;->b:Lg/brh;

    iput-object p2, p0, Lg/hac;->c:Lg/dih;

    return-void
.end method


# virtual methods
.method public final j()Z
    .locals 1

    iget-object v0, p0, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lg/hac;->f:Lg/crb;

    if-nez v0, :cond_0

    new-instance v0, Lg/crb;

    sget-object v1, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    invoke-direct {v0, v1}, Lg/crb;-><init>(Lg/gdo;)V

    iput-object v0, p0, Lg/hac;->f:Lg/crb;

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/crb;->q()V

    return-void
.end method

.method public final l()I
    .locals 1

    iget-boolean v0, p0, Lg/hac;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lg/hac;->g:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lg/hac;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/hac;->h:Z

    return-void
.end method

.method public final n()I
    .locals 3

    iget-object v0, p0, Lg/hac;->b:Lg/brh;

    iget v0, v0, Lg/brh;->aq:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lg/hac;->a:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/hac;->b:Lg/brh;

    iget v2, v2, Lg/brh;->aq:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lg/hac;->i:I

    return v0
.end method

.method public final o(Lg/hac;I)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lg/hac;->r(Lg/hac;IIZ)Z

    return-void
.end method

.method public final p()Lg/hac;
    .locals 3

    iget-object v0, p0, Lg/hac;->c:Lg/dih;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lg/hac;->b:Lg/brh;

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    iget-object v0, v2, Lg/brh;->bx:Lg/hac;

    return-object v0

    :pswitch_1
    iget-object v0, v2, Lg/brh;->cw:Lg/hac;

    return-object v0

    :pswitch_2
    iget-object v0, v2, Lg/brh;->as:Lg/hac;

    return-object v0

    :pswitch_3
    iget-object v0, v2, Lg/brh;->br:Lg/hac;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final q(Lg/hac;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lg/hac;->b:Lg/brh;

    iget-object p1, p1, Lg/hac;->c:Lg/dih;

    iget-object v2, p0, Lg/hac;->c:Lg/dih;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    sget-object p1, Lg/dih;->BASELINE:Lg/dih;

    if-ne v2, p1, :cond_2

    iget-boolean p1, v1, Lg/brh;->cx:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/hac;->b:Lg/brh;

    iget-boolean p1, p1, Lg/brh;->cx:Z

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    sget-object v1, Lg/dih;->BASELINE:Lg/dih;

    if-eq p1, v1, :cond_4

    sget-object v1, Lg/dih;->CENTER_X:Lg/dih;

    if-eq p1, v1, :cond_4

    sget-object v1, Lg/dih;->CENTER_Y:Lg/dih;

    if-eq p1, v1, :cond_4

    return v3

    :cond_4
    return v0

    :pswitch_1
    sget-object v1, Lg/dih;->LEFT:Lg/dih;

    if-eq p1, v1, :cond_6

    sget-object v1, Lg/dih;->RIGHT:Lg/dih;

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v0

    :pswitch_2
    sget-object v2, Lg/dih;->TOP:Lg/dih;

    if-eq p1, v2, :cond_8

    sget-object v2, Lg/dih;->BOTTOM:Lg/dih;

    if-ne p1, v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x1

    :goto_2
    instance-of v1, v1, Lg/aar;

    if-eqz v1, :cond_b

    if-nez v2, :cond_a

    sget-object v1, Lg/dih;->CENTER_Y:Lg/dih;

    if-ne p1, v1, :cond_9

    goto :goto_3

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v3

    :cond_b
    return v2

    :pswitch_3
    sget-object v2, Lg/dih;->LEFT:Lg/dih;

    if-eq p1, v2, :cond_d

    sget-object v2, Lg/dih;->RIGHT:Lg/dih;

    if-ne p1, v2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v2, 0x1

    :goto_5
    instance-of v1, v1, Lg/aar;

    if-eqz v1, :cond_10

    if-nez v2, :cond_f

    sget-object v1, Lg/dih;->CENTER_X:Lg/dih;

    if-ne p1, v1, :cond_e

    goto :goto_6

    :cond_e
    return v0

    :cond_f
    :goto_6
    return v3

    :cond_10
    return v2

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final r(Lg/hac;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/hac;->s()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Lg/hac;->q(Lg/hac;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lg/hac;->e:Lg/hac;

    iget-object p4, p1, Lg/hac;->d:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lg/hac;->d:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Lg/hac;->e:Lg/hac;

    iget-object p1, p1, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Lg/hac;->i:I

    iput p3, p0, Lg/hac;->a:I

    return v0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lg/hac;->e:Lg/hac;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/hac;->e:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/hac;->e:Lg/hac;

    iput-object v1, v0, Lg/hac;->d:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lg/hac;->d:Ljava/util/HashSet;

    iput-object v1, p0, Lg/hac;->e:Lg/hac;

    const/4 v0, 0x0

    iput v0, p0, Lg/hac;->i:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lg/hac;->a:I

    iput-boolean v0, p0, Lg/hac;->h:Z

    iput v0, p0, Lg/hac;->g:I

    return-void
.end method

.method public final t(ILjava/util/ArrayList;Lg/ic;)V
    .locals 2

    iget-object v0, p0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    invoke-static {v1, p1, p2, p3}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/hac;->b:Lg/brh;

    iget-object v1, v1, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hac;->c:Lg/dih;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 3

    iget-object v0, p0, Lg/hac;->d:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hac;

    invoke-virtual {v2}, Lg/hac;->p()Lg/hac;

    move-result-object v2

    invoke-virtual {v2}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

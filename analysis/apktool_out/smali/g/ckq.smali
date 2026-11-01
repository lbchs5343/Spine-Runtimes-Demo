.class public final Lg/ckq;
.super Lg/bvw;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lg/cmh;I)V
    .locals 0

    iput p2, p0, Lg/ckq;->g:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "tracker"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/4 p1, 0x6

    iput p1, p0, Lg/ckq;->h:I

    return-void

    :pswitch_0
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/16 p1, 0x9

    iput p1, p0, Lg/ckq;->h:I

    return-void

    :pswitch_1
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/4 p1, 0x7

    iput p1, p0, Lg/ckq;->h:I

    return-void

    :pswitch_2
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/4 p1, 0x7

    iput p1, p0, Lg/ckq;->h:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lg/euw;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ckq;->g:I

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/4 p1, 0x5

    iput p1, p0, Lg/ckq;->h:I

    return-void
.end method


# virtual methods
.method public final b(Lg/fkj;)Z
    .locals 2

    iget v0, p0, Lg/ckq;->g:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-boolean p1, p1, Lg/bho;->f:Z

    return p1

    :pswitch_0
    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-object p1, p1, Lg/bho;->e:Lg/dnx;

    sget-object v0, Lg/dnx;->UNMETERED:Lg/dnx;

    if-eq p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lg/dnx;->TEMPORARILY_UNMETERED:Lg/dnx;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_1
    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-object p1, p1, Lg/bho;->e:Lg/dnx;

    sget-object v0, Lg/dnx;->CONNECTED:Lg/dnx;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_2
    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-boolean p1, p1, Lg/bho;->d:Z

    return p1

    :pswitch_3
    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-boolean p1, p1, Lg/bho;->i:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg/ckq;->g:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/ckq;->h:I

    return v0

    :pswitch_0
    iget v0, p0, Lg/ckq;->h:I

    return v0

    :pswitch_1
    iget v0, p0, Lg/ckq;->h:I

    return v0

    :pswitch_2
    iget v0, p0, Lg/ckq;->h:I

    return v0

    :pswitch_3
    iget v0, p0, Lg/ckq;->h:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lg/ckq;->g:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Lg/dod;

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lg/dod;->b:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lg/dod;->d:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1

    :pswitch_1
    check-cast p1, Lg/dod;

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lg/dod;->b:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lg/dod;->c:Z

    if-nez p1, :cond_4

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

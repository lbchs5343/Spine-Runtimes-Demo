.class public final Lg/eik;
.super Lg/epr;
.source "SourceFile"


# instance fields
.field public final transient a:Lg/cil;

.field public final transient b:Lg/fbk;


# direct methods
.method public constructor <init>(Lg/cil;Lg/fbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lg/eik;->a:Lg/cil;

    iput-object p2, p0, Lg/eik;->b:Lg/fbk;

    return-void
.end method


# virtual methods
.method public final c()Lg/fkz;
    .locals 1

    iget-object v0, p0, Lg/eik;->b:Lg/fbk;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/eik;->a:Lg/cil;

    invoke-virtual {v0, p1}, Lg/cil;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lg/eik;->b:Lg/fbk;

    invoke-virtual {v0, p1}, Lg/fkz;->d([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lg/eik;->b:Lg/fbk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/eik;->a:Lg/cil;

    iget v0, v0, Lg/cil;->g:I

    return v0
.end method

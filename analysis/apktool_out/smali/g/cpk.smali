.class public abstract Lg/cpk;
.super Lg/ggd;
.source "SourceFile"

# interfaces
.implements Lg/dic;


# static fields
.field public static final v:Lg/fic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/fic;

    sget-object v1, Lg/bmr;->j:Lg/bmr;

    sget-object v2, Lg/vi;->c:Lg/vi;

    invoke-direct {v0, v1, v2}, Lg/fic;-><init>(Lg/efi;Lg/and;)V

    sput-object v0, Lg/cpk;->v:Lg/fic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lg/bmr;->j:Lg/bmr;

    invoke-direct {p0, v0}, Lg/ggd;-><init>(Lg/efi;)V

    return-void
.end method


# virtual methods
.method public final _w(Lg/efi;)Lg/boj;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lg/fic;

    if-eqz v0, :cond_2

    check-cast p1, Lg/fic;

    iget-object v0, p0, Lg/ggd;->x:Lg/efi;

    if-eq v0, p1, :cond_1

    iget-object v1, p1, Lg/fic;->b:Lg/efi;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lg/fic;->a:Lg/axr;

    invoke-interface {p1, p0}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/erz;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    sget-object v0, Lg/bmr;->j:Lg/bmr;

    if-ne v0, p1, :cond_3

    :goto_1
    sget-object p1, Lg/cgq;->a:Lg/cgq;

    return-object p1

    :cond_3
    return-object p0
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lg/fic;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lg/fic;

    iget-object v0, p0, Lg/ggd;->x:Lg/efi;

    if-eq v0, p1, :cond_1

    iget-object v2, p1, Lg/fic;->b:Lg/efi;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object p1, p1, Lg/fic;->a:Lg/axr;

    invoke-interface {p1, p0}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/erz;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    sget-object v0, Lg/bmr;->j:Lg/bmr;

    if-ne v0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public g(Lg/boj;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract i(Lg/boj;Ljava/lang/Runnable;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lg/fso;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lg/boj;)Z
    .locals 0

    instance-of p1, p0, Lg/bln;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

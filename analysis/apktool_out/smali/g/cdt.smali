.class public final Lg/cdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cmn;


# instance fields
.field public final a:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/eqx;->q(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Lg/o;->u(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    check-cast p1, Lg/cmn;

    invoke-interface {p1}, Lg/cmn;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lg/o;->y(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Lg/eqx;->w(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Lg/eqx;->p(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Lg/eqx;->z(Landroid/os/LocaleList;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Lg/eqx;->k(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cdt;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Lg/eqx;->u(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

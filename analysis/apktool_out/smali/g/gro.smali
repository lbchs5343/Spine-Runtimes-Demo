.class public final Lg/gro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bmm;


# instance fields
.field public final synthetic a:Lg/atf;


# direct methods
.method public constructor <init>(Lg/atf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gro;->a:Lg/atf;

    return-void
.end method


# virtual methods
.method public final ad(Lg/czh;Lg/anx;)V
    .locals 3

    iget-object p1, p0, Lg/gro;->a:Lg/atf;

    iget-object p1, p1, Lg/atf;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lg/atf;->b:J

    const-string v2, "config_last_success_update"

    invoke-static {p1, v2, v0, v1}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p1, p2, Lg/anx;->b:Ljava/lang/Object;

    check-cast p1, Lg/cbf;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/cbf;->getCode()I

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lg/cbf;->getData()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lg/fxe;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lg/atf;->c:Lg/fxe;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lg/fxe;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "cacu"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lg/atf;->c:Lg/fxe;

    if-eqz v0, :cond_3

    const-string v1, "cacuoc"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string v0, "cacunc"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lg/gro;->a:Lg/atf;

    iget-object v0, v0, Lg/atf;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_4
    sput-object p2, Lg/atf;->c:Lg/fxe;

    iget-object p1, p0, Lg/gro;->a:Lg/atf;

    iget-object p1, p1, Lg/atf;->e:Landroid/content/Context;

    const-string v0, "config"

    invoke-static {p2}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lg/gro;->a:Lg/atf;

    iget-object p1, p1, Lg/atf;->e:Landroid/content/Context;

    const-string v0, "config_request_interval"

    iget-wide v1, p2, Lg/fxe;->requestInterval:J

    invoke-static {p1, v0, v1, v2}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p1, p0, Lg/gro;->a:Lg/atf;

    iget-object p1, p1, Lg/atf;->e:Landroid/content/Context;

    iget-object p2, p2, Lg/fxe;->net:Lg/fxe$d;

    if-nez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    iget-boolean p2, p2, Lg/fxe$d;->isCodeKKHttps:Z

    :goto_0
    const-string v0, "config_https"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lg/cbf;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lg/gro;->a:Lg/atf;

    iget-object p1, p1, Lg/atf;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "g c fail, exception is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lg/gm;->a:Ljava/lang/reflect/Field;

    invoke-static {}, Lg/byh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

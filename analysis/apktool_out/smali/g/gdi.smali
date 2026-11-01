.class public final Lg/gdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/deg;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lg/ert;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lg/ert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gdi;->a:Landroid/app/Activity;

    iput-object p2, p0, Lg/gdi;->b:Lg/ert;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 p2, 0x0

    sput-boolean p2, Lg/cro;->p:Z

    iget-object p2, p0, Lg/gdi;->a:Landroid/app/Activity;

    iget-object v0, p0, Lg/gdi;->b:Lg/ert;

    invoke-static {p2, v0, p1}, Lg/cro;->u(Landroid/app/Activity;Lg/ert;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroid/os/Bundle;

    const/4 v0, 0x0

    sput-boolean v0, Lg/cro;->p:Z

    iget-object v1, p0, Lg/gdi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lg/gdi;->b:Lg/ert;

    if-eqz p1, :cond_2

    const-string v3, "success"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "checked"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lg/ert;->aa(Z)V

    iget-object v4, v2, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const p1, 0x7f1203db

    goto :goto_0

    :cond_1
    const p1, 0x7f1203da

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    aput-object v2, v3, p1

    const p1, 0x7f1203e0

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v1, v2, p1}, Lg/cro;->u(Landroid/app/Activity;Lg/ert;Ljava/lang/String;)V

    return-void
.end method

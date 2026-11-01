.class public abstract Lg/dov;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7

    if-eqz p3, :cond_3

    sget-object p3, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string p3, "webview_available_time"

    invoke-static {p0, p3, v2, v3}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, p3, v0, v1}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/webkit/WebView;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catch_1
    nop

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_2
    nop

    goto :goto_1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_0
    throw p0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    const/16 p3, 0x11

    invoke-static {p3}, Lg/dyd;->bq(I)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string p3, "accessibility"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    new-instance p3, Landroid/content/Intent;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const-class p1, La/a/a;

    :goto_3
    invoke-direct {p3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_5

    const/high16 p1, 0x10000000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "url"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "check webview start fail manually"

    invoke-static {p2, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p0, p2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v1

    const v4, 0x7f120568

    invoke-virtual {v1, v4}, Lg/gmn;->p(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    aput-object v4, v3, v0

    const v4, 0x7f120565

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    iput-object v3, v4, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v3, Lg/bcf;

    invoke-direct {v3, p0, p1, p2, v0}, Lg/bcf;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    const v0, 0x7f12056a

    invoke-virtual {v1, v0, v3}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/bcf;

    invoke-direct {v0, p0, p1, p2, v6}, Lg/bcf;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    const p1, 0x7f120566

    invoke-virtual {v1, p1, v0}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/frl;

    invoke-direct {p1, p0, v6, v2}, Lg/frl;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    const p2, 0x7f120569

    invoke-virtual {v1, p2, p1}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    invoke-static {p0, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "title"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "subTitle"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "shareAttachmentText"

    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "name"

    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-static/range {p1 .. p5}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/4 v8, 0x0

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "check webview start fail manually"

    invoke-static {v2, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p0, v2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v9

    const v0, 0x7f120568

    invoke-virtual {v9, v0}, Lg/gmn;->p(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v8

    aput-object v0, v2, v3

    const v0, 0x7f120565

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v9, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/die;

    iput-object v0, v2, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v0, Lg/frl;

    invoke-direct {v0, p0, v3, p1}, Lg/frl;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    const v3, 0x7f120569

    invoke-virtual {v9, v3, v0}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/xg;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lg/xg;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f120566

    invoke-virtual {v9, v1, v0}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/xg;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lg/xg;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f12056a

    invoke-virtual {v9, v2, v0}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9}, Lg/gmn;->r()Lg/fpl;

    move-result-object v0

    invoke-static {p0, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    :cond_2
    :goto_0
    return v8
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-class v1, La/a/aa;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "fp"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "nsp"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "url"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "title"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "subTitle"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "shareAttachmentText"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

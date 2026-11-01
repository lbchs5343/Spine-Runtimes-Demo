.class public final Lg/fut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 4

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->m()Lg/fxe$e;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lg/fxe$e;->isShowWeChat:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "icon"

    const v3, 0x7f0f0001

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    iget-object v3, p2, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    iget-object v3, p2, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wechat_id"

    iget-object v3, p2, Lg/fxe$e;->weChatId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "image_url"

    iget-object p2, p2, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "image"

    const v2, 0x7f08024e

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lg/gvp;

    invoke-direct {p2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, p2, v1, v0}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

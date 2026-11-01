.class public final Lg/dhi;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ank;


# instance fields
.field public a:Lg/giy;

.field public b:Lg/cyx;

.field public c:Lg/fzc;

.field public d:Lg/dlv;


# virtual methods
.method public final dq(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lg/dhi;->d:Lg/dlv;

    iget-object v1, p0, Lg/dhi;->c:Lg/fzc;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, v1, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onAnimation"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v0}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    const-string v1, "animatorSet"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lg/sh;->h(Lg/dlv;Lorg/json/JSONObject;)Lg/sh;

    move-result-object p1

    new-instance v1, Lg/gjp;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lg/gjp;-><init>(Landroid/view/View;Lg/sh;)V

    invoke-virtual {v1}, Lg/gjp;->h()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg/dhi;->b:Lg/cyx;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1, v0, v0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lg/dhi;->a:Lg/giy;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

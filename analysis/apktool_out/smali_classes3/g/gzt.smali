.class public final Lg/gzt;
.super Lg/egh;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gzt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bj(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fbd;Lg/fbd;)Lg/cqh;
    .locals 7

    iget v0, p0, Lg/gzt;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lg/egh;->bj(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fbd;Lg/fbd;)Lg/cqh;

    move-result-object p1

    return-object p1

    :pswitch_0
    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    check-cast p4, Lg/cud;

    new-instance v0, Lg/fzr;

    const/16 v3, 0x12c

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lg/eit;-><init>(Landroid/content/Context;Landroid/os/Looper;ILg/daw;Lg/fwr;Lg/dko;)V

    return-object v0

    :pswitch_1
    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v4, p4

    check-cast v4, Lg/gja;

    new-instance v0, Lg/aka;

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lg/aka;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Lg/gja;Lg/fbd;Lg/fbd;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bk(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fwr;Lg/dko;)Lg/cqh;
    .locals 7

    iget v0, p0, Lg/gzt;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lg/egh;->bk(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Ljava/lang/Object;Lg/fwr;Lg/dko;)Lg/cqh;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p4}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :pswitch_1
    check-cast p4, Lg/axa;

    new-instance v0, Lg/cdq;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p3, Lg/daw;->g:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p4, :cond_0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v4, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v1, 0x0

    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, p4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v4, p4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, p4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, p4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lg/cdq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Landroid/os/Bundle;Lg/fwr;Lg/dko;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/gny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dkg;


# static fields
.field public static final a:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.client.sessions.check_on_reset_and_enable2"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/gny;->a:Lg/duh;

    const-string v0, "measurement.client.sessions.check_on_startup"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.client.sessions.start_session_before_view_screen"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    return-void
.end method

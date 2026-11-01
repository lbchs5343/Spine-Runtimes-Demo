.class public final Lg/fqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/alb;


# static fields
.field public static final a:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-wide/16 v4, 0x0

    const-string v0, "measurement.id.lifecycle.app_in_background_parameter"

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    const-string v0, "measurement.lifecycle.app_backgrounded_tracking"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.lifecycle.app_in_background_parameter"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/fqx;->a:Lg/duh;

    const-string v0, "measurement.id.lifecycle.app_backgrounded_tracking"

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    return-void
.end method

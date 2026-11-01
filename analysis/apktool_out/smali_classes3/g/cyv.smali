.class public final Lg/cyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/diz;


# static fields
.field public static final a:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.client.global_params"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.service.global_params_in_payload"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.service.clear_global_params_on_uninstall"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/cyv;->a:Lg/duh;

    const-string v0, "measurement.service.global_params"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.id.service.global_params"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    return-void
.end method

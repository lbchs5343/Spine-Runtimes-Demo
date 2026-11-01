.class public final Lg/dpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gxu;


# static fields
.field public static final a:Lg/duh;

.field public static final b:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.collection.enable_session_stitching_token.client.dev"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/dpp;->a:Lg/duh;

    const-string v0, "measurement.collection.enable_session_stitching_token.service"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/dpp;->b:Lg/duh;

    return-void
.end method

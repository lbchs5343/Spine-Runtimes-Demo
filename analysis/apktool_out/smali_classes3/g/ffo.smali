.class public final Lg/ffo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/chv;


# static fields
.field public static final a:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.audience.dynamic_filters.oob_fix"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/ffo;->a:Lg/duh;

    return-void
.end method

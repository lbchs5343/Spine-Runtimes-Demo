.class public final Lg/aie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdr;


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

    const-string v0, "measurement.collection.event_safelist"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.service.store_null_safelist"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/aie;->a:Lg/duh;

    const-string v0, "measurement.service.store_safelist"

    invoke-virtual {v1, v0, v2}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/aie;->b:Lg/duh;

    return-void
.end method

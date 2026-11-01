.class public final Lg/gjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/buw;


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

    const-string v0, "measurement.client.consent_state_v1"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.client.3p_consent_state_v1"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.service.consent_state_v1_W36"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    const-string v0, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31b50

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/gjl;->a:Lg/duh;

    return-void
.end method

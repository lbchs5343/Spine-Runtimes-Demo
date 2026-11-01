.class public final Lg/boe;
.super Lg/bxx;
.source "SourceFile"


# static fields
.field public static final a:Lg/akj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/bmr;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    new-instance v1, Lg/gzt;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg/gzt;-><init>(I)V

    new-instance v2, Lg/akj;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lg/akj;-><init>(Ljava/lang/String;Lg/egh;Lg/bmr;)V

    sput-object v2, Lg/boe;->a:Lg/akj;

    return-void
.end method

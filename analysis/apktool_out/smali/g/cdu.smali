.class public final Lg/cdu;
.super Lg/ggd;
.source "SourceFile"


# static fields
.field public static final a:Lg/gpu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gpu;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lg/gpu;-><init>(I)V

    sput-object v0, Lg/cdu;->a:Lg/gpu;

    return-void
.end method

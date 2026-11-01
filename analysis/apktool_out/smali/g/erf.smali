.class public final Lg/erf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/akj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/erf;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/akj;

    invoke-direct {v0}, Lg/akj;-><init>()V

    iput-object v0, p0, Lg/erf;->a:Lg/akj;

    return-void
.end method

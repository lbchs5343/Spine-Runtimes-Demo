.class public abstract Lg/fot;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bxc;

.field public static final b:Lg/fpe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bxc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/bxc;-><init>(I)V

    sput-object v0, Lg/fot;->a:Lg/bxc;

    new-instance v0, Lg/fpe;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/fpe;-><init>(I)V

    sput-object v0, Lg/fot;->b:Lg/fpe;

    return-void
.end method

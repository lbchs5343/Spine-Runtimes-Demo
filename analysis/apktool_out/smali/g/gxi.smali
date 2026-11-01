.class public abstract Lg/gxi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lg/dlr;

.field public static final d:Lg/dtp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dlr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gxi;->c:Lg/dlr;

    sget-object v0, Lg/ni;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/ezh;

    invoke-direct {v0}, Lg/ezh;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lg/eqw;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_1
    sput-object v0, Lg/gxi;->d:Lg/dtp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

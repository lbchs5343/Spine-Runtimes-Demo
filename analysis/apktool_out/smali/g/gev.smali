.class public final Lg/gev;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bki;

.field public static final b:Lg/bki;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bki;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/bki;-><init>(I)V

    sput-object v0, Lg/gev;->a:Lg/bki;

    new-instance v0, Lg/bki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bki;-><init>(I)V

    sput-object v0, Lg/gev;->b:Lg/bki;

    return-void
.end method

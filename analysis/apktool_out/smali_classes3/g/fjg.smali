.class public final Lg/fjg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fjg;

.field public static final b:Lg/fjg;


# instance fields
.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/fjg;

    new-instance v1, Lg/pi;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/pi;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lg/fjg;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lg/fjg;->a:Lg/fjg;

    new-instance v0, Lg/fjg;

    new-instance v1, Lg/pi;

    const-string v2, "Failure.exception is unexpectedly null."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/pi;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lg/fjg;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lg/fjg;->b:Lg/fjg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/fjg;->c:Ljava/lang/Throwable;

    return-void
.end method

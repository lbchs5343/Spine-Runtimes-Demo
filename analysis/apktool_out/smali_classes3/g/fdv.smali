.class public final Lg/fdv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/fdv;

    new-instance v1, Lg/bxj;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/bxj;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lg/fdv;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lg/afp;->b:Z

    iput-object p1, p0, Lg/fdv;->a:Ljava/lang/Throwable;

    return-void
.end method

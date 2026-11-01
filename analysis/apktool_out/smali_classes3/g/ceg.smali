.class public final Lg/ceg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/ceg;


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/ceg;

    new-instance v1, Lg/bxj;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/bxj;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lg/ceg;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lg/ceg;->a:Lg/ceg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/ceg;->b:Ljava/lang/Throwable;

    return-void
.end method

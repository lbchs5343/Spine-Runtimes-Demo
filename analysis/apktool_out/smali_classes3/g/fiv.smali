.class public final Lg/fiv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fiv;

.field public static final b:Lg/fiv;


# instance fields
.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lg/afp;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lg/fiv;->b:Lg/fiv;

    sput-object v1, Lg/fiv;->a:Lg/fiv;

    return-void

    :cond_0
    new-instance v0, Lg/fiv;

    invoke-direct {v0, v1}, Lg/fiv;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lg/fiv;->b:Lg/fiv;

    new-instance v0, Lg/fiv;

    invoke-direct {v0, v1}, Lg/fiv;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lg/fiv;->a:Lg/fiv;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fiv;->c:Ljava/lang/Throwable;

    return-void
.end method

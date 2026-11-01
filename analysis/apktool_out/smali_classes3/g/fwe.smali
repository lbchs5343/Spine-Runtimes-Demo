.class public final Lg/fwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fwe;


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lg/fwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fwe;

    invoke-direct {v0}, Lg/fwe;-><init>()V

    sput-object v0, Lg/fwe;->a:Lg/fwe;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fwe;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lg/fwe;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fwe;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lg/fwe;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

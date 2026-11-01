.class public final Lg/hcy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/hcy;


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lg/hcy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/hcy;

    invoke-direct {v0}, Lg/hcy;-><init>()V

    sput-object v0, Lg/hcy;->a:Lg/hcy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/hcy;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lg/hcy;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hcy;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lg/hcy;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

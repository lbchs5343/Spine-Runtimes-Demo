.class public final Lg/dcl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dcl;


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lg/dcl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dcl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/dcl;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lg/dcl;->a:Lg/dcl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dcl;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lg/dcl;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

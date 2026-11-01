.class public final Lg/fxt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fxt;


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lg/fxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fxt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/fxt;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lg/fxt;->a:Lg/fxt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fxt;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lg/fxt;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

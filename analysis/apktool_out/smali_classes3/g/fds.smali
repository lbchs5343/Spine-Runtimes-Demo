.class public final Lg/fds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fds;


# instance fields
.field public volatile b:Ljava/lang/Thread;

.field public volatile c:Lg/fds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fds;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fds;->a:Lg/fds;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/afp;->d:Lg/cux;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lg/cux;->j(Lg/fds;Ljava/lang/Thread;)V

    return-void
.end method

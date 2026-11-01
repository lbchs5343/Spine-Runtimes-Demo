.class public final Lg/cye;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cye;


# instance fields
.field public volatile b:Ljava/lang/Thread;

.field public volatile c:Lg/cye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cye;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/cye;->a:Lg/cye;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lg/ail;->a:Lg/cro;

    invoke-virtual {v1, p0, v0}, Lg/cro;->j(Lg/cye;Ljava/lang/Thread;)V

    return-void
.end method

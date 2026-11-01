.class public final Lg/fiy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lg/dms;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/fiy;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lg/fiy;->b:Ljava/lang/Runnable;

    return-void
.end method

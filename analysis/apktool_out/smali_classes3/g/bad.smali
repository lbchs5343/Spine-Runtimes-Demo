.class public final Lg/bad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lg/dym;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/bad;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/gpu;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lg/gpu;-><init>(I)V

    iput-object p1, p0, Lg/bad;->b:Lg/dym;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/fgo;

    invoke-direct {p1}, Lg/fgo;-><init>()V

    iput-object p1, p0, Lg/bad;->b:Lg/dym;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance p1, Lg/cix;

    invoke-direct {p1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

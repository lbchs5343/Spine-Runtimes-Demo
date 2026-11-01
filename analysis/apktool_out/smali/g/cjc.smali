.class public final Lg/cjc;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final callbackName:Lg/geu;

.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lg/geu;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "callbackName"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lg/cjc;->callbackName:Lg/geu;

    iput-object p2, p0, Lg/cjc;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lg/geu;
    .locals 1

    iget-object v0, p0, Lg/cjc;->callbackName:Lg/geu;

    return-object v0
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lg/cjc;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
